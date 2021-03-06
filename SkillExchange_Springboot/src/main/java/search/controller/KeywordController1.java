package search.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
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
import search.service.KeywordService;

@Controller
@SessionAttributes(names = { "keywordList", "searchList", "areablock", "skillblock", "keyword1", "area1", "area2",
		"area3", "city1", "city2", "city3", "city4", "city5", "type1", "type2", "type3", "type4", "skill1", "skill2",
		"skill3", "skill4", "skill5" })
public class KeywordController1 {
	@Autowired
	KeywordService kService;

	@Autowired
	KeywordBean kBean;

	@GetMapping("/searchadvanced")
	public String findSearchAdvanced() {
		return "search/searchadvanced";
	}

	@GetMapping("/keywordPage")
	public String findKeywordAnalysis() {
		return "search/keywordAnalysis";
	}

	@GetMapping("/getKeyword")
	public String getKeyword(Model m) {
		List<KeywordBean> list = kService.queryKeyword();
		m.addAttribute("keywordList", list);

		return "redirect:/keywordPage";
	}

	@GetMapping(value = "/GetTopChartKw", produces = { "application/json" })
	public ResponseEntity<List<Object>> getTopChartKw(Model m, @RequestParam("days") Integer days) {
		List<KeywordBean> dayList = kService.topChartKeyword(days);
		List<Object> list = new ArrayList<Object>();
		
		list.add(dayList);
		ResponseEntity<List<Object>> re = new ResponseEntity<List<Object>>(list, HttpStatus.OK);
		return re;
	}
	
	@GetMapping(value = "/GetTopChartKw2", produces = { "application/json" })
	public ResponseEntity<List<Object>> getTopChartKw2(Model m, @RequestParam("month") Integer month) {
		List<KeywordBean> monthList = kService.topChartKeyword2(month);
		List<Object> list = new ArrayList<Object>();
		
		list.add(monthList);
		ResponseEntity<List<Object>> re = new ResponseEntity<List<Object>>(list, HttpStatus.OK);
		return re;
	}

//	@GetMapping(value= "/getKeyword", produces = {"application/json"})
//	public ResponseEntity<List<Object>> getKeyword(Model m) {
//		List<KeywordBean> list1 = kService.queryKeyword();
//		List<Object> list = new ArrayList<Object>();
//		list.add(list1);
//		
//		ResponseEntity<List<Object>> re = new ResponseEntity<List<Object>>(list, HttpStatus.OK);
//		return re;
//	}

	@GetMapping("/InsertKeyword.do")
	public String insertKeyword(Model m, @RequestParam("keyword") String keyword,
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
			@RequestParam(value = "skill5", required = false) String skill5,
			@RequestParam(value = "areablock", required = false) String areablock,
			@RequestParam(value = "skillblock", required = false) String skillblock) {

		Timestamp ts = new java.sql.Timestamp(System.currentTimeMillis());
		if (keyword != "") {
			kBean.setKeyWord(keyword);
			kBean.setCreateDate(ts);
			boolean x = kService.insertKeyword(kBean);
			if (x) {
				System.out.println("關鍵字新增成功");
			} else {
				System.out.println("關鍵字新增失敗");
			}
		} else {
			System.out.println("不須新增關鍵字");
		}

		List<SearchBean> list = (List<SearchBean>) kService.queryResult(keyword, area1, area2, area3, city1, city2,
				city3, city4, city5, type1, type2, type3, type4, skill1, skill2, skill3, skill4, skill5);
		m.addAttribute("searchList", list);

		m.addAttribute("keyword1", keyword);
		m.addAttribute("area1", area1);
		m.addAttribute("area2", area2);
		m.addAttribute("area3", area3);
		m.addAttribute("city1", city1);
		m.addAttribute("city2", city2);
		m.addAttribute("city3", city3);
		m.addAttribute("city4", city4);
		m.addAttribute("city5", city5);
		m.addAttribute("type1", type1);
		m.addAttribute("type2", type2);
		m.addAttribute("type3", type3);
		m.addAttribute("type4", type4);
		m.addAttribute("skill1", skill1);
		m.addAttribute("skill2", skill2);
		m.addAttribute("skill3", skill3);
		m.addAttribute("skill4", skill4);
		m.addAttribute("skill5", skill5);
		m.addAttribute("areablock", areablock);
		m.addAttribute("skillblock", skillblock);

		return "redirect:/searchadvanced";
	}

	@GetMapping(value = "/GetTopKeyword.do", produces = { "application/json" })
	public ResponseEntity<List<Object>> getTopKeyword(Model m) {
		List<KeywordBean> keywordList = kService.queryTopKeyword();
		List<Object> list = new ArrayList<Object>();
		list.add(keywordList);

		ResponseEntity<List<Object>> re = new ResponseEntity<List<Object>>(list, HttpStatus.OK);
		return re;
	}
}