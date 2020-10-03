package seon.je.moon.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import seon.je.moon.dao.PerfumeDAO;
@Service
public class PerfumeServiceImpl implements PerfumeService{
	@Inject
	PerfumeDAO perfumeDAO;
}
