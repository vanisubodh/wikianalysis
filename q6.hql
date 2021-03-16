

CREATE table pageviews_feb_zero (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';


LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210205-000000' INTO TABLE pageviews_feb_zero;


SELECT domain_code, page_title, count_views FROM pageviews_feb_zero where page_title = 'Xingtian';
