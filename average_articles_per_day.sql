select sum(num_collected) / count(*) as avg_articles_per_day
from (
	select count(*) as num_collected, substring(cast(date_published as varchar), 1, 10)
	from news_article
	group by substring(cast(date_published as varchar), 1, 10)
	order by substring(cast(date_published as varchar), 1, 10) desc) as counts