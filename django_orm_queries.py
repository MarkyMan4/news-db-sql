from news.models import Article, ArticleNlp

# get a specific news article and the nlp info from the child table
articles = Article.objects.filter(id=100).first()

nlp = articles.articlenlp_set.all() # this looks up records in ArticleNlp that match the article id


