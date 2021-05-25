//package com.inhatc.service;
//
//import org.openqa.selenium.By;
//import org.openqa.selenium.By.ByXPath;
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.WebElement;
//import org.openqa.selenium.chrome.ChromeDriver;
////�겕濡ㅻ쭅 ���젅�땲���쑝濡� �뀒�뒪�듃
//public class SeleniumTest {
//    public static void main(String[] args) {
//        SeleniumTest selTest = new SeleniumTest();
//        selTest.crawl();
//    }
//
//    //WebDriver
//    private WebDriver driver;
//    private WebElement element;
//    
//    //Properties
//    public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
//    public static final String WEB_DRIVER_PATH = "..\\startup\\chromedriver.exe";
//
//    //�겕濡ㅻ쭅 �븷 URL
//    private String base_url;
//
//    public SeleniumTest() {
//        super();
// 
//        //System Property SetUp
//        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
//
//        //Driver SetUp
//        driver = new ChromeDriver();
//        base_url = "http://search.danawa.com/dsearch.php?k1=rtx3070";
//    }
// 
//	public String crawl() {
//		try {
//			// get page (= 釉뚮씪�슦���뿉�꽌 url�쓣 二쇱냼李쎌뿉 �꽔�� �썑 request �븳 寃껉낵 媛숇떎)
//			driver.get(base_url);
//			element = driver.findElement(By.xpath(
//					"/html/body/div[2]/div[3]/div[3]/div[2]/div[9]/div[2]/div[2]/div[4]/ul/li[1]/div/div[3]/ul/li/p[2]/a"));
//			System.out.println(element.getText());
//			// System.out.println(driver.getPageSource());
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			driver.close();
//        }
//		return element.getText();
//    }
//}