import scrapy

from scrapy.spiders import CrawlSpider, Rule
from scrapy.linkextractors import LinkExtractor

class CuntSpider(scrapy.Spider):
    name = 'cunt'
    allowed_domains = ['en.wikipedia.org']
    start_urls = ['http://en.wikipedia.org/wiki/Kevin_Bacon']

    rules = [Rule(LinkExtractor(allow=r'wiki/((!?:).)*$'), callback='parse', follow=True)]

    def parse(self, response):
        return {
                'titel': response.xpath('//h1/text()').get() or response.xpath('//h1/i/text()').get(),
                'url': response.url,
                # 'last_edited': response.xpath('//li[@="footer-info-lastmod"]/text()').get()
                }
