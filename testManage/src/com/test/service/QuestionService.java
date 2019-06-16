package com.test.service;

import com.test.po.FBQuestion;
import com.test.po.MCQuestion;
import com.test.po.QAQuestion;
import com.test.po.SCQuestion;
import com.test.po.TFQuestion;


public interface QuestionService {

	public int saveSCQuestion(SCQuestion scQuestion);  //���뵥ѡ���⣬��ʵ����Ϊ����
	
	public int saveMCQuestion(MCQuestion mcQuestion);  //�����ѡ�⣬��ʵ����Ϊ����
	
	public int saveFBQuestion(FBQuestion fbQuestion);  //��������⣬��ʵ����Ϊ����
	
	public int saveTFQuestion(TFQuestion tfQuestion);  //�����ж��⣬��ʵ����Ϊ����
	
	public int saveQAQuestion(QAQuestion qaQuestion);  //�������⣬��ʵ����Ϊ����
	
	
}
