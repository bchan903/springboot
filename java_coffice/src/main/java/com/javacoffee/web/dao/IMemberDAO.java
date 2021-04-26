package com.javacoffee.web.dao;

import java.util.HashMap;

import com.javacoffee.web.model.MemberVO;

// MyBatis 사용하기 때문에 IMemberDAO 필수
// HashMap<String, Object> : Object는 모든 데이터형 저장 가능
public interface IMemberDAO {
	MemberVO loginCheck(HashMap<String, Object> map);
	MemberVO idCheck(String id);
	void insertMember(MemberVO vo);
	MemberVO selectMember(String id);
}
