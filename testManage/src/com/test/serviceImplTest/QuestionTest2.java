package com.test.serviceImplTest;



import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.po.SCQuestion;
import com.test.service.QuestionService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:source/applicationContext.xml")
public class QuestionTest2 {

	@Autowired
	QuestionService questionService;
	@Test
	public void saveQuestion(){
		
		SCQuestion scquestion=new SCQuestion();
		scquestion.setId(1);
		scquestion.setSubjectId(1);
		scquestion.setPoint("回溯法");
		scquestion.setStem("归并排序采用的算法设计方法属于（）。");
		scquestion.setOption1("A.归纳法");
		scquestion.setOption2("B.分治法");
		scquestion.setOption3("C.贪心法");
		scquestion.setOption4("D.回溯法");
		scquestion.setAnswer("B");
		scquestion.setAnalysis("暂无解析");
		scquestion.setTname("jack");
		scquestion.setTbId(1);
		scquestion.setCtId(1);
		
		
		questionService.saveSCQuestion(scquestion);
		
		
	}

}
