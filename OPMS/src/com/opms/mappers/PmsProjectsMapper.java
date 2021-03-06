package com.opms.mappers;

import java.util.List;
import java.util.Map;

import com.opms.entity.PmsProjects;

/**
 * <p>Title:PmsProjectsMapper</p>
 * <p>Description:
 *    项目表接口
 * </p>
 * @author quanhuan
 * @date 2017年7月28日 下午4:07:52
 */
public interface PmsProjectsMapper {
	String getUserPosition(long userid);
	PmsProjects checkedProjectname(String name);//检查项目名是否重名
	List<PmsProjects> listPmsProjects(long userid);//查询所有项目信息
	PmsProjects getPmsProjects(Long projectid);//查询一条项目信息
	void insertPmsProjects(PmsProjects pms);//增加项目
	void updatePmsProjects(PmsProjects pms);//修改项目
	void updatePmsProjectsState(long projectid, int status);//修改项目状态
	List<PmsProjects> searchProject(PmsProjects pmsProjects);//搜索项目
}