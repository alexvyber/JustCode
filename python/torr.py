
from selenium import webdriver
import time
from selenium.webdriver.common.by import By

# Hard-coded url
url = "https://torrentgalaxy.mx/torrents.php?search=selenium#results"

driver = webdriver.Chrome()

def go_torr(url, is_multi_page):
    # Range is used to generate urls for pages
    if is_multi_page == True:
        for n in range(3, 4):
            req_url=url  + str(n)
            driver.get(req_url)
            time.sleep(5)
            links = driver.find_elements(By.XPATH, '//a[@role="button"]')
            # Remove first link, because it's irrelevant
            del links[0]
            for link in links:
                time.sleep(3)
                link.click()
    else:
        driver.get(url)
        time.sleep(6)
        links = driver.find_elements(By.XPATH, '//a[@role="button"]')
        # Remove first link, because it's irrelevant
        del links[0]
        for link in links:
            time.sleep(3)
            link.click()

# go_torr(url, False)
