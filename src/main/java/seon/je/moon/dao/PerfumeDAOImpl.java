package seon.je.moon.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class PerfumeDAOImpl implements PerfumeDAO {
	@Inject
	SqlSession sqlSession;

}
