package com.kjl.fp.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/**")
public class ReservationController {
	
	@GetMapping("ediya_reservation_main")
	public String goReserMain() throws Exception{
		
		return "board/ediya_reservation/ediya_reservation_main";
	}
	
}
