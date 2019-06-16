package com.test.po;

/**
 * @description �����
 * @author zhangyifang
 * @date 2019-6-11
 */
public class QAQuestion {

	private Integer id;//����id
	private Integer subjectId;//������Ŀid;
	private String point;//�漰����֪ʶ��
	private String stem;//���
	private String answer;//��
	private String analysis;//����
	private String tname;//������
	private String tbId;//�̿�����
	private String ctId;//�½ڱ��
	
	
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
