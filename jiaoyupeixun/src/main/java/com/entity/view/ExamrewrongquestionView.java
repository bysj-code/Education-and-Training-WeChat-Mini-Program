package com.entity.view;

import com.entity.ExamrewrongquestionEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

/**
 * 错题表
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("examrewrongquestion")
public class ExamrewrongquestionView extends ExamrewrongquestionEntity implements Serializable {
    private static final long serialVersionUID = 1L;




		//级联表 exampaper
			/**
			* 试卷名称
			*/
			private String exampaperName;
			/**
			* 测试时长(分钟)
			*/
			private Integer exampaperDate;
			/**
			* 试卷总分
			*/
			private Integer exampaperMyscore;
			/**
			* 试卷表 的 教师
			*/
			private Integer exampaperJiaoshiId;
			/**
			* 试卷状态
			*/
			private Integer exampaperTypes;
				/**
				* 试卷状态的值
				*/
				private String exampaperValue;

		//级联表 examquestion
			/**
			* 试题名称
			*/
			private String examquestionName;
			/**
			* 选项
			*/
			private String examquestionOptions;
			/**
			* 分值
			*/
			private Integer examquestionScore;
			/**
			* 试题类型
			*/
			private Integer examquestionTypes;
				/**
				* 试题类型的值
				*/
				private String examquestionValue;
			/**
			* 试题排序，值越大排越前面
			*/
			private Integer examquestionSequence;

		//级联表 yonghu
			/**
			* 学生姓名
			*/
			private String yonghuName;
			/**
			* 头像
			*/
			private String yonghuPhoto;
			/**
			* 手机号
			*/
			private String yonghuPhone;
			/**
			* 电子邮箱
			*/
			private String yonghuEmail;
			/**
			* 班级
			*/
			private Integer banjiTypes;
				/**
				* 班级的值
				*/
				private String banjiValue;
			/**
			* 假删
			*/
			private Integer yonghuDelete;

	public ExamrewrongquestionView() {

	}

	public ExamrewrongquestionView(ExamrewrongquestionEntity examrewrongquestionEntity) {
		try {
			BeanUtils.copyProperties(this, examrewrongquestionEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
















				//级联表的get和set exampaper

					/**
					* 获取： 试卷名称
					*/
					public String getExampaperName() {
						return exampaperName;
					}
					/**
					* 设置： 试卷名称
					*/
					public void setExampaperName(String exampaperName) {
						this.exampaperName = exampaperName;
					}

					/**
					* 获取： 测试时长(分钟)
					*/
					public Integer getExampaperDate() {
						return exampaperDate;
					}
					/**
					* 设置： 测试时长(分钟)
					*/
					public void setExampaperDate(Integer exampaperDate) {
						this.exampaperDate = exampaperDate;
					}

					/**
					* 获取： 试卷总分
					*/
					public Integer getExampaperMyscore() {
						return exampaperMyscore;
					}
					/**
					* 设置： 试卷总分
					*/
					public void setExampaperMyscore(Integer exampaperMyscore) {
						this.exampaperMyscore = exampaperMyscore;
					}

					/**
					* 获取：试卷表 的 教师
					*/
					public Integer getExampaperJiaoshiId() {
						return exampaperJiaoshiId;
					}
					/**
					* 设置：试卷表 的 教师
					*/
					public void setExampaperJiaoshiId(Integer exampaperJiaoshiId) {
						this.exampaperJiaoshiId = exampaperJiaoshiId;
					}


					/**
					* 获取： 试卷状态
					*/
					public Integer getExampaperTypes() {
						return exampaperTypes;
					}
					/**
					* 设置： 试卷状态
					*/
					public void setExampaperTypes(Integer exampaperTypes) {
						this.exampaperTypes = exampaperTypes;
					}


						/**
						* 获取： 试卷状态的值
						*/
						public String getExampaperValue() {
							return exampaperValue;
						}
						/**
						* 设置： 试卷状态的值
						*/
						public void setExampaperValue(String exampaperValue) {
							this.exampaperValue = exampaperValue;
						}





				//级联表的get和set examquestion


					/**
					* 获取： 试题名称
					*/
					public String getExamquestionName() {
						return examquestionName;
					}
					/**
					* 设置： 试题名称
					*/
					public void setExamquestionName(String examquestionName) {
						this.examquestionName = examquestionName;
					}

					/**
					* 获取： 选项
					*/
					public String getExamquestionOptions() {
						return examquestionOptions;
					}
					/**
					* 设置： 选项
					*/
					public void setExamquestionOptions(String examquestionOptions) {
						this.examquestionOptions = examquestionOptions;
					}

					/**
					* 获取： 分值
					*/
					public Integer getExamquestionScore() {
						return examquestionScore;
					}
					/**
					* 设置： 分值
					*/
					public void setExamquestionScore(Integer examquestionScore) {
						this.examquestionScore = examquestionScore;
					}

					/**
					* 获取： 试题类型
					*/
					public Integer getExamquestionTypes() {
						return examquestionTypes;
					}
					/**
					* 设置： 试题类型
					*/
					public void setExamquestionTypes(Integer examquestionTypes) {
						this.examquestionTypes = examquestionTypes;
					}


						/**
						* 获取： 试题类型的值
						*/
						public String getExamquestionValue() {
							return examquestionValue;
						}
						/**
						* 设置： 试题类型的值
						*/
						public void setExamquestionValue(String examquestionValue) {
							this.examquestionValue = examquestionValue;
						}

					/**
					* 获取： 试题排序，值越大排越前面
					*/
					public Integer getExamquestionSequence() {
						return examquestionSequence;
					}
					/**
					* 设置： 试题排序，值越大排越前面
					*/
					public void setExamquestionSequence(Integer examquestionSequence) {
						this.examquestionSequence = examquestionSequence;
					}


































				//级联表的get和set yonghu

					/**
					* 获取： 学生姓名
					*/
					public String getYonghuName() {
						return yonghuName;
					}
					/**
					* 设置： 学生姓名
					*/
					public void setYonghuName(String yonghuName) {
						this.yonghuName = yonghuName;
					}

					/**
					* 获取： 头像
					*/
					public String getYonghuPhoto() {
						return yonghuPhoto;
					}
					/**
					* 设置： 头像
					*/
					public void setYonghuPhoto(String yonghuPhoto) {
						this.yonghuPhoto = yonghuPhoto;
					}

					/**
					* 获取： 手机号
					*/
					public String getYonghuPhone() {
						return yonghuPhone;
					}
					/**
					* 设置： 手机号
					*/
					public void setYonghuPhone(String yonghuPhone) {
						this.yonghuPhone = yonghuPhone;
					}

					/**
					* 获取： 电子邮箱
					*/
					public String getYonghuEmail() {
						return yonghuEmail;
					}
					/**
					* 设置： 电子邮箱
					*/
					public void setYonghuEmail(String yonghuEmail) {
						this.yonghuEmail = yonghuEmail;
					}

					/**
					* 获取： 班级
					*/
					public Integer getBanjiTypes() {
						return banjiTypes;
					}
					/**
					* 设置： 班级
					*/
					public void setBanjiTypes(Integer banjiTypes) {
						this.banjiTypes = banjiTypes;
					}


						/**
						* 获取： 班级的值
						*/
						public String getBanjiValue() {
							return banjiValue;
						}
						/**
						* 设置： 班级的值
						*/
						public void setBanjiValue(String banjiValue) {
							this.banjiValue = banjiValue;
						}

					/**
					* 获取： 假删
					*/
					public Integer getYonghuDelete() {
						return yonghuDelete;
					}
					/**
					* 设置： 假删
					*/
					public void setYonghuDelete(Integer yonghuDelete) {
						this.yonghuDelete = yonghuDelete;
					}






}
