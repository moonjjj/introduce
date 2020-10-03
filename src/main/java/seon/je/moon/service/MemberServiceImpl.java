package seon.je.moon.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import seon.je.moon.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	MemberDAO memberDAO;

}
