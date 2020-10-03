package seon.je.moon.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import seon.je.moon.dao.BoardDAO;
import seon.je.moon.vo.Board;
@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	BoardDAO boardDAO;

	@Override
	public List<Board> boardSelect() {
		// TODO Auto-generated method stub
		return boardDAO.boardSelect();
	}

	@Override
	public Board boardDetail(int bd_num) {
		// TODO Auto-generated method stub
		return boardDAO.boardDetail(bd_num);
	}

	@Override
	public int boardInsert(Board board) {
		// TODO Auto-generated method stub
		return boardDAO.boardInsert(board);
	}

	@Override
	public int boardCnt(int bd_num) {
		// TODO Auto-generated method stub
		return boardDAO.boardCnt(bd_num);
	}
}
