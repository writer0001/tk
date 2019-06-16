package com.test.po;

/**
 * @description 多选题
 * @author zhangyifang
 * @date 2019-6-11
 */
public class MCQuestion {

	private Integer id;//试题id
	private Integer subjectId;//所属科目id;
	private String point;//涉及到的知识点
	private String stem;//题干
	private String option;//选项
	private String answer;//答案
	
	private String analysis;//解析
	private String tname;//出题人
	private String tbId;//教科书编号
	private String ctId;//章节编号
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
