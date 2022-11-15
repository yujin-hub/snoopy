package com.oliveyoungyj.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
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

	public void setSearchAndPaging(MemberVo vo) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		setSearchAndPaging(vo);

		if (vo.getTotalRows() > 0) {
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
	
	@RequestMapping(value = "infoUpdt")
	public String infoUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {

		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailseq()));

		service.infoUpdt(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/mypageProfile";
	}

	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model, Member dto) throws Exception {

		System.out.println("vo.getSeq(): " + vo.getSeq());
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		
//		// 업로드
//		dto.setPseq(vo.getSeq());
//		Member imageUpload = service.imageUpload(dto);
//		model.addAttribute("imageUpload", imageUpload);
//		
		return "infra/member/xdmin/memberForm";
	}

	@RequestMapping(value = "memberJoin")
	public String memberJoin(MemberVo vo, Member dto) throws Exception {
		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailseq()));

		service.insert(dto);
		return "infra/member/user/regDone";
	}

	@RequestMapping(value = "memberSecession")
	public String memberSecession(MemberVo vo, Member dto, RedirectAttributes redirectAttributes,
			HttpSession httpSession) throws Exception {

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

				System.out.println(httpSession.getAttribute("sessName"));
				returnMap.put("rt", "success");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	//카카오 로그인
	@ResponseBody
	@RequestMapping(value = "kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member kakaoLogin = service.snsLoginCheck(dto);
		
		 System.out.println("test : " + dto.getToken());
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getSeq());    
	     httpSession.setAttribute("sessId", dto.getUserID());
	     httpSession.setAttribute("sessName", dto.getName());
	     httpSession.setAttribute("sessEmail", dto.getEmail());
	     httpSession.setAttribute("sessImg", dto.getSnsImg());
	 }
	 
	//네이버 로그인
	@RequestMapping(value = "naverLoginProc")
	public String naverLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    System.out.println("naverLoginProc");
	    
	    // id 값 있는지 체크 
	    Member naverLogin = service.snsLoginCheck(dto);
	      
	    if (naverLogin == null) {
	        System.out.println("여기는 : " + null);
	        service.naverInst(dto);
	        
	        httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
	        //session(naver.getSeq(), naver.getId(), naver.getName(), naver.getEmail(), naver.getUser_div(), naver.getSnsImg(), naver.getSns_type(), httpSession);
	        session(dto, httpSession);
	    } else {
	        System.out.println("여기는 :  not " + null);
	
	        httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
	        //session(naverLogin.getSeq(), naverLogin.getId(), naverLogin.getName(), naverLogin.getEmail(), naverLogin.getUser_div(), naverLogin.getSnsImg(), naverLogin.getSns_type(), httpSession);
	        session(naverLogin, httpSession);
	    }
	    return "redirect:/item/itemList";
	}

	
	//회원
	@RequestMapping(value = "mypageProfile")
	public String mypageProfile(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {
		
		String seq = (String) httpSession.getAttribute("sessSeq");
		vo.setSeq(seq);
		
		Member result = service.selectOne(vo);
		model.addAttribute("pro", result);
		
		return "infra/member/user/mypageProfile";
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
	public String mypage(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {
		
		String seq = (String) httpSession.getAttribute("sessSeq");
		vo.setSeq(seq);
		
		Member result = service.selectOne(vo);
		model.addAttribute("my", result);
		
		return "infra/member/user/mypage";
	}

	@RequestMapping(value = "mypageMod")
	public String mypageMod(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {

		String seq = (String) httpSession.getAttribute("sessSeq");
		vo.setSeq(seq);
		
		Member result = service.selectOne(vo);
		model.addAttribute("pro", result);
		
		return "infra/member/user/mypageMod";
	}

	@RequestMapping(value = "mypageOrder")
	public String mypageOrder(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {

		String seq = (String) httpSession.getAttribute("sessSeq");
		vo.setSeq(seq);
		
		Member result = service.selectOne(vo);
		model.addAttribute("order", result);
		
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
	public String changePW(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {

		String seq = (String) httpSession.getAttribute("sessSeq");
		vo.setSeq(seq);
		
		Member result = service.selectOne(vo);
		model.addAttribute("ch", result);
		
		return "infra/member/user/changePW";
	}

	@RequestMapping(value = "loginDmin")
	public String loginDmin() throws Exception {

		return "infra/member/xdmin/loginDmin";
	}
	
	
	//엑셀 다운로드
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"회원번호", "회원등급", "이름", "성별", "연락처", "이메일", "최근접속일"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getUserGrade());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getGender() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getGender()));
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTel());
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getEmail());
	            
	            cell = row.createCell(6);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getAccessDate() != null) cell.setCellValue((list.get(i).getAccessDate()));
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=memberList.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }

}
