package com.kjl.fp.product.drink;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product/**")
public class DrinkController {
	
	@GetMapping("drink")
	public String drink () throws Exception {
		return "product/drink";
	}
	
}
