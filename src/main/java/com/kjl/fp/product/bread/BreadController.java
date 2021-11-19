package com.kjl.fp.product.bread;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product/**")
public class BreadController {
	
	@Autowired
	private BreadService breadService; 

	@GetMapping("bread")
	public ModelAndView breadSelectAll (BreadVO breadVO, ModelAndView mv) throws Exception {
		List<BreadVO> ar = breadService.breadSelectAll(breadVO);
		mv.setViewName("product/bread");
		mv.addObject("bread", ar);
		return mv;
	}
	
}
