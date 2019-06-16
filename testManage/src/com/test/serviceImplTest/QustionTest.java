package com.test.serviceImplTest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.po.SCQuestion;
import com.test.service.QuestionService;

//����junit spring�����ļ�λ��
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:source/applicationContext.xml")
public class QustionTest {

	

		@Autowired
		QuestionService questionService;
		@Test
		public void saveQuestion(){
			
			SCQuestion scquestion=new SCQuestion();
			scquestion.setId(2);
			scquestion.setSubjectId(2);
			scquestion.setPoint("���ݷ�");
			scquestion.setStem("�鲢������õ��㷨��Ʒ������ڣ�����");
			scquestion.setOption("A.���ɷ�");
			scquestion.setAnswer("B");
			scquestion.setAnalysis("���޽���");
			scquestion.setTname("����Ƽ");
			scquestion.setTbId(1);
			scquestion.setCtId(1);
			
			
			questionService.saveSCQuestion(scquestion);
			
			
		}
		
	
}
