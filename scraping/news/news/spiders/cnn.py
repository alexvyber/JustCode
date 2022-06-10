import scrapy

from scrapy.linkextractors import LinkExractor
from news_scraper.items import NewsArticle


class CnnSpider(scrapy.Spider):
    name = 'cnn'
    allowed_domains = ['cnn.py']
    start_urls = ['http://cnn.py/']

    def parse(self, response):
        pass
