package com.test.po;

/**
 * @description ��ѡ��
 * @author zhangyifang
 * @date 2019-6-11
 */
public class MCQuestion {

	private Integer id;//����id
	private Integer subjectId;//������Ŀid;
	private String point;//�漰����֪ʶ��
	private String stem;//���
	private String option;//ѡ��
	private String answer;//��
	
	private String analysis;//����
	private String tname;//������
	private String tbId;//�̿�����
	private String ctId;//�½ڱ��
	@Override
	public String toString() {
		return "MCQuestion [id=" + id + ", subjectId=" + subjectId + ", point="
				+ point + ", stem=" + stem + ", option=" + option + ", answer="
				+ answer + ", analysis=" + analysis + ", tname=" + tname
				+ ", tbId=" + tbId + ", ctId=" + ctId + "]";
	}
	public MCQuestion(Integer id, Integer subjectId, String point, String stem,
			String option, String answer, String analysis, String tname,
			String tbId, String ctId) {
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
	public MCQuestion() {
		super();
		// TODO Auto-generated constructor stub
	}
}
