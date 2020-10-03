package seon.je.moon.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import seon.je.moon.vo.Board;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	SqlSession sqlSession;
	private static final String nameSpace = "seon.je.moon.boardMapper";
	@Override
	public List<Board> boardSelect() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace+".boardSelect");
	}

	@Override
	public Board boardDetail(int bd_num) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace+".boardDetail", bd_num);
	}

	@Override
	public int boardInsert(Board board) {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace+".boardInsert",board);
	}

	@Override
	public int boardCnt(int bd_num) {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace+".boardCnt",bd_num);
	}

}
