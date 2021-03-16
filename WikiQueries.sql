create table clickstreamPrevCountSum ( prev string, totalCount int);
insert into clickstreamPrevCountSum (select prev, sum(count) as c from clickstream where type='link'  group by prev order by c desc limit 100);

create table pageviewPageCountSum ( page string, totalCount int);
insert into pageviewPageCountSum  (select page, sum(viewCount) as c from pageview2 group by page order by c desc limit 100);

select p.page, p.totalCount , c.totalCount, c.totalCount/p.totalCount * 100  from pageviewPageCountSum  p inner join clickstreamPrevCountSum c on p.page=c.prev
