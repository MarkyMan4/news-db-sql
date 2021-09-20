/* 
 * Get article counts by topic and by day
 */
select 
	1 as id,
	topic.topic_name,
	substr(cast(art.date_published as varchar), 1, 10) as date,
	count(*) as article_count
from 
	news_article art
	inner join news_articlenlp nlp
		on art.id = nlp .article_id
	inner join news_topiclkp topic
		on nlp.topic = topic.topic_id
where
	art.date_published > '2015-01-01'
group by 
	topic.topic_name, 
	substr(cast(art.date_published as varchar), 1, 10)
order by
	substr(cast(art.date_published as varchar), 1, 10),
	topic.topic_name;
