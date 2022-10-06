package com.oliveyoungyj.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oliveyoungyj.common.constants.Constants;
import com.oliveyoungyj.modules.code.CodeServiceImpl;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	public void setSearchAndPaging(MemberVo vo) throws Exception{
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDateStart(): " + vo.getShDateStart());
		System.out.println("vo.getShDateEnd(): " + vo.getShDateEnd());
		System.out.println("vo.getShOptionDate(): " + vo.getShOptionDate());
		System.out.println("vo.getShGender(): " + vo.getShGender());
		System.out.println("vo.getShUserDelNY(): " + vo.getShUserDelNY());
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailseq()));
		
		service.insert(dto);
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberForm";
	}
		
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailseq()));
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberJoin")
	public String memberJoin(MemberVo vo, Member dto) throws Exception {
		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailseq()));
		
		service.insert(dto);
		return "infra/member/user/regDone";
	}
	
	@RequestMapping(value = "memberSecession")
	public String memberSecession(MemberVo vo, Member dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		service.secession(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		httpSession.invalidate();
		return "infra/member/user/mypageSecession2";
	}
	
	// validation
	@ResponseBody
	@RequestMapping(value = "idCheck")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneCheckId(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "pwCheck")
	public Map<String, Object> pwCheck(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneCheckNick(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "nickCheck")
	public Map<String, Object> checkNick(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneCheckNick(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	
	// 로그인
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Member rtMember = service.selectOneID(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getSeq());
				httpSession.setAttribute("sessId", rtMember2.getUserID());
				httpSession.setAttribute("sessGrade", rtMember2.getUserGrade());

				System.out.println(httpSession.getAttribute("sessName"));
				returnMap.put("rt", "success");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	
	// 로그아웃
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	
	@RequestMapping(value = "login")
	public String login() throws Exception {
		
		return "infra/member/user/login";
	}
	
	@RequestMapping(value = "regForm")
	public String regForm() throws Exception {
		
		return "infra/member/user/regForm";
	}
	
	@RequestMapping(value = "regForm2")
	public String regForm2() throws Exception {
		
		return "infra/member/user/regForm2";
	}
	
	@RequestMapping(value = "regDone")
	public String regDone() throws Exception {
		
		return "infra/member/user/regDone";
	}
	
	@RequestMapping(value = "mypage")
	public String mypage() throws Exception {
		
		return "infra/member/user/mypage";
	}
	
	@RequestMapping(value = "mypageMod")
	public String mypageMod() throws Exception {
		
		return "infra/member/user/mypageMod";
	}
	
	
	@RequestMapping(value = "mypageOrder")
	public String mypageOrder() throws Exception {
		
		return "infra/member/user/mypageOrder";
	}
	
	@RequestMapping(value = "mypageSecession")
	public String mypageSecession() throws Exception {
		
		return "infra/member/user/mypageSecession";
	}
	
	@RequestMapping(value = "mypageSecession2")
	public String mypageSecession2() throws Exception {
		
		return "infra/member/user/mypageSecession2";
	}
	
	@RequestMapping(value = "mypageProfile")
	public String mypageProfile() throws Exception {
		
		return "infra/member/user/mypageProfile";
	}
	
	@RequestMapping(value = "itemList")
	public String itemList() throws Exception {
		
		return "infra/item/user/itemList";
	}
	
	@RequestMapping(value = "findID")
	public String findID() throws Exception {
		
		return "infra/member/user/findID";
	}
	
	@RequestMapping(value = "findPW")
	public String findPW() throws Exception {
		
		return "infra/member/user/findPW";
	}
	
	@RequestMapping(value = "idSetDone")
	public String idSetDone() throws Exception {
		
		return "infra/member/user/idSetDone";
	}
	
	@RequestMapping(value = "pwSetDone")
	public String pwSetDone() throws Exception {
		
		return "infra/member/user/pwSetDone";
	}
	
	@RequestMapping(value = "changePW")
	public String changePW() throws Exception {
		
		return "infra/member/user/changePW";
	}
	
}
