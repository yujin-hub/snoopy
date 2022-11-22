package com.oliveyoungyj.modules.chat;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/chat/")
public class ChatController {
	
	@Autowired
	ChatServiceImpl service;

	// 채팅을 불러올때
	@RequestMapping(value="chat")
	public String chat(HttpSession httpSession,Model model) throws Exception {
		
		//유저가 가지고 있는 채팅 리스트 불러오기
		List<Chat> list = service.selectChatListFromOne(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()));
		
		model.addAttribute("list", list);
		
		return "infra/chat/user/chat";
		//본인에게 맞는 jsp경로로 변경하도록 합니다.
	}


	@ResponseBody
	@RequestMapping(value="insChat")
	public Map<String,Object> insChat(HttpSession httpSession,Chat dto) throws Exception {
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		Chat newChat = service.createChat(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()),dto.getCuMember());
		
		if(newChat != null) {
			result.put("rt", "success");
			result.put("newChat", newChat);
		}
		else
			result.put("rt", "fail");
		
		return result;
	}
}