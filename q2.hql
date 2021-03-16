

USE project_one;


CREATE table clickstream (prev String, curr String, types String, num Int)
row format delimited
fields terminated by '\t';

LOAD DATA LOCAL INPATH 'clickstream-enwiki-2020-12.tsv' INTO TABLE clickstream;

create view total_link as
SELECT prev, SUM(num) as total_internal_click
FROM clickstream
where types = 'link'
group by prev;


CREATE table pageviews_dec_day_hour (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';

LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20201221-000000' INTO TABLE pageviews_dec_day_hour;

create view total_pageview as
SELECT page_title, SUM(count_views) as total_views
FROM pageviews_dec_day_hour
where domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-')
group by page_title;

CREATE table fraction_table as
SELECT total_link.prev, (total_link.total_internal_click/(total_pageview.total_views * 24 * 30)) as fraction
FROM total_link
inner join total_pageview
on total_link.prev = total_pageview.page_title;

SELECT prev, fraction from fraction_table order by fraction DESC limit 10;

SELECT * from total_link where prev = 'Elizabeth_Peratrovich';


SELECT * from total_pageview where page_title = 'Elizabeth_Peratrovich';


