package com.test.po;

/**
 * @description 单选题
 * @author zhangyifang
 * @date 2019-6-11
 */
public class SCQuestion {

	private Integer id;//试题id
	
	private Integer subjectId;//所属科目id;
	private String point;//涉及到的知识点
	private String stem;//题干
	private String option;//选项
	private String answer;//答案
	private String analysis;//解析
	private String tname;//出题人
	private Integer tbId;//教科书编号
	private Integer ctId;//章节编号
	
	
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
