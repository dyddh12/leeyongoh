package org.edu.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.edu.util.NaverLoginApi;
import org.springframework.stereotype.Controller;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.oauth.OAuth20Service;

@Controller
public class NaverLoginController {
	/**
	 * 네이버API서버로 보내는 인증 요청문을 구성하는 파라미터(아래클래스에서 사용)
	 * client_id: 네이버App등록 후 발급받은 클라이언트 아이디
	 * response_type: 네이버App보내준 응답에대한 데이터 타입
	 * redirect_uri:네이버 로그인 인증결과를 전달 받는 콜백URL
	 * state: 네이버App이 생성한 토큰(네트웍에서 전송되는 자료단위-인증정보)의 상태
	 */
	private final static String CLIENT_ID = "osgm3bqYygYV49c1QPWl";
	private final static String CLIENT_SECRET = "1jYoDWu4_v";
	private final static String REDIRECT_URI = "http://127.0.0.1:8080/login";
	private final static String SESSION_STATE = "oauth_state";
	/* 프로필 조회 API URL - 사용자이름+사용자이메일 */
	private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
	
	/* 네이버 아이디로 로그인 인증 url 생성 Method */
	public String getAuthorizationUrl(HttpSession session) {
		/* 세션 유효성 검증을 위하여 난수를 생성(아래) */
		String state = generateRandomString();
		/* 생성한 난수 값을 session변수에 저장 */
		setSession(session,state);
		
		//Scribe외부모듈에서 제공하는 인증 URL생성 기능을 이용하여 네아로 인증 URL 생성(아래)
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.state(state)
				.build(NaverLoginApi.instance());//instance바로호출 static으로 정의되어서가능
		return oauthService.getAuthorizationUrl();
	}
	
	/* 네아로 Callback 처리 및 Access Token 구하기 메서드 */
	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) {
		/* 콜백URL로 전달받은 세션검증용 난수값과 세션에 저장되어 있는 값이  일치하는지 확인 */
		String sessionState = getSession(session);
		return null;
	}

	private String getSession(HttpSession session) {
		// http에서 session 값 가져오기
		return (String) session.getAttribute(SESSION_STATE);
	}

	private void setSession(HttpSession session, String state) {
		// http session클래스에 데이터 저장
		session.setAttribute(SESSION_STATE, state);//고유한 uuid값이 세션으로 저장
	}

	private String generateRandomString() {
		// 세션 유효성 검증을 위한 난수 생성기
		return UUID.randomUUID().toString();
	}
}
