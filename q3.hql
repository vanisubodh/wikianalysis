
SELECT * from fraction_table where prev = 'Hotel_California';


CREATE table first_from_hc_table as
SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'Hotel_California')
order by fraction DESC limit 10;

SELECT * from first_from_hc_table;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = '20th_Annual_Grammy_Awards')
order by fraction DESC limit 1;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'American_Horror_Story:_Hotel')
order by fraction DESC limit 1;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'The_Twilight_Zone_(1959_TV_series)')
order by fraction DESC limit 1;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'The_Royal_Scam')
order by fraction DESC limit 1;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'The_Sopranos')
order by fraction DESC limit 1;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'Jethro_Tull_(band)')
order by fraction DESC limit 1;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'Steely_Dan')
order by fraction DESC limit 1;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'Cameron_Crowe')
order by fraction DESC limit 1;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'Liquor')
order by fraction DESC limit 1;

SELECT * FROM fraction_table
where prev in
(SELECT curr
FROM clickstream
where types = 'link' AND prev = 'Anton_LaVey')
order by fraction DESC limit 1;











