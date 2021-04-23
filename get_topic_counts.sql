select topic_name, count(*)
from news_articlenlp nlp inner join news_topiclkp lkp
		on nlp.topic = lkp.topic_id
group by topic_name