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
                                    <li><a href="javascript:void(0);" >환자치료 및 관리</a></li>
                                </ul>
                            </div>
                            <div class="st_title">
                                <div class="fl_l">
                                    <h3>환자치료 및 관리</h3>
                                </div>
                            </div>
                        </div>
                        
						<!-- s: content -->
						
                       <h4 class="s_title_1">사례정의 및 검사대상 <span class="t_date">(2020.6.25. 기준)</span></h4>
						<div class="box_nh">
							<div class="bn_t"><p>사례정의 (2020.6.25. 기준)</p></div>
							<div class="bn_b">
								<p class="mgt16"><strong class="w_bold">확진환자</strong></p>
								<ul class="s_listin_dot">
									<li>임상양상에 관계없이 진단을 위한 검사기준에 따라 감염병 병원체 감염이 확인된 자</li>
								</ul>
								<p class="mgt16"><strong class="w_bold">의사환자</strong></p>
								<ul class="s_listin_dot">
									<li>확진환자와 접촉한 후 14일 이내에 코로나19 임상증상이 나타난 자</li>
								</ul>
								<p class="mgt16"><strong class="w_bold">조사대상 유증상자</strong></p>
								<ul class="s_listin_dot">
									<li>① 의사의 소견에 따라 코로나19 임상증상으로 코로나19가 의심되는 자</li>
									<li>② 해외 방문력이 있으며 귀국 후 14일 이내에 코로나19 임상증상이 나타난 자</li>
									<li>③ 코로나19 국내 집단발생과 역학적 연관성이 있으며, 14일 이내 코로나19 임상증상이 나타난 자</li>
								</ul>
							</div>
						</div>
						<div class="box_nh">
							<div class="bn_t"><p>코로나 19 의심증상 발생 시 행동수칙</p></div>
							<div class="bn_b">
								<ul class="s_listin_bar">
									<li>코로나 19 감염이 의심되면, 외출을 자제하고 보건소 또는 콜센터(‘1339 또는  ‘지역번호+120’)로 먼저 상담하시기 바랍니다. 외국어 지원을 해 드립니다. </li>
									<li>1339콜센터 안내에 따라 반드시 마스크를 착용한 후 선별진료소가 있는 의료기관을 방문하고, 방문 시 의료진에게 해외여행력을 알려주시기 바랍니다. </li>
								</ul>
							</div>
						</div>

						<h4 class="s_title_1">선별진료소 방문 및 검사</h4>
						<p class="s_descript">의사환자일 경우, 선별진료소(보건소 또는 의료기관)의 격리공간 또는 독립된 공간으로 이동하여 검체 채취가 진행됩니다. 검사결과가 음성일 경우에는 격리기간 유지(최종 접촉일 기준 14일) 후 격리가 해제되며, 검사결과가 양성일 경우에는 증상에 따라 적절한 치료를 받습니다. </p>
						<p class="s_descript">조사대상 유증상자의 경우도 의사환자와 동일하게 격리공간 또는 독립된 공간으로 이동하여 검체 채취가 진행되며, 검사결과가 양성일 경우 증상에 따라 적절한 치료를 받습니다. 다만, 검사결과가 음성일 경우에는 보건교육(외출 금지, 대중교통 이용 금지, 가족과 동선 겹치지 않기 등)을 받고 증상발현일 이후 14일까지 보건교육 내용을 준수할 것을 권고합니다. </p>

						<h4 class="s_title_1">확진환자 치료 및 지원 </h4>
						<p class="s_descript">한국 정부는 환자를 중증도에 따라 분류하고 중증환자는 입원 치료를 우선 제공하고, 입원이 필요하지 않은 확진자에 대해서는 생활치료센터에서 의료서비스 지원 및 증상 모니터링 등을 진행하고 있습니다.</p>
						<p class="s_descript">먼저, 보건소에서 확진자를 확인하고, 시도별로 구성된 환자관리반 의료진이 확진자 중증도를 4가지(경증·중등도·중증·최중증)로 분류합니다.</p>
						<p class="s_descript">중등도ㆍ중증ㆍ최중증 환자 등은 환자 상태에 따라 감염병전담병원, 국가지정 입원 치료기관 등에 치료 병상을 배정하여 신속히 입원 치료하게 됩니다. </p>
						<p class="s_descript">생활치료센터는 입원환자 중 임상증상이 호전되어 퇴원 후 시설 입소가 가능할 것으로 의사가 판단한 경우 또는 확진환자 중 증등도 분류에 따라 병원 치료가 필요하지 않다고 분류된 경우에 입소하는 시설입니다. 이 시설에서는 의료진이 1일 2회 이상 모니터링을 실시하고 증상 악화 시에는 의료기관으로 신속 이송하며, 증상 완화 시에는 격리해제 기준에 따라 퇴소하게 됩니다.</p>
						<p class="s_descript">
							정부는 국민들이 감염 예방에 적극 협조하고 생계에 지장을 받지 않도록, 확진환자 입원ㆍ치료비, 의심환자 등의 진단검사비는 전액 건강보험 또는 국비로 지원합니다.<br />
							<span class="txt_ntc">(*단, 담당의·지자체의 지시에 협조하지 않는 경우 격리입원치료비 지원이 제한됨)</span>
						</p>

						<h4 class="s_title_1">격리해제</h4>
						<p class="s_descript">확진환자는 임상경과기준 또는 검사기준이 충족되면 격리해제 됩니다.</p>
						<p class="s_descript"><strong class="w_bold">확진환자 중 증상이 있는 환자의 경우</strong></p>
						<ul class="s_listin_bar mgl20">
							<li><span class="txt_ntc_bold">임상경과기준</span>은 발병 후 10일 경과, 그리고 그 후 최소 72시간 동안 해열제를 복용하지 않고 발열이 없어야하며 임상증상이 호전되는 추세를 보여야 합니다.	</li>
							<li><span class="txt_ntc_bold">검사기준</span>은 발병 후 7일 경과, 그리고 해열제를 복용하지 않고 발열이 없어야 하며, 임상증상이 호전되는 추세여야 합니다. 그 후 PCR 검사 결과, 24시간 이상의 간격으로 2회 연속 음성이 확인되어야 합니다.</li>
						</ul>
						<p class="s_descript"><strong class="w_bold">확진환자 중 증상이 없는 환자의 경우</strong></p>
						<ul class="s_listin_bar mgl20">
							<li><span class="txt_ntc_bold">임상경과기준</span>은 확진일로부터 10일 경과, 그리고 이 기간 동안 임상증상이 발생하지 않아야 합니다.</li>
							<li><span class="txt_ntc_bold">검사기준</span>은 확진 후 7일 경과, 그리고 PCR 검사 결과 24시간 이상의 간격으로 연속 2회 음성이 확인되어야 합니다.</li>
						</ul>

 
                       <!-- e: content -->

                        
                        </div>
                    </div>
                  </div>
                        
	</div>


<jsp:include page="/footer.do"/>