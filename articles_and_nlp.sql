select art.headline, nlp.sentiment, nlp.subjectivity, topic.topic_name
from news_article art inner join news_articlenlp nlp
		on art.id = nlp.article_id
	inner join news_topiclkp topic
		on nlp.topic = topic.topic_id