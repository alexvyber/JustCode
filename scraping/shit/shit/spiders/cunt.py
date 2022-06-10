import scrapy


class CuntSpider(scrapy.Spider):
    name = 'cunt'
    allowed_domains = ['pythonscrapy.com']
    start_urls = ['https://pythonscraping.com/linkedin/ietf.html']

    def parse(self, response):
        # title = response.css('span.title::first').get()
        secondTitle = response.xpath('//span[@class="title"]/text()').get() 
        return{"title": secondTitle}
        pass
