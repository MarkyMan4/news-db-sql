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
	art.date_published > '2015-01-01' -- some articles don't have a date and default to 1970, so ignore these
group by 
	topic.topic_name, 
	substr(cast(art.date_published as varchar), 1, 10)
	having count(*) < 40 -- some days I loaded a bunch of articles at once, ignore these since they are outliers
order by
	substr(cast(art.date_published as varchar), 1, 10),
	topic.topic_name;
