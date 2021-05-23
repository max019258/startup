package com.inhatc.cs;

import java.util.Locale;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.inhatc.function.SeleniumCrawling;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping("error")
	public String error() {
		return "error";
	}
	@RequestMapping("blog-default")
	public String blog_default() {
		return "blog-default";
	}
	@RequestMapping("blog-single")
	public String blog_single() {
		return "blog-single";
	}

	@RequestMapping(value = "contact")
	public String contact() throws Exception{		 
		Document doc = Jsoup.connect("http://search.danawa.com/dsearch.php?k1=rtx3060").get();
		Elements hotdeal = doc.select("#productItem13463144 > div > div.prod_info > p");
		System.out.println(hotdeal.toString());
		Elements test = hotdeal.select("li");
		System.out.println(test.toString());
		
		for(Element e : test) {
			System.out.println(e.toString());
		}
		
		return "contact";
	}
	

	@RequestMapping(value = "contact2")
	public String contact2() throws Exception{		 
		Document doc = Jsoup.connect("http://search.danawa.com/dsearch.php?k1=rtx3060").get();
		Elements hotdeal = doc.select("#productItem13463144 > div > div.prod_info > p");
		System.out.println(hotdeal.toString());
		Elements test = hotdeal.select("li");
		System.out.println(test.toString());
		
		for(Element e : test) {
			System.out.println(e.toString());
		}
		
		return "contact2";
	}
	
	@RequestMapping("cpu_bench")
	public String cpu_bench() {
		return "cpu_bench";
	}
	@RequestMapping("gpu_bench")
	public String gpu_bench() {
		return "gpu_bench";
	}
	@RequestMapping("service-detail")
	public String service_detail() {
		return "service-detail";
	}
	@RequestMapping("parts-list")
	public String service_list() {
		return "parts-list";
	}
	@RequestMapping("testimonial")
	public String testimonial() {
		return "testimonial";
	}
	@RequestMapping("beside_ex")
	public String beside_ex() {
		return "beside_ex";
	}
	@RequestMapping("cpu_ex")
	public String cpu_ex() {
		return "cpu_ex";
	}
	@RequestMapping("gpu_ex")
	public String gpu_ex() {
		return "gpu_ex";
	}
	@RequestMapping("power_ex")
	public String power_ex() {
		return "power_ex";
	}
	@RequestMapping("ram_ex")
	public String ram_ex() {
		return "ram_ex";
	}
	@RequestMapping("sub_ex")
	public String sub_ex() {
		return "sub_ex";
	}
	@RequestMapping("mainboard_ex")
	public String mainboard_ex() {
		return "mainboard_ex";
	}
	@RequestMapping(value = "product_page", method = RequestMethod.GET)
	public String product_page(Model model, @RequestParam("searchinfo") String searchinfo) throws Exception {
		SeleniumCrawling seleniumCrawling = new SeleniumCrawling();
		System.out.println("searchinfo text : "+ searchinfo);
		System.out.println("크롤링 테스트 입니다 : " + seleniumCrawling.price_crwaling("rtx3060"));
		model.addAttribute("searchinfo", searchinfo);
		return "product_page";
	}
}
