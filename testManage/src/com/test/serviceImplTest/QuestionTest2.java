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
		scquestion.setPoint("���ݷ�");
		scquestion.setStem("�鲢������õ��㷨��Ʒ������ڣ�����");
		scquestion.setOption1("A.���ɷ�");
		scquestion.setOption2("B.���η�");
		scquestion.setOption3("C.̰�ķ�");
		scquestion.setOption4("D.���ݷ�");
		scquestion.setAnswer("B");
		scquestion.setAnalysis("���޽���");
		scquestion.setTname("jack");
		scquestion.setTbId(1);
		scquestion.setCtId(1);
		
		
		questionService.saveSCQuestion(scquestion);
		
		
	}

}
