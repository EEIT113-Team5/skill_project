package search.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import search.model.KeywordBean;
import search.model.SearchBean;
import search.service.SortService;

@Controller
public class KeywordController2 {
	@Autowired
	SortService stService;

	@Autowired
	KeywordBean kBean;
	
	@GetMapping(value="/QuerySort1.do", produces = {"application/json"})
	public ResponseEntity<List<Object>> QuerySort1(Model M, @RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "area1", required = false) String area1,
			@RequestParam(value = "area2", required = false) String area2,
			@RequestParam(value = "area3", required = false) String area3,
			@RequestParam(value = "city1", required = false) String city1,
			@RequestParam(value = "city2", required = false) String city2,
			@RequestParam(value = "city3", required = false) String city3,
			@RequestParam(value = "city4", required = false) String city4,
			@RequestParam(value = "city5", required = false) String city5,
			@RequestParam(value = "type1", required = false) String type1,
			@RequestParam(value = "type2", required = false) String type2,
			@RequestParam(value = "type3", required = false) String type3,
			@RequestParam(value = "type4", required = false) String type4,
			@RequestParam(value = "skill1", required = false) String skill1,
			@RequestParam(value = "skill2", required = false) String skill2,
			@RequestParam(value = "skill3", required = false) String skill3,
			@RequestParam(value = "skill4", required = false) String skill4,
			@RequestParam(value = "skill5", required = false) String skill5){
		
		List<SearchBean> list1 = (List<SearchBean>) stService.querySort1(keyword, area1, area2, area3, city1, city2,
				city3, city4, city5, type1, type2, type3, type4, skill1, skill2, skill3, skill4, skill5);
		
		List<Object> list = new ArrayList<Object>();
		list.add(list1);
		
		ResponseEntity<List<Object>> re = new ResponseEntity<List<Object>>(list, HttpStatus.OK);
		return re;
	}
	
	@GetMapping(value="/QuerySort2.do", produces = {"application/json"})
	public ResponseEntity<List<Object>> QuerySort2(Model M, @RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "area1", required = false) String area1,
			@RequestParam(value = "area2", required = false) String area2,
			@RequestParam(value = "area3", required = false) String area3,
			@RequestParam(value = "city1", required = false) String city1,
			@RequestParam(value = "city2", required = false) String city2,
			@RequestParam(value = "city3", required = false) String city3,
			@RequestParam(value = "city4", required = false) String city4,
			@RequestParam(value = "city5", required = false) String city5,
			@RequestParam(value = "type1", required = false) String type1,
			@RequestParam(value = "type2", required = false) String type2,
			@RequestParam(value = "type3", required = false) String type3,
			@RequestParam(value = "type4", required = false) String type4,
			@RequestParam(value = "skill1", required = false) String skill1,
			@RequestParam(value = "skill2", required = false) String skill2,
			@RequestParam(value = "skill3", required = false) String skill3,
			@RequestParam(value = "skill4", required = false) String skill4,
			@RequestParam(value = "skill5", required = false) String skill5){
		
		List<SearchBean> list1 = (List<SearchBean>) stService.querySort2(keyword, area1, area2, area3, city1, city2,
				city3, city4, city5, type1, type2, type3, type4, skill1, skill2, skill3, skill4, skill5);
		
		List<Object> list = new ArrayList<Object>();
		list.add(list1);
		
		ResponseEntity<List<Object>> re = new ResponseEntity<List<Object>>(list, HttpStatus.OK);
		return re;
	}
	
	@GetMapping(value="/QuerySort3.do", produces = {"application/json"})
	public ResponseEntity<List<Object>> QuerySort3(Model M, @RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "area1", required = false) String area1,
			@RequestParam(value = "area2", required = false) String area2,
			@RequestParam(value = "area3", required = false) String area3,
			@RequestParam(value = "city1", required = false) String city1,
			@RequestParam(value = "city2", required = false) String city2,
			@RequestParam(value = "city3", required = false) String city3,
			@RequestParam(value = "city4", required = false) String city4,
			@RequestParam(value = "city5", required = false) String city5,
			@RequestParam(value = "type1", required = false) String type1,
			@RequestParam(value = "type2", required = false) String type2,
			@RequestParam(value = "type3", required = false) String type3,
			@RequestParam(value = "type4", required = false) String type4,
			@RequestParam(value = "skill1", required = false) String skill1,
			@RequestParam(value = "skill2", required = false) String skill2,
			@RequestParam(value = "skill3", required = false) String skill3,
			@RequestParam(value = "skill4", required = false) String skill4,
			@RequestParam(value = "skill5", required = false) String skill5){
		
		List<SearchBean> list1 = (List<SearchBean>) stService.querySort3(keyword, area1, area2, area3, city1, city2,
				city3, city4, city5, type1, type2, type3, type4, skill1, skill2, skill3, skill4, skill5);
		
		List<Object> list = new ArrayList<Object>();
		list.add(list1);
		
		ResponseEntity<List<Object>> re = new ResponseEntity<List<Object>>(list, HttpStatus.OK);
		return re;
	}
	
	@GetMapping(value="/QuerySort4.do", produces = {"application/json"})
	public ResponseEntity<List<Object>> QuerySort4(Model M, @RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "area1", required = false) String area1,
			@RequestParam(value = "area2", required = false) String area2,
			@RequestParam(value = "area3", required = false) String area3,
			@RequestParam(value = "city1", required = false) String city1,
			@RequestParam(value = "city2", required = false) String city2,
			@RequestParam(value = "city3", required = false) String city3,
			@RequestParam(value = "city4", required = false) String city4,
			@RequestParam(value = "city5", required = false) String city5,
			@RequestParam(value = "type1", required = false) String type1,
			@RequestParam(value = "type2", required = false) String type2,
			@RequestParam(value = "type3", required = false) String type3,
			@RequestParam(value = "type4", required = false) String type4,
			@RequestParam(value = "skill1", required = false) String skill1,
			@RequestParam(value = "skill2", required = false) String skill2,
			@RequestParam(value = "skill3", required = false) String skill3,
			@RequestParam(value = "skill4", required = false) String skill4,
			@RequestParam(value = "skill5", required = false) String skill5){
		
		List<SearchBean> list1 = (List<SearchBean>) stService.querySort4(keyword, area1, area2, area3, city1, city2,
				city3, city4, city5, type1, type2, type3, type4, skill1, skill2, skill3, skill4, skill5);
		
		List<Object> list = new ArrayList<Object>();
		list.add(list1);
		
		ResponseEntity<List<Object>> re = new ResponseEntity<List<Object>>(list, HttpStatus.OK);
		return re;
	}
}