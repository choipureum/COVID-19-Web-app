<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.do"/>

<div class="container gothic" style="background:white !important"><!-- main_container -->
			<div>
				<div id="content" class="content">
					<div>

                        <div class="sub_top">
                            <div class="st_navigation">
                                <ul>
                                    <li><a href="/main.do"><span class="hdn">홈</span></a></li>
                                   <li><a href="javascript:void(0);" onclick="">바로알기</a></li>
                                    <li><a href="javascript:void(0);" onclick="">코로나19 란?</a></li>
                                </ul>
                            </div>
                            <div class="st_title">
                                <div class="fl_l"style="font-weight:bold">
                                    <h3><strong>코로나19 란?</strong></h3>
                                </div>
                            </div>
                        </div>
                        
						<!-- s: content -->
						<p class="ta_r mgt36">* 현재까지 알려진 정보(2020년 4월 2일 기준) </p>
                        <h4 class="s_title_1 bold"><strong>코로나바이러스감염증-19(COVID-19) 정보</strong></h4>
						<div class="data_table">
							<table>
								<caption><span class="hdn">코로나바이러스감염증-19 기본정보표 - 정의, 질병분류, 병원체, 전파경로, 잠복기, 진단기준, 증상, 치료, 치명률, 관리, 예방 으로 구성</span></caption>
								<colgroup>
									<col style="width:25%;">
									<col style="width:75%;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">정의</th>
										<td class="ta_l">SARS-CoV-2 감염에 의한 호흡기 증후군</td>
									</tr>
									<tr>
										<th scope="row">질병 분류</th>
										<td class="ta_l">
											<ul class="s_listin_mdot mgt0">
												<li>법정감염병 : 제1급감염병 신종감염병증후군</li>
												<li>질병 코드 : U07.1</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">병원체</th>
										<td class="ta_l">SARS-CoV-2 : <span class="txt_ntc_bold">Coronaviridae</span>에 속하는 RNA 바이러스</td>
									</tr>
									<tr>
										<th scope="row">전파 경로</th>
										<td class="ta_l">
											<p>현재까지는 비말(침방울), 접촉을 통한 전파로 알려짐</p>
											<ul class="s_listin_mdot mgt0">
												<li>기침이나 재채기를 할 때 생긴 비말(침방울)을 통한 전파 등</li>
												<li>코로나19 바이러스에 오염된 물건을 만진 뒤 눈, 코, 입을 만짐</li>
											</ul>	
										</td>
									</tr>
									<tr>
										<th scope="row">잠복기</th>
										<td class="ta_l">1~14일 (평균 4~7일)</td>
									</tr>
									<tr>
										<th scope="row">진단 기준</th>
										<td class="ta_l">
											<ul class="s_listin_mdot mgt0">
												<li>환자 :  진단을 위한 검사기준에 따라 감염병병원체 감염이 확인된 사람</li>
												<li>진단을 위한 검사기준
													<ul>
														<li>- 검체에서 바이러스 분리</li>
														<li>- 검체에서 특이 유전자 검출</li>
													</ul>
												</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">증상</th>
										<td class="ta_l">발열, 권태감, 기침, 호흡곤란 및 폐렴 등 경증에서 중증까지 다양한 호흡기감염증이 나타남<br />그 외 가래, 인후통, 두통, 객혈과 오심, 설사 등도 나타남</td>
									</tr>
									<tr>
										<th scope="row">치료</th>
										<td class="ta_l">
											<ul class="s_listin_mdot mgt0">
												<li>대증 치료 : 수액 보충, 해열제 등 보존적 치료</li>
												<li>특이적인 항바이러스제 없음 </li>
											</ul>	
										</td>
									</tr>
									<tr>
										<th scope="row">치명률</th>
										<td class="ta_l">
											<ul class="s_listin_mdot mgt0">
												<li>전세계 치명률은 약 3.4%(WHO, 3.5 기준)<br />단, 국가별 &middot; 연령별 치명률 수준은 매우 상이함</li>
												<li>고령, 면역기능이 저하된 환자, 기저질환을 가진 환자가 주로 중증, 사망 초래 </li>
											</ul>	
										</td>
									</tr>
									<tr>
										<th scope="row">관리</th>
										<td class="ta_l">
											<p class="w_bold">환자 관리</p>
											<ul class="s_listin_mdot mgt0">
												<li>표준주의, 비말주의, 접촉주의 준수</li>
												<li>증상이 있는 동안 가급적 집에서 휴식을 취하고 다른 사람과 접촉을 피하도록 권고</li>
											</ul>	
											<p class="w_bold">접촉자 관리</p>
											<ul class="s_listin_mdot mgt0">
												<li>감염증상 발생 여부 관찰</li>
											</ul>	
										</td>
									</tr>
									<tr>
										<th scope="row">예방</th>
										<td class="ta_l">
											<ul class="s_listin_mdot mgt0">
												<li>백신 없음
												<li>올바른 손씻기 
													<ul>
														<li>- 흐르는 물에 비누로 30초 이상 꼼꼼하게 손씻기</li>
														<li>- 특히, 외출 후, 배변 후, 식사 전·후, 기저귀 교체 전·후, 코를 풀거나 기침, 재채기 후 등에는 반드시 실시</li>
													</ul>
												<li>기침 예절 준수
													<ul>
														<li>- 기침할 때는 휴지나 옷소매 위쪽으로 입과 코를 가리고 하기</li>
														<li>- 호흡기 증상이 있는 경우 마스크 착용</li>
													</ul>
												<li>씻지 않은 손으로 눈, 코, 입 만지지 않기</li>
												<li>주위 환경을 자주 소독하고 환기하기</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</div>   
						
                        <h4 class="s_title_1">코로나 바이러스 분류 및 특성</h4>
						<h5 class="s_title_in3">개요</h5>
						<ul class="s_listin_dot">
                        	<li>코로나 바이이러스(CoV)는 사람과 다양한 동물에 감염될 수 있는 바이러스로서 유전자 크기 27~32kb의 RNA 바이러스</li>
                        </ul>
                        <h5 class="s_title_in3">분류</h5>
						<ul class="s_listin_dot">
                        	<li>코로나 바이러스과에는 4개의 속(알파, 베타, 감마, 델타)이 있음
                            	<ul class="s_listin_bar">
                                	<li>알파 &middot; 베타 : 사람과 동물에게 감염</li>
                                    <li>감마 &middot; 델타 : 동물에게 감염</li>
                                </ul>
                            </li>
                        </ul>
                        
                        <h5 class="s_title_in3">형태</h5>
						<ul class="s_listin_dot">
                        	<li>형태는 코로나 바이러스의 명명과 같이 전자현미경 관찰시 구형
                            	<ul class="s_listin_bar">
                                    <li>외부 spike 단백질이 특징적인 크라운형태</li>
                                </ul>
                            </li>
                        </ul>
                        
                        <h5 class="s_title_in3">사람감염 코로나 바이러스</h5>
						<ul class="s_listin_dot">
                        	<li>사람감염 코로나 바이러스는 현재까지 6종류가 알려져 있음
                            	<ul class="s_listin_bar">
                                	<li>감기를 일으키는 유형(229E, OC43, NL63, HKU1)</li>
                                    <li>중증폐렴을 일으킬 수 있는 유형(SARS-CoV, MERS-CoV) </li>
                                </ul>
                            </li>
                        </ul>
                        
                       <div class="box_gray">                           
                                <h6 class="s_title_3">코로나 바이러스 분류표</h6>
                            <div class="data_table tbl_scrl tbl_scrl_m">
                            <table>
                                <col style="width:20%">
                                <col style="width:20%">
                                <col style="width:60%">
                                <thead>
                                    <tr>
                                        <th>속(genus) </th>
                                        <th>사람-코로나 바이러스</th>
                                        <th>사람 이외에 감염하는 코로나 바이러스</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>알파-코로나 바이러스(alphacoronavirus)</td>
                                        <td>229E, NL63,</td>
                                        <td class="ta_l">
                                            돼지 유행성 설사 바이러스(porcine epidemic diarrhea virus : PEDV), 
                                            (돼지) 전염성 위장염 바이러스 (transmissible gastroenteritis virus : TGEV), 
                                             개코로나 바이러스(canine coronavirus : CCoV), 고양이 코로나 바이러스
                                            (feline coronavirus : FCoV), Miniopterus bat(박쥐) coronavirus 1,
                                            Miniopterus bat(박쥐) coronavirus HKU8, Rhinolophus bat(박쥐) coronavirus HKU2, Scotophilus bat(박쥐) coronavirus 512   
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>베타-코로나 바이러스(betacoronavirus)</td>
                                        <td>OC43, HKU1, SARS-CoV, MERS-CoV</td>
                                        <td class="ta_l">
                                            돼지 혈구 응집성뇌척수염 바이러스(porcine hemagglutinating encephalomyelitis virus : PHEV), 우코로나 바이러스(bovine coronavirus : BCoV), 말코로나 바이러스
    (equine coronavirus : EqCoV), 쥐코로나 바이러스(murine coronavirus : MuCoV),Tylonycteris bat(박쥐) coronavirus HKU4, Pipistrellus bat(박쥐) coronavirus HKU5,Rousettus bat(박쥐) coronavirus HKU9 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>감마-코로나 바이러스(gammacoronavirus)</td>
                                        <td>없음</td>
                                        <td class="ta_l">새코로나 바이러스(Avian coronavirus),흰색 돌고래(Beluga whale)-코로나 바이러스 SW1 </td>
                                    </tr>
                                    <tr>
                                        <td>델타-코로나 바이러스(deltacoronavirus)</td>
                                        <td>없음</td>
                                        <td class="ta_l">제주직박구리(Bulbul)-코로나 바이러스 HKU11,
    개똥지빠귀(Thrush)-코로나 바이러스 HKU12,
    킨바라(Munia)-코로나 바이러스 HKU13 </td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                            <p class="n_descript">* 포유류, 조류 등 광범위 동물 감염(개, 고양이, 소, 돼지, 말, 닭, 쥐, 박쥐, 돌고래 등) </p>
                            <p  class="n_descript">* 박쥐 CoV는 알파 CoV 또는 베타 CoV에 속함</p>
                            <h5 class="s_title_in2">코로나 바이러스 전자현미경 형태</h5>
                            <div class="image_list cnt3-3-1 img_ratio">
                                <ul>
                                    <li>
                                        <div>
                                            <div class="il_img">
                                                <img class="ir_169" src="/static/image/content/co_img_01.png" alt="MERS-CoV/KOR/KNIH/002_05_2015의 투과전자현미경 사진 (KCDC)">
                                            </div>
                                            <div class="il_descript">
                                                <span class="il_ttl">MERS-CoV/KOR/KNIH/002_05_2015의 투과전자현미경 사진 (KCDC)</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <div class="il_img">
                                                <img class="ir_169" src="/static/image/content/co_img_02.png" alt="MERS-CoV/KOR/KNIH/002_05_2015의 투과전자현미경 사진 (KCDC)">
                                            </div>
                                            <div class="il_descript">
                                                <span class="il_ttl">MERS-CoV/KOR/KNIH/002_05_2015의 투과전자현미경 사진 (KCDC)</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <div class="il_img">
                                                <img class="ir_169" src="/static/image/content/co_img_03.png" alt="SARS-CoV(N Engl J Med. 2003; 348(20):1948-51)">
                                            </div>
                                            <div class="il_descript">
                                                <span class="il_ttl">SARS-CoV(N Engl J Med. 2003; 348(20):1948-51)</span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        <!-- e: content -->

                        
                        </div>
                    </div>
                  </div>
                        
	</div>


	
<jsp:include page="/footer.do"/>