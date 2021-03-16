
CREATE TABLE revision_wiki (
	wiki_db STRING,
	event_entity STRING,
	event_type STRING,
	event_timestamp STRING,
	event_comment STRING,
	event_user_id INT,
	event_user_text_historical STRING,
	event_user_text STRING,
	event_user_blocks_historical STRING,
	event_user_blocks STRING,
	event_user_groups_historical STRING,
	event_user_groups STRING,
	event_user_is_bot_by_historical STRING,
	event_user_is_bot_by STRING,
	event_user_is_created_by_self BOOLEAN,
	event_user_is_created_by_system BOOLEAN,
	event_user_is_created_by_peer BOOLEAN,
	event_user_is_anonymous BOOLEAN, 
	event_user_registration_timestamp STRING,
	event_user_creation_timestamp STRING,
	event_user_first_edit_timestamp STRING,
	event_user_revision_count INT,
	event_user_seconds_since_previous_revision INT,
	page_id INT,
	page_title_historical  STRING,
	page_title  STRING,
	page_namespace_historical INT,
	page_namespace_is_content_historical BOOLEAN,
	page_namespace INT,
	page_namespace_is_content BOOLEAN,
	page_is_redirect BOOLEAN,
	page_is_deleted BOOLEAN,
	page_creation_timestamp STRING,
	page_first_edit_timestamp STRING,
	page_revision_count INT,
	page_seconds_since_previous_revision INT,
	user_id INT,
	user_text_historical string,	
	user_text	string,
	user_blocks_historical string,
	user_blocks	string,	
	user_groups_historical	string,	
	user_groups	string,
	user_is_bot_by_historical string,	
	user_is_bot_by	string,	
	user_is_created_by_self boolean,	
	user_is_created_by_system boolean,
	user_is_created_by_peer boolean,
	user_is_anonymous boolean,
	user_registration_timestamp	string,
	user_creation_timestamp	string,
	user_first_edit_timestamp	string,
	revision_id INT,
	revision_parent_id INT, 
	revision_minor_edit boolean, 
	revision_deleted_parts	string,
	revision_deleted_parts_are_suppressed boolean,
	revision_text_bytes INT, 
	revision_text_bytes_diff INT, 
	revision_text_sha1	string,
	revision_content_model	string, 
	revision_content_format	string, 
	revision_is_deleted_by_page_deletion boolean,	
	revision_deleted_by_page_deletion_timestamp	string, 
	revision_is_identity_reverted boolean,
	revision_first_identity_reverting_revision_id INT,
	revision_seconds_to_identity_revert INT,
	revision_is_identity_revert boolean,
	revision_is_from_before_page_creation boolean,
	revision_tags	string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t';


LOAD DATA LOCAL INPATH 'Desktop/page\ view\ data/unzip/2021-01.enwiki.2021-01.tsv' INTO TABLE revision_wiki;


CREATE table vandalism as
SELECT page_title, revision_seconds_to_identity_revert
FROM revision_wiki
WHERE event_entity = 'revision' and event_comment LIKE '%vandalism%' and event_timestamp BETWEEN '2021-01-20 00:00:00' AND '2021-01-20 01:00:00';


SELECT (SUM(revision_seconds_to_identity_revert) / (COUNT(page_title) * 60 * 60)) as avg_hr_per_page
FROM vandalism where revision_seconds_to_identity_revert IS NOT NULL;

CREATE table avg_page_views as
SELECT pageviews_twentythree.page_title, SUM(pageviews_twentythree.count_views) as count_views
FROM pageviews_twentythree
inner join vandalism on vandalism.page_title = pageviews_twentythree.page_title
WHERE vandalism.revision_seconds_to_identity_revert IS NOT NULL
GROUP BY pageviews_twentythree.page_title;

SELECT ((SUM(count_views) / COUNT(page_title)) * 9.6) as avg_user_see FROM avg_page_views;



