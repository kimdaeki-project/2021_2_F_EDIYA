package com.kjl.fp;

import static org.junit.jupiter.api.Assertions.assertNotEquals;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.kjl.fp.product.bread.BreadMapper;
import com.kjl.fp.product.bread.BreadVO;

@SpringBootTest
public class BreadTest {
	
	@Autowired
	private BreadMapper breadMapper;

	@Test
	void selectAllTest () throws Exception {
		List<BreadVO> ar = breadMapper.selectAll();
		assertNotEquals(0, ar.size());
	}
}
