package com.inhatc.function;

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
    public static final String WEB_DRIVER_PATH = "..\\startup\\chromedriver.exe";
    
    private String base_url;

	public String price_crwaling(String search) {
		//System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        String price = "null";
        //Driver SetUp
        driver = new ChromeDriver();
        base_url = "http://search.danawa.com/dsearch.php?k1="+ search +"";
        System.out.println(base_url);
        try {
			// get page (= 釉뚮씪�슦���뿉�꽌 url�쓣 二쇱냼李쎌뿉 �꽔�� �썑 request �븳 寃껉낵 媛숇떎)
			driver.get(base_url);
			element = driver.findElement(By.xpath(
					"/html/body/div[2]/div[3]/div[3]/div[2]/div[9]/div[2]/div[2]/div[4]/ul/li[1]/div/div[3]/ul/li/p[2]/a"));
			price = element.getText();
			// System.out.println(driver.getPageSource());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			driver.close();
        }
        System.out.println("실행"+price);
		return price;
	}
}
