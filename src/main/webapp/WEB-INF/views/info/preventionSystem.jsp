<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.do"/>

<div class="container" style="background:white !important"><!-- main_container -->
			<div>
				<div id="content" class="content">
					<div>

                        <div class="sub_top">
                            <div class="st_navigation">
                                <ul>
                                    <li><a href="/main.do"><span class="hdn">홈</span></a></li>
                                    <li><a href="javascript:void(0);" >바로알기</a></li>
                                    <li><a href="javascript:void(0);">대한민국 방역체계</a></li>
                                </ul>
                            </div>
                            <div class="st_title">
                                <div class="fl_l">
                                    <h3>대한민국 방역체계</h3>
                                </div>
                            </div>
                        </div>
                        
						<!-- s: content -->
                        <h4 class="s_title_1">한국 정부 대응체계 <span class="t_date">(2020년 2월 25일 기준)</span></h4>
						<p class="s_descript">한국정부는 감염병 위기단계를 「심각」수준으로 상향(‘20.2.23)함에 따라, 코로나19 대응을 위한 조직도 국무총리를 본부장으로 하는 중앙재난안전대책본부를 가동하여 범정부적으로 방역에 집중하고 있습니다. </p>
						<p class="s_descript">감염병 대응의 특수성과 전문성을 고려하여 방역 컨트롤타워인 ‘중앙방역대책본부’(질병관리본부)가 수행하며, 중앙재난안전대책본부 1차장 겸 중앙사고수습본부장(보건복지부 장관)은 중앙방역대책본부(본부장: 질병관리본부장)의 방역업무를 지원합니다.<br />2차장은 범정부대책지원본부장인 행정안전부장관이 맡아 중앙 및 지방자치단체 간 협조 등 필요한 사항을 지원합니다. </p>
						<p class="s_descript">각 지방자치단체에서도 단체장을 중심으로 ‘지역재난안전대책본부’를 구성하여 감염병전담병원과 병상을 확보하고, 수용범위를 넘어서면 중앙에서 병상, 인력, 물자 등의 자원을 지원합니다.</p>
						
						<div class="crisis_management">
	                        <img src="/static/image/content/cm_img_p.png" alt="위기관리체계 종합체계도">
	                        
	                        <div class="hdn">
	                            <h4>위기관리체계 종합체계도</h4>
	                            <h5>위기경보단계</h5>
	                            <p>심각</p>
	                            <h5>대응체계</h5>
	                            <ul>
	                            	<li> 중앙재난안전대책본부 - 본부장 : 국무총리, 1차장 : 보건복지부장관, 2차장: 행정안전부장관
	                            		<ul>
	                            			<li>유관부처 &middot; 기관 - 중앙부처 및 유관기관</li>
	                            			<li>
	                            				<p>중앙사고수습본부 - 본부장 : 보건복지부장관</p>
	                            				<p>중앙방역대책본부 - 본부장 : 질병관리본부장</p>
	                            				<ul>
	                            					<li>지역재난 안전대책본부 (전국지자체)
	                            						<p>지역방역대책반 (전국지자체)</p>
	                            					</li>
	                            				</ul>	                            				
	                            			<li>
	                            			<li>범정부지원본부 - 본부장 : 행정안전부장관
	                            				<ul>
	                            					<li>지역재난 안전대책본부 (전국지자체)
	                            						<p>지역방역대책반 (전국지자체)</p>
	                            					</li>
	                            				</ul>
	                            			</li>
	                            		</ul>	
	                            	</li>
	                            </ul>
	                        </div>	                        
	                    </div>

						<h4 class="s_title_1">유입 및 확산 차단 </h4>

						<h5 class="s_title_in2">입국 관리를 통한 감염병 유입 차단</h5>
						
						<h6 class="s_title_in3">특별입국절차</h6>
						<p class="s_descript">대한민국 정부는 후베이성에서 입국한 외국인의 입국을 금지하고, 중국 및 일본발 입국자 사증심사를 강화하였으며, 중국(홍콩, 마카오 포함), 이탈리아, 이란을 검역관리지역으로 지정하여 입국자 검역을 강화하고 있습니다.</p>
						<p class="s_descript">특히, 대한민국 정부는 2020년 2월 4일부터 중국으로부터 한국으로 입국하는 모든 승객에 대해 ‘특별입국절차’를 시행하고 있으며, 홍콩‧마카오(2월12일), 일본(3월9일), 이탈리아‧이란(3월12일), 유럽 주요 5개국(프랑스 &middot; 독일 &middot; 스페인 &middot; 영국 &middot; 네덜란드, 3월 15일), 유럽 전역(3월 16일), 전세계 모든 입국자(3월 19일)로 적용지역을 확대하였습니다.</p> 
						<p class="s_descript">3월 19일부터 국내로 입국하는 모든 내 &middot; 외국인은 특별입국절차에 따라 체온을 측정하고, 특별검역신고서와 건강상태질문서를 작성하여야 합니다. 특별입국대상자는 한국 내 연락처 및 거주지가 확인되어야 입국이 가능하며, 체류중 발열 등 감염가능성 확인을 위해 ‘자가격리자 안전보호 앱‘ 또는 ’모바일 자가진단 앱’을 설치하여야 합니다. 모든 입국자는 대상자별로 해당 앱을 설치 후 입국 당일부터 14일 간 매일 1회 본인의 증상을 확인하여 증상 발현 여부를 ‘앱’에 입력하여야 합니다. 또한, 입국자 명단은 각 시 &middot; 도에 제공되어 각 지자체에서 감시체계를 강화할 수 있도록 하였습니다.<br />
							<span class="txt_ntc"> ※ 자가진단 항목 : 발열(37.5도 이상) 또는 발열감, 기침, 인후통/목아픔, 호흡곤란/숨가쁨</span>
						</p>
						
						<h6 class="s_title_in3">해외 입국자 방역관리 강화 방안</h6>
						<p class="s_descript">
							대한민국 정부는 코로나19 환자 급증 및 국내 입국자 중 확진자 발생이 증가함에 따라 4월 1일(수) 0시부터 전세계 모든 나라에서 입국하는 모든 입국자는 입국일 다음날부터 만 14일이 되는 날의 12:00까지 격리생활을 하셔야 합니다.<br />
							<span class="txt_ntc">※ 예를 들어 6월 1일 입국하신분은 6월 15일 12:00까지 자가격리 기간입니다.</span>
						</p>						
						<strong class="s_title_in5 pdl0">유증상자</strong>
						<p class="s_descript">
							해외발 입국자 중 검역단계에서 발열 또는 호흡기 증상이 있는 경우
							<span class="w_bold">내외국인에 관계없이 진단검사</span>를 실시하고, 
							<span class="w_bold">검사결과 양성 시 병원 또는 생활치료센터로 이송</span>됩니다. 
							<span class="w_bold">검사결과 음성 시 내국인 및 장기체류 외국인은 자가격리(14일, 자가격리자 안전보호앱 설치)</span>를 하고, 
							<span class="w_bold">단기체류 외국인은 시설격리(14일, 모바일 자가진단앱 설치)</span>를 하게 됩니다.
						</p>
						<strong class="s_title_in5 pdl0">무증상자</strong>
						<p class="s_descript">
							무증상 입국자 중 
							<span class="w_bold">내국인 &middot; 장기체류 외국인의 경우, 자가격리(14일, 자가격리자 안전보호앱 설치)를 하고 3일 이내 보건소에서 진단검사</span>를 받아야 합니다.
						</p>
						<p class="s_descript">						
							무증상 입국자 중 
							<span class="w_bold">단기체류 외국인의 경우, 시설격리(14일, 모바일 자가진단앱 설치)</span>를 하고, 인천공항 입국자의 경우 09:00~19:00에는 개방형 선별진료소에서, 19:00~09:00에는 임시생활시설에서 검체채취하여 진단검사를 실시합니다.
						</p>	
						<p class="s_descript">
							단, <span class="w_bold">격리예외자(비자 타입이 A1(외교), A2(공무)의 경우 또는 입국 전 한국 대사관(또는 총영사관)에서 ‘격리면제서’ 사전발급 받은 자)의 경우 진단검사</span>를 받고 임시검사시설에서 검사결과가 나올 때까지 대기 후, 
							<span class="w_bold">결과 음성 시 보건복지부의 ‘모바일 자가진단’ 앱을 설치하여 입국 당일 포함 다음날부터 14일간 능동감시</span>를 받게 됩니다.
						</p>
						<p class="s_descript">
							해외입국자에 대한 검사비와 치료비는 대한민국 정부가 지원하며, 생활지원비는 지원되지 않습니다. 
						</p>
						<p class="s_descript">
							해외입국자가 격리 규정을 지키지 않는 경우에는 검역법, 감염병예방법 위반으로 1년 이하의 징역 또는 1,000만원 이하의 벌금이 부과될 수 있으며, 외국인은 출입국관리법에 따라 강제추방, 입국금지 등의 대상이 될 수 있습니다.<br />
							<span class="txt_ntc"> ※ '자가격리자 안전보호앱' 및 '모바일 자가진단앱' 은 현지출발 전 또는 특별입국절차 대기시간 동안 설치할 수 있도록 현장 지원</span>
						</p>
						
						<div class="ta_c"><span class="s_title_in4">해외입국자 검역 흐름도 (6.12 0시 이후) - 유증상자</span></div>
						<div class="entry_process_kr">
					        <div class="ep_start d_va_m"><div><i class="ico_airplane"></i><i class="ico_ship"></i><span>해외 발 입국자</span></div></div>
					        <div class="ep_have">
					            <div class="ep_person d_va_m"><div><span>유증상자</span></div></div>
					            <div class="eph_list">
					                <ul>
					                    <li>
					                        <div class="ep_line d_va_m"><div><span>진단검사</span><em>(공항에서 모든 내외국인 진단검사)</em></div></div>
					                        <div class="eph_status">
					                            <ul class="cl_b_aftr">
					                                <li>
					                                    <div>
					                                        <div class="ephs_title d_va_m"><div><span>양성</span></div></div>
					                                        <div class="ephs_list">
					                                            <ul>
					                                                <li>
					                                                    <div class="d_va_m"><div><span>병원 또는 생활치료센터</span></div></div>
					                                                </li>
					                                            </ul>
					                                        </div>
					                                    </div>
					                                </li>
					                                <li>
					                                    <div>
					                                        <div class="ephs_title d_va_m"><div><span>음성</span></div></div>
					                                        <div class="ephs_list">
					                                            <ul>
					                                                <li>
					                                                    <div class="d_va_m">
																			<div>
																				<span>14일 자가격리</span><em>(단기 체류자는 시설격리)</em>
																			</div>
																		</div>
					                                                </li>
					                                                <li>
					                                                    <div class="d_va_m h_auto">
																			<div>
																				<em>- 자가격리자 안전보호앱 설치<br />- 단기체류자는 모바일 자가진단앱 설치</em>
																			</div>
																		</div>
					                                                </li>
					                                            </ul>
					                                        </div>
					                                    </div>
					                                </li>
					                            </ul>
					                        </div>
					                    </li>
					                </ul>
					            </div>
					        </div>
					    </div>											
						
						<div class="ta_c"><span class="s_title_in4">해외입국자 검역 흐름도 (6.12 0시 이후) - 무증상자</span></div>
						<div class="entry_process_kr">
					        <div class="ep_start d_va_m"><div><i class="ico_airplane"></i><i class="ico_ship"></i><span>해외 발 입국자</span></div></div>
					        <div class="ep_not">
					            <div class="ep_person d_va_m"><div><span>무증상자</span></div></div>
					            <div class="epn_list">
					                <ul class="cl_b_aftr">
					                    <li>
					                        <div>
					                            <div class="epnl_title d_va_m"><div><span>내국인</span></div></div>
					                            <div class="epnl_content">
					                                <div class="epn_class">
					                                    <ul class="cl_b_aftr">
					                                        <li>
																<div class="epnc_list">
																	<ul>
																		<li>
																			<div class="d_va_m">
																				<div>
																					<span>14일 자가격리</span>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="d_va_m h_auto">
																				<div>
																				   <span>3일 내 진단검사<br class="m_dp_n" /> (자가격리자 안전보호앱 설치)</span>
																				</div>
																			</div>
																		</li>
																	</ul>
																</div>
															</li>
					                                    </ul>
					                                </div>
					                            </div>
					                        </div>
					                    </li>

					                    <li>
					                        <div>
					                            <div class="epnl_title d_va_m"><div><span>장기체류 외국인</span></div></div>
					                            <div class="epnl_content">
					                                <div class="epn_class">
					                                    <ul class="cl_b_aftr">
					                                        <li>
																<div class="epnc_list">
																	<ul>
																		<li>
																			<div class="d_va_m">
																				<div>
																					<span>14일 자가격리</span>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="d_va_m h_auto">
																				<div>
																				   <span>3일 내 진단검사<br class="m_dp_n" /> (자가격리자 안전보호앱 설치)</span>
																				</div>
																			</div>
																		</li>
																	</ul>
																</div>
															</li>
					                                    </ul>
					                                </div>
					                            </div>
					                        </div>
					                    </li>
					                    <li>
					                        <div>
					                            <div class="epnl_title d_va_m"><div><span>단기체류 외국인</span></div></div>
					                            <div class="epnl_content">
					                                <div class="epn_class">
					                                    <ul class="cl_b_aftr">
					                                        <li>
																<div class="epnc_list">
																	<ul>
																		<li>
																			<div class="d_va_m">
																				<div>
																					<span>공항에서 진단검사<br class="m_dp_n" /> (최대 1박2일)</span>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="d_va_m h_auto">
																				<div>
																				   <span>14일 시설격리<br class="m_dp_n" /> (모바일 자가진단앱 설치)</span>
																				</div>
																			</div>
																		</li>
																	</ul>
																</div>
															</li>
					                                    </ul>
					                                </div>
					                            </div>
					                        </div>
					                    </li>
										<li>
											<div>
												<div class="epnl_title d_va_m"><div><span>격리예외자</span></div></div>
					                            <div class="epnl_content">
					                                <div class="epn_class">
					                                    <ul class="cl_b_aftr">
					                                        <li>
					                                            <div>
					                                                <div class="epnc_list">
					                                                    <ul>
					                                                        <li>
					                                                            <div class="d_va_m">
					                                                                <div>
					                                                                    <span>공항에서 진단검사<br class="m_dp_n" /> (1박2일)</span>
					                                                                </div>
					                                                            </div>
					                                                        </li>
					                                                        <li>
					                                                            <div class="d_va_m h_auto">
					                                                                <div>
					                                                                   <span>능동감시<br class="m_dp_n" /> (모바일 자가진단앱 설치)</span>
					                                                                </div>
					                                                            </div>
					                                                        </li>
					                                                    </ul>
					                                                </div>
					                                            </div>
					                                        </li>
					                                    </ul>
					                                </div>
					                            </div>
											</div>
										</li>
					                </ul>
					            </div>
					        </div>
					    </div>	
					    <p class="s_descript">					    	
					    	<span class="txt_ntc">※ 격리기간 : 입국일로부터 만14일이 되는 날(입국일+14)의 12:00까지 격리<br />(예를 들어 6월 1일 입국한 경우 만14일이 되는 15일의 12:00까지 자가격리 의무기간으로 통보)</span>
					    </p>	
						
						<h6 class="s_title_in3">의료기관에 해외여행력 제공</h6>
						<p class="s_descript">대한민국 정부는 의료기관이 해외여행력을 확인할 수 있도록 수진자자격조회시스템(건강보험 자격확인), ITS(해외여행력 정보제공 프로그램, International Traveler Information System) 및 DUR(의약품안전사용서비스, Drug Utilization Review)를 통해 관련 정보를 제공하고 있습니다.</p>
						<div class="box_nh mgt8">
							<div class="bn_t"><p>참조 - 한국발 입국자에 대한 조치 현황</p></div>
							<div class="bn_b">
								<p class="s_descript">코로나19 확산과 관련, 외국에서 우리나라 여행객에 대하여 취하고 있는 것으로 파악된 조치 사항을 안내하오니 해당국 방문 계획 마련 등에 참고하시기 바랍니다.</p>						
								<p class="s_descript">* <a href="http://www.0404.go.kr/m/dev/newest_list.do" target="_blank" title="새창이동" class="s_link_text uline"><span>코로나19 확산 관련 한국발 입국자에 대한 조치 현황 [바로 가기]</span></a></p>
							</div>
						</div>
						
						<h5 class="s_title_in2">감염 환자 조기발견을 통한 확산 차단</h5>
						<p class="s_descript">감염 확산을 사전에 방지하기 위해서는 환자를 조기에 발견하는 것이 필요합니다. 대한민국 정부는 선별진료소를 운영하여 환자들의 진단검사 접근성을 높이고, 대규모의 빠른 진단검사를 통해 환자를 찾아내고 있습니다. </p>
						<h6 class="s_title_in3">선별진료소 </h6>
						<p class="s_descript">선별진료소는 기침이나 발열 등 감염증 의심증상자가 의료기관 출입 전 별도로 진료를 받도록 하는 공간입니다. 20.4.8. 기준, 638개 보건소와 의료기관이 선별진료소를 설치하여 운영 중에 있으며, 이 중95%에 해당하는 606개소에서 직접 검체채취를 합니다. <br />
						최근에는 동차 이동형(Drive Thru), 도보 이동형(Walk Thru) 등 선별진료소 운영모델 또한 다양화하고 있습니다. </p>

						<div class="box_nh mgt8">
							<div class="bn_t"><p>선별진료소 안내</p></div>
							<div class="bn_b">
								<p class="s_descript mgt8">
									가까운 선별진료소는 1339콜센터에서 안내받을 수 있으며, 카카오맵, Tmap 등에서도 ‘선별진료소’를 검색하면 자동으로 가까운 선별진료소가 안내됩니다.<br />
									<a href="http://www.mohw.go.kr/react/popup_200128.html" title="새창" target="_blank" class="s_link_text uline"><span>선별진료소 바로가기</span></a>
								</p>
								<p class="s_descript ta_c"><strong class="w_bold">자동차 이동형(Drive Thru) 선별진료소</strong></p>
								<div class="image_list cnt2-2-1 img_ratio mini mgt8">
									<ul>
										<li>
											<div>
												<div class="il_img">
													<img src="/static/image/content/baroview_photo01.png" alt="자동차 이동형(Drive Thru) 선별진료소" />
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="il_img">
													<img src="/static/image/content/baroview_photo02.png" alt="자동차 이동형(Drive Thru) 선별진료소" />
												</div>
											</div>
										</li>
									</ul>
								</div>
								<p class="s_descript ta_c"><strong class="w_bold">도보 이동형(Walk Thru) 선별진료소</strong></p>
								<div class="image_list cnt2-2-1 img_ratio mini mgt8">
									<ul>
										<li>
											<div>
												<div class="il_img">
													<img src="/static/image/content/baroview_photo03.png" alt="도보 이동형(Walk Thru) 선별진료소" />
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="il_img">
													<img src="/static/image/content/baroview_photo04.png" alt="도보 이동형(Walk Thru) 선별진료소" />
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<h6 class="s_title_in3">진단검사 </h6>
						<p class="s_descript">진단검사를 실시하는 곳은 총 118개소로, 공공기관 23개, 의료기관 81개, 수탁검사기관 14개이고, 진단시약은 4월 현재까지 총 5개가 긴급사용승인 되었습니다.<br />그 간 검사기관 및 긴급사용 진단시약을 확대한 결과, 최대 하루 검사 가능역량이 2월 기준 3천명에서 4월 현재 약 2만명까지 확대되었습니다.</p>

						<h5 class="s_title_in2">역학조사 및 접촉자 격리를 통한 확산 차단</h5>
						<h6 class="s_title_in3">역학조사</h6>
						<p class="s_descript">환자 발생 시 중앙 &middot; 지자체는 신속한 역학조사를 통해 감염원을 추적하고 접촉자를 격리하고 있습니다.</p>
						<p class="s_descript">역학조사 시 환자 인터뷰를 통해 동선 등 기본적인 정보를 파악하고, 의료진 및 가족 인터뷰가 추가적으로 이루어지기도 합니다. 조사 단계에서 파악된 정보의 보완이 필요하다고 판단되는 경우, 보다 객관적인 정보(의무기록, 핸드폰 위치정보, CCTV, 신용카드 기록 등)를 수집‧확인할 수 있습니다. </p>
						<p class="s_descript">수집된 정보를 바탕으로 확인된 접촉자는 보건교육, 증상모니터링과 함께 자가격리 조치를 받게 되며, 추가 감염을 막기 위해 확진자의 동선은 홈페이지 등을 통해 공개하고 있습니다. </p>
						<h6 class="s_title_in3">접촉자 관리</h6>
						<p class="s_descript">
							역학조사를 통해 환자의 동선과 감염경로를 중심으로 확인된 가족, 동거인 등 접촉자들은 확진환자 최종접촉일 다음날부터 최대 잠복기(14일) 동안 자가격리하며, 코로나 19 의심증상이 발생하는지에 대한 모니터링을 받게 됩니다.<br />
							<span class="txt_ntc">※ 격리기간 : 최종접촉일로부터 만14일이 되는 날(최종접촉일+14)의 24:00까지 격리<br />(예를들어, 4월 1일 확진자와 최종접촉한 경우 만14일이 되는 15일의 24:00시까지 격리 의무기간으로 통보)</span>							
						</p>
						<p class="s_descript">자가격리자는 1:1 전담 관리를 통해 행정안전부와 지방자치단체가 철저하게 관리합니다. 자가격리자는 증상 여부와 관계없이 14일간 출국 금지되며, 자가격리 위반 시에는 1천 만원 이하 벌금이나 1년 이하 징역을 부과합니다.</p>
						
						<!-- e: content -->						

                        
                        </div>
                    </div>
                  </div>
                        
	</div>








<jsp:include page="/footer.do"/>