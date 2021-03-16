
CREATE table pageviews_dec_am_hour (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';

LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20201221-120000' INTO TABLE pageviews_dec_am_hour;

create table total_am_pageview as
SELECT page_title, SUM(count_views) as total_views
FROM pageviews_dec_am_hour
where domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-')
group by page_title;

SELECT total_am_pageview.page_title as page_title, (total_pageview.total_views / total_am_pageview.total_views) as us_to_rest_ratio
FROM total_am_pageview
inner join total_pageview on total_am_pageview.page_title = total_pageview.page_title
ORDER by us_to_rest_ratio DESC limit 10;



