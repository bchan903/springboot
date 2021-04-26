package com.javacoffee.web.service;

import com.javacoffee.web.model.MemberVO;

public interface IMemberService {
	MemberVO loginCheck(String id, String pwd);
	MemberVO idCheck(String id);
	void insertMember(MemberVO vo);
	MemberVO selectMember(String id);
	
}
