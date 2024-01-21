package com.green.teamproject_groupware.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.teamproject_groupware.dao.IMemDao;
import com.green.teamproject_groupware.dto.MemDto;
import com.green.teamproject_groupware.service.MemService;
import com.green.teamproject_groupware.controller.MemController;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MemController {
	@Autowired
	MemService service;
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	
	
	@RequestMapping("/login")
	public String login() {

		return "login";
	}
	
	@RequestMapping("/login_yn")
	public String login_yn(@RequestParam HashMap<String, String>param) {
//		log.info("@# login_yn");
		
		ArrayList<MemDto> dtos = service.loginYn(param);
		
//		String mPw = request.getParameter("mem_pwd");
//		IMemDao dao = sqlSession.getMapper(IMemDao.class);
//		ArrayList<MemDto> dtos = dao.loginYn(request.getParameter("mem_uid")
//																			,request.getParameter("mem_pwd"));
		
		if (dtos.isEmpty()) {
			return "redirect:login";
		} else {
//			if (mPw.equals(dtos.get(0).getMem_pwd())) {
			if (param.get("mem_pwd").equals(dtos.get(0).getMem_pwd())) {
				return "redirect:login_ok";
			} else {
			    return "redirect:login";
			}
		}				
	}
	
	@RequestMapping("/login_ok")
	public String login_ok() {
		log.info("@# login_ok");
		
		return "login_ok";
	}
	
	@RequestMapping("/register")
	public String register() {
		log.info("@# register");
		
		return "register";
	}
	
	@RequestMapping("/registerOk")
	public String registerOk(@RequestParam HashMap<String, String>param) {
		log.info("@# registerOk");
		
		service.write(param);
		
		return "redirect:login";
	}
}
