package org.edu.util;

import com.github.scribejava.core.builder.api.DefaultApi20;

public class NaverLoginApi extends DefaultApi20 {

	@Override
	public String getAccessTokenEndpoint() {
		// OAuth2.0 인증 네이버 Rest-API주소 
		// 로그인해도 되는 사람인지 체크(관리자,일반사용자인지는 체크 안함)
		return "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code";
	}

	@Override
	protected String getAuthorizationBaseUrl() {
		// 네이버 권한 체크하는 RestAPI 주소
		return "https://nid.naver.com/oauth2.0/authorize";
	}
	
	//싱글톤 인스턴스 객체를 생성하기 위해서 인스턴스 홀더 그릇을 만듭니다.
	private static class InstanceHolder {
		private static final NaverLoginApi INSTANCE = new NaverLoginApi();
	}
	//싱글톤으로 인스턴스 객체 생성하는 방식
	public static NaverLoginApi instance() {
		return InstanceHolder.INSTANCE;
	}
}
