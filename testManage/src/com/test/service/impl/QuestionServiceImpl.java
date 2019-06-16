package com.test.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.MCQuestionDao;
import com.test.dao.SCQuestionDao;
import com.test.po.FBQuestion;
import com.test.po.MCQuestion;
import com.test.po.QAQuestion;
import com.test.po.SCQuestion;
import com.test.po.TFQuestion;
import com.test.service.QuestionService;
@Service
@Transactional
public class QuestionServiceImpl implements QuestionService{

	@Autowired
	SCQuestionDao scQuestionDao;
	
	@Autowired
	MCQuestionDao mcQuestionDao;
	@Override
	public int saveSCQuestion(SCQuestion scQuestion) {
		
		return scQuestionDao.saveSCQuestion(scQuestion);
	}

	@Override
	public int saveMCQuestion(MCQuestion mcQuestion) {
		
		return mcQuestionDao.saveMCQuestion(mcQuestion);
	}

	@Override
	public int saveFBQuestion(FBQuestion fbQuestion) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int saveTFQuestion(TFQuestion tfQuestion) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int saveQAQuestion(QAQuestion qaQuestion) {
		// TODO Auto-generated method stub
		return 0;
	}

}
