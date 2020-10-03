package seon.je.moon.service;

import java.util.List;

import seon.je.moon.vo.Board;

public interface BoardService {
	//전체 글 리스트
	public List<Board> boardSelect();
	//글 상세
	public Board boardDetail(int bd_num);
	//글 추가
	public int boardInsert(Board board);
	//글 조회수 증가
	public int boardCnt(int bd_num);
}
