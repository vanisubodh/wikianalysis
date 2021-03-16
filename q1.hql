create database project_one;

USE project_one;


CREATE table pageviews_zero (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';

describe pageviews_zero;

DROP table pageviews_zero;

LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-000000' INTO TABLE pageviews_zero;


SELECT * FROM pageviews_zero where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');

CREATE table pageviews_total (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';

DROP table pageviews_total;

INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_zero where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');

SELECT * FROM pageviews_total;


CREATE table pageviews_one (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_two (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_three (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_four (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_five (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_six (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_seven (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_eight (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_nine (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_ten (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_eleven (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_twelve (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_thirteen (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_fourteen (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_fifteen (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_sixteen (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_seventeen (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_eighteen (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_nineteen (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_twenty (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_twentyone (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_twentytwo (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';
CREATE table pageviews_twentythree (domain_code String, page_title String, count_views Int, total_response_size Int)
row format delimited
fields terminated by ' ';


LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-010000' INTO TABLE pageviews_one;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-020000' INTO TABLE pageviews_two;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-030000' INTO TABLE pageviews_three;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-040000' INTO TABLE pageviews_four;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-050000' INTO TABLE pageviews_five;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-060000' INTO TABLE pageviews_six;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-070000' INTO TABLE pageviews_seven;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-080000' INTO TABLE pageviews_eight;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-090000' INTO TABLE pageviews_nine;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-100000' INTO TABLE pageviews_ten;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-110000' INTO TABLE pageviews_eleven;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-120000' INTO TABLE pageviews_twelve;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-130000' INTO TABLE pageviews_thirteen;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-140000' INTO TABLE pageviews_fourteen;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-150000' INTO TABLE pageviews_fifteen;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-160000' INTO TABLE pageviews_sixteen;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-170000' INTO TABLE pageviews_seventeen;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-180000' INTO TABLE pageviews_eighteen;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-190000' INTO TABLE pageviews_nineteen;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-200000' INTO TABLE pageviews_twenty;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-210000' INTO TABLE pageviews_twentyone;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-220000' INTO TABLE pageviews_twentytwo;
LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/pageviews-20210120-230000' INTO TABLE pageviews_twentythree;

INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_one where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_two where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_three where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_four where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_five where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_six where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_seven where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_eight where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_nine where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_ten where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_eleven where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_twelve where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_thirteen where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_fourteen where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_fifteen where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_sixteen where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_seventeen where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_eighteen where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_nineteen where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_twenty where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_twentyone where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_twentytwo where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');
INSERT INTO TABLE pageviews_total
SELECT domain_code, page_title, count_views, total_response_size FROM pageviews_twentythree where count_views > 5000 and domain_code in ('en', 'en.m') and page_title NOT in ('Main_Page', 'Special:Search', '-');




SELECT page_title, SUM(count_views) as total_views FROM pageviews_total group by page_title order by total_views DESC limit 10;

















