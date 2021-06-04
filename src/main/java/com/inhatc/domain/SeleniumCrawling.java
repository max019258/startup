package com.inhatc.domain;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumCrawling {
	
	//WebDriver
    private WebDriver driver;
    private WebElement element;
    
    //Properties
    public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
    public static final String WEB_DRIVER_PATH = "C:\\Users\\max1031\\Desktop\\sps\\startup\\chromedriver.exe";
    
    private String base_url;

	public String price_crwaling(String search) {
		
		//System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        String price = "null";
		/*
		 * String options = webdriver.ChromeOptions(); options.add_argument('headless');
		 * driver = webdriver.Chrome('chromedriver', chrome_options=options);
		 */
        //Driver SetUp
        driver = new ChromeDriver();
        base_url = "https://www.coupang.com/np/search?component=&q=" + search +"";
       // base_url = "http://search.danawa.com/dsearch.php?k1="+ search +"";
        System.out.println(base_url);
        try {
			// get page (= 釉뚮씪�슦���뿉�꽌 url�쓣 二쇱냼李쎌뿉 �꽔�� �썑 request �븳 寃껉낵 媛숇떎)
			driver.get(base_url);
			element = driver.findElement(By.xpath(
					// /html/body/div[2]/div[3]/div[3]/div[2]/div[8]/div[2]/div[2]/div[3]/ul/li[3]/div/div[3]/ul/li/p[2]/a
					"/html/body/div[2]/section/form/div[2]/div[2]/ul/li[2]/a/dl/dd/div/div[3]/div/div[1]/em"));
			if(element.getText() == "" || element.getText() == "단종" || element.getText() == null) {
				price = null;
			}else {
				price = element.getText();
			}
			// System.out.println(driver.getPageSource());
		} catch (Exception e) {
			price = null;
		} finally {
			driver.close();
        }
        System.out.println("실행----"+price);
		return price;
	}
}
