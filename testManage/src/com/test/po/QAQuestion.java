package com.test.po;

/**
 * @description 简答题
 * @author zhangyifang
 * @date 2019-6-11
 */
public class QAQuestion {

	private Integer id;//试题id
	private Integer subjectId;//所属科目id;
	private String point;//涉及到的知识点
	private String stem;//题干
	private String answer;//答案
	private String analysis;//解析
	private String tname;//出题人
	private String tbId;//教科书编号
	private String ctId;//章节编号
	
	
	@Override
	public String toString() {
		return "QAQuestion [id=" + id + ", subjectId=" + subjectId + ", point="
				+ point + ", stem=" + stem + ", answer=" + answer
				+ ", analysis=" + analysis + ", tname=" + tname + ", tbId="
				+ tbId + ", ctId=" + ctId + "]";
	}
	public QAQuestion(Integer id, Integer subjectId, String point, String stem,
			String answer, String analysis, String tname, String tbId,
			String ctId) {
		super();
		this.id = id;
		this.subjectId = subjectId;
		this.point = point;
		this.stem = stem;
		this.answer = answer;
		this.analysis = analysis;
		this.tname = tname;
		this.tbId = tbId;
		this.ctId = ctId;
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
	public String getTbId() {
		return tbId;
	}
	public void setTbId(String tbId) {
		this.tbId = tbId;
	}
	public String getCtId() {
		return ctId;
	}
	public void setCtId(String ctId) {
		this.ctId = ctId;
	}
	
	
}
