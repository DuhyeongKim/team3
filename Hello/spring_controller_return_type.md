package com.camp.study;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/halo", method = RequestMethod.GET)
	public ModelAndView halo() {
		ModelAndView view = new ModelAndView(); // View는 hello.jsp
		view.setViewName("halo"); // [hello.jsp]${name} = Lim 
		view.addObject("name", "Lim"); 
		return view; 
		}
	@RequestMapping(value = "/halo2", method = RequestMethod.GET)
	public void halo2() {
		}
	@RequestMapping(value = "/halo3", method = RequestMethod.GET)
	@ResponseBody
	public String halo3() {
		return "<html><body><h2>This is ResponseBody MAN!!</h2></body></html>";
		}

	
}




![image](https://user-images.githubusercontent.com/49421181/72578324-11927d00-3919-11ea-8f62-8e780d626603.png)

![image](https://user-images.githubusercontent.com/49421181/72578330-1bb47b80-3919-11ea-8540-b393683772a4.png)

![image](https://user-images.githubusercontent.com/49421181/72578345-266f1080-3919-11ea-870f-6e813de62a9f.png)

