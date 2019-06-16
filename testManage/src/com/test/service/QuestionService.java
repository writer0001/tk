package com.test.service;

import com.test.po.FBQuestion;
import com.test.po.MCQuestion;
import com.test.po.QAQuestion;
import com.test.po.SCQuestion;
import com.test.po.TFQuestion;


public interface QuestionService {

	public int saveSCQuestion(SCQuestion scQuestion);  //插入单选试题，用实体作为参数
	
	public int saveMCQuestion(MCQuestion mcQuestion);  //插入多选题，用实体作为参数
	
	public int saveFBQuestion(FBQuestion fbQuestion);  //插入填空题，用实体作为参数
	
	public int saveTFQuestion(TFQuestion tfQuestion);  //插入判断题，用实体作为参数
	
	public int saveQAQuestion(QAQuestion qaQuestion);  //插入简答题，用实体作为参数
	
	
}
