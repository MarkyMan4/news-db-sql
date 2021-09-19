/* 
 * Get article counts by topic and by day
 * TODO: date published is a timestamp, I need to group by date, not by a date time.
 */
select 
	topic.topic_name,
	art.date_published,
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
	art.date_published
order by 
	article_count desc,
	art.date_published, 
	topic.topic_name;
