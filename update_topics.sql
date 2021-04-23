update news_topiclkp
set topic_name = 'Social' 
where topic_id = 0;

update news_topiclkp
set topic_name = 'Government' 
where topic_id = 1;

update news_topiclkp
set topic_name = 'Science/Tech' 
where topic_id = 2;

update news_topiclkp
set topic_name = 'Coronavirus' 
where topic_id = 3;

select * from news_topiclkp;