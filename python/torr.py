
from selenium import webdriver
import time
from selenium.webdriver.common.by import By

# Hard-coded url
url = ""

driver = webdriver.Chrome()

# Range is used to generate urls for pages
for n in range(2, 8):
    req_url=url+ str(n-1)

    driver.get(req_url)
    time.sleep(20)

    links = driver.find_elements(By.XPATH, '//a[@role="button"]')
    # Remove first link, because it's irrelevant
    del links[0]
    for link in links:
        time.sleep(3)
        link.click()
