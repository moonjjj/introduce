package seon.je.moon.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import seon.je.moon.service.BoardService;
import seon.je.moon.vo.Board;

@Controller
public class BoardController {

	@Inject
	BoardService boardService;
	
	@RequestMapping(value = "memo", method = RequestMethod.GET)
	public String memo(Model model) {
		model.addAttribute("boardAll", boardService.boardSelect());
		return "memo";
	}
	@RequestMapping(value = "memoInsert", method = RequestMethod.GET)
	public String memoInsert() {
		return "memoInsert";
	}
	@RequestMapping(value = "memoInsert", method = RequestMethod.POST)
	public String memoInsert(Board board) {
		int r=boardService.boardInsert(board);
		return "redirect:memo";
	}
	@RequestMapping(value = "memoDetail", method = RequestMethod.GET)
	public String memoDetail(@RequestParam("bd_num") int bd_num, Model model) {
		System.out.println("bd_num is"+bd_num);
		model.addAttribute("detail", boardService.boardDetail(bd_num));
		boardService.boardCnt(bd_num);
		return "memoDetail";
	}
	@RequestMapping(value = "introduce", method = RequestMethod.GET)
	public String introduce() {
		return "introduce";
	}
}
