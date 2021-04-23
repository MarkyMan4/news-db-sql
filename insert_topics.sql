insert into news_topiclkp (topic_id, topic_name)
values
	(0, 'Coronavirus'),
	(1, 'Social'),
	(2, 'Government/Politics'),
	(3, 'Science/Tech');

select * from news_topiclkp;

-- delete from news_topiclkp
-- ALTER SEQUENCE news_topiclkp_id_seq RESTART WITH 1