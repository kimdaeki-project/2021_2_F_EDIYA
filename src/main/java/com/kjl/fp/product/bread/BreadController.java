package com.kjl.fp.product.bread;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product/**")
public class BreadController {
	
	@Autowired
	private BreadService breadService; 

	@GetMapping("bread")
	public ModelAndView selectAll (ModelAndView mv) throws Exception {
		List<BreadVO> ar = breadService.selectAll();
		mv.setViewName("product/bread");
		mv.addObject("bread", ar);
		return mv;
	}
	
	@PostMapping("breadInfo")
	public String selectAll (Model model, BreadVO breadVO) throws Exception {
		model.addAttribute("breadInfo", breadVO);
		return "redirect:product/bread";
	}
	
}
