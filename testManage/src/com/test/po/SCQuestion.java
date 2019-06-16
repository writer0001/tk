package com.test.po;

/**
 * @description ��ѡ��
 * @author zhangyifang
 * @date 2019-6-11
 */
public class SCQuestion {

	private Integer id;//����id
	
	private Integer subjectId;//������Ŀid;
	private String point;//�漰����֪ʶ��
	private String stem;//���
	private String option;//ѡ��
	private String answer;//��
	private String analysis;//����
	private String tname;//������
	private Integer tbId;//�̿�����
	private Integer ctId;//�½ڱ��
	
	
	public SCQuestion() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public Integer getSubjectId() {
		return subjectId;
	}


	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}


	public String getPoint() {
		return point;
	}


	public void setPoint(String point) {
		this.point = point;
	}


	public String getStem() {
		return stem;
	}


	public void setStem(String stem) {
		this.stem = stem;
	}


	

	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String getAnalysis() {
		return analysis;
	}


	public void setAnalysis(String analysis) {
		this.analysis = analysis;
	}


	public String getTname() {
		return tname;
	}


	public void setTname(String tname) {
		this.tname = tname;
	}


	

	
	public Integer getTbId() {
		return tbId;
	}


	public void setTbId(Integer tbId) {
		this.tbId = tbId;
	}


	public Integer getCtId() {
		return ctId;
	}


	public void setCtId(Integer ctId) {
		this.ctId = ctId;
	}


	public String getOption() {
		return option;
	}


	public void setOption(String option) {
		this.option = option;
	}


	@Override
	public String toString() {
		return "SCQuestion [id=" + id + ", subjectId=" + subjectId + ", point="
				+ point + ", stem=" + stem + ", option=" + option + ", answer="
				+ answer + ", analysis=" + analysis + ", tname=" + tname
				+ ", tbId=" + tbId + ", ctId=" + ctId + "]";
	}


	public SCQuestion(Integer id, Integer subjectId, String point, String stem,
			String option, String answer, String analysis, String tname,
			Integer tbId, Integer ctId) {
		super();
		this.id = id;
		this.subjectId = subjectId;
		this.point = point;
		this.stem = stem;
		this.option = option;
		this.answer = answer;
		this.analysis = analysis;
		this.tname = tname;
		this.tbId = tbId;
		this.ctId = ctId;
	}


	
	
	
}
