package com.kjl.fp.product.bread;

import java.security.Principal;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kjl.fp.cart.CartVO;
import com.kjl.fp.member.MemberVO;


import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;

@Controller
@RequestMapping("/product/**")
public class BreadController {
	
	@Autowired
	private BreadService breadService; 
	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(BreadController.class);

	@GetMapping("bread")
	public ModelAndView selectAll (ModelAndView mv) throws Exception {
		List<BreadVO> ar = breadService.selectAll();
		List<StarBreadVO> br = breadService.starbread();
		mv.setViewName("product/bread");
		mv.addObject("bread", ar);
		mv.addObject("star", br);
		return mv;
	}
	
	//위에 있는 상품
	@PostMapping("starbread")
	public String starbread (Model model, StarBreadVO starBreadVO) throws Exception {
		model.addAttribute("starbread", starBreadVO);
		return "redirect:product/bread";
	}
	
	@PostMapping("breadInfo")
	public String selectAll (Model model, BreadVO breadVO) throws Exception {
		model.addAttribute("breadInfo", breadVO);
		return "redirect:product/bread";
	}
	
	@PostMapping("pdcarts")
	public @ResponseBody String pdcarts (Principal principal, @RequestBody String pram) throws Exception {
		String result = "0";
		int sqlresult = 0;
		CartVO cartVO = new CartVO();
		
		//MemberVO a = new MemberVO();
		
		//Collection<? extends GrantedAuthority> b = a.getAuthorities();
		
		//logger.debug("Auth:" + principal.getName());
		logger.info("AAAAAAAAAAAAAAAAAAAa");
		logger.info("JSON:" + pram) ;
		
		JSONParser parser = new JSONParser();
		Object object = parser.parse(pram);
		JSONObject jsonObject = (JSONObject) object;
		
		String pdName = (String) jsonObject.get("pdName");
		int pdNum = Integer.parseInt((String) jsonObject.get("pdNum"));
		int pdPrice = Integer.parseInt((String) jsonObject.get("pdPrice"));
		String username = principal.getName();
		
		if(principal != null) {
			username = principal.getName();
		}else {
			return "2";
		}

		cartVO.setPdNum(pdNum);
		cartVO.setPdName(pdName);
		cartVO.setPdPrice(pdPrice);
		cartVO.setUserName(username);
		
		//int seqNo = breadService.selectSeq(cartVO);
		
		sqlresult = breadService.pdcarts(cartVO);
		
		if (sqlresult !=0) {
			result = "1";
		} else {
			result = "0";
		}
		
		return result;
	}
	
	
	
	
}
