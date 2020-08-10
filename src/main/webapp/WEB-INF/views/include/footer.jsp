<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="footer">
            <div class="f_top">
                <div>
                <a href="#" class="btn_top" onclick="goTop()"><span class="hdn">상단으로 이동</span></a>
                    <div class="ft_left">
                        <div class="f_relate">
                             <ul>
                                <li>
                                    <a href="#none"><span>질병관리본부 관련기관 </span><em>바로가기</em></a>
                                    <div>
                                        <ul>
                                            <li><a href="http://www.cdc.go.kr/" target="_blank" rel="noopener noreferrer" title="질병관리본부  [새창]">질병관리본부</a></li>
                                            <li><a href="http://www.cdc.gov/" target="_blank" rel="noopener noreferrer" title="미국질병통제예방센터[CDC]  [새창]">미국질병통제예방센터[CDC]</a></li>
                                            <li><a href="http://www.ecdc.europa.eu/" target="_blank" rel="noopener noreferrer" title="유럽질병통제예방센터[ECDC] [새창]">유럽질병통제예방센터[ECDC]</a></li>
                                            <li><a href="http://www.who.int/" target="_blank" rel="noopener noreferrer" title="세계보건기구[WHO] [새창]">세계보건기구[WHO]</a></li>
                                            <li><a href="http://www.nih.go.jp/" target="_blank" rel="noopener noreferrer" title="일본감염병연구소[NIID] [새창]">일본감염병연구소[NIID]</a></li>
                                            <li><a href="http://www.hpa.org.uk/" target="_blank" rel="noopener noreferrer" title="영국공공보건국[PHE] [새창]">영국공공보건국[PHE]</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="#none"><span>보건환경연구원 </span><em>바로가기</em></a>
                                    <div>
                                        <ul>
                                            <li><a href="http://news.seoul.go.kr/welfare/life_health" target="_blank" rel="noopener noreferrer" title="서울특별시 보건환경연구원 [새창]">서울시 보건환경연구원</a></li>
                                            <li><a href="http://www.busan.go.kr/ihe/index" target="_blank" rel="noopener noreferrer" title="부산광역시 보건환경연구원 [새창]">부산시 보건환경연구원</a></li>
                                            <li><a href="http://www.daegu.go.kr/Health/" target="_blank" rel="noopener noreferrer" title="대구광역시 보건환경연구원 [새창]">대구시 보건환경연구원</a></li>
                                            <li><a href="http://ecopia.incheon.go.kr/" target="_blank" rel="noopener noreferrer" title="인천광역시 보건환경연구원 [새창]">인천시 보건환경연구원</a></li>
                                            <li><a href="http://hevi.gwangju.go.kr/" target="_blank" rel="noopener noreferrer" title="광주광역시 보건환경연구원 [새창]">광주시 보건환경연구원</a></li>
                                            <li><a href="http://www.daejeon.go.kr/hea/index.do" target="_blank" rel="noopener noreferrer" title="대전광역시 보건환경연구원 [새창]">대전시 보건환경연구원</a></li>
                                            <li><a href="http://www.ulsan.go.kr/uihe/index" target="_blank" rel="noopener noreferrer" title="울산광역시 보건환경연구원 [새창]">울산시 보건환경연구원</a></li>
                                            <li><a href="http://gg.go.kr/gg_health" target="_blank" rel="noopener noreferrer" title="경기도 보건환경연구원 [새창]">경기도 보건환경연구원</a></li>
                                            <li><a href="http://www.gihe.re.kr/" target="_blank" rel="noopener noreferrer" title="강원도 보건환경연구원 [새창]">강원도 보건환경연구원</a></li>
                                            <li><a href="http://here.cb21.net/" target="_blank" rel="noopener noreferrer" title="충청북도 보건환경연구원 [새창]">충청북도 보건환경연구원</a></li>
                                            <li><a href="http://www.chungnam.go.kr/healthenvMain.do" target="_blank" rel="noopener noreferrer" title="충청남도 보건환경연구원 [새창]">충청남도 보건환경연구원</a></li>
                                            <li><a href="http://jihe.jeonbuk.go.kr/" target="_blank" rel="noopener noreferrer" title="전라북도 보건환경연구원 [새창]">전라북도 보건환경연구원</a></li>
                                            <li><a href="http://www.jihe.go.kr/" target="_blank" rel="noopener noreferrer" title="전라남도 보건환경연구원 [새창]">전라남도 보건환경연구원</a></li>
                                            <li><a href="http://www.gb.go.kr/Main/open_contents/section/inhen/index.html" target="_blank" rel="noopener noreferrer" title="경상북도 보건환경연구원 [새창]">경상북도 보건환경연구원</a></li>
                                            <li><a href="http://www.gyeongnam.go.kr/knhe/index.gyeong" target="_blank" rel="noopener noreferrer" title="경상남도 보건환경연구원 [새창]">경상남도 보건환경연구원</a></li>
                                            <li><a href="http://hei.jeju.go.kr/" target="_blank" rel="noopener noreferrer" title="제주특별자치도 보건환경연구원 [새창]">제주도 보건환경연구원</a></li>
                                            <li><a href="https://www.sejong.go.kr/vri.do" target="_blank" rel="noopener noreferrer" title="세종시 보건환경 연구원 [새창]">세종시 보건환경 연구원</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="#none"><span>관련기관 </span><em>바로가기</em></a>
                                    <div>
                                        <ul>
                                            <li><a href="http://kostat.go.kr/portal/korea/covid-19/main.html" target="_blank" rel="noopener noreferrer" title="통계청 코로나19 [새창]">통계청 코로나19</a></li>
                                        </ul>
                                    </div>
                                </li>                                
                            </ul>

                        </div>
                    </div>
            	</div>
            </div>
            <div class="f_bottom">
                <div>
                    <div class="fb_left">
                        <div class="f_navigation">
                            <ul>
                                <li class="txt_private"><strong>신고상담</strong></li>
                                <li>보건소</li>
                                <li class="cdcinfo">질병관리본부 콜센터 1339</li>
                                <li>지역번호 + 120</li>
                                <li>지역번호 + 114</li>
                                <li>최푸름번호 +82 010-5800-4180</li>
                            </ul>
                        </div>
                        <div class="f_copyright">
                            <p>Copyright ⓒ By KH_FINAL(최푸름,최상옥,김민철,최광호,안태선,김영준). All Rights Reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		

		<div class="body_bg"></div>
		</div>
		</div>
		<script>
		function goTop(){
			$('html').scrollTop(0);
	</script>
}