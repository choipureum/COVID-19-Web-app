<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.do"/>


<div class="container" style="background:white;"><!-- main_container -->
			<div>
				<div id="content" class="content">
					<div>

					<div class="sub_top">
                            <div class="st_navigation">
                                <ul>
                                    <li><a href="/main.do"><span class="hdn">홈</span></a></li>
                                    <li><a href="/domesticPat.do" >발생동향</a></li>
                                     <li><a href="/domesticPat.do" >국내 발생 현황</a></li>
                                </ul>
                            </div>
                            <div class="st_title">
                                <div class="fl_l">
                                    <h3>국내 발생 현황</h3>
                                </div>
                            </div>
                        </div>

                        <!-- s: content -->                          
                        <h4 class="s_title_in2">국내 발생 현황</h4>                        
                        <p class="s_descript">코로나바이러스감염증-19 국내 발생현황</p>
                        
                        <h5 class="s_title_in3">누적 확진자 현황 <span class="t_date">(9.6. 00시 기준)</span></h5>
						<div class="caseTable">
							<div>
								<strong class="ca_top">확진환자</strong>
								<ul class="ca_body">
									<li>
										<dl>
											<dt class="ca_subtit">누적</dt>
											<dd class="ca_value">22,783</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt class="ca_subtit">전일대비</dt>
											<dd class="ca_value">
												<ul>
													<li>
														<strong class="inner_tit sum">소계</strong>
														<p class="inner_value">+ 126</p>
													</li>
													<li>
														<strong class="inner_tit">해외유입</strong>
														<p class="inner_value">17</p>
													</li>
													<li>
														<strong class="inner_tit">국내발생</strong>
														<p class="inner_value">109</p>
													</li>
												</ul>
											</dd>
										</dl>
									</li>
								</ul>	
							</div>
							<div>
								<strong class="ca_top">격리해제</strong>
								<ul class="ca_body">
									<li>
										<dl>
											<dt class="ca_subtit">누적</dt>
											<dd class="ca_value">19,771</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt class="ca_subtit">전일대비</dt>
											<dd class="ca_value">
												<span class="txt_ntc">+ 228</span>
											</dd>
										</dl>
									</li>
								</ul>	
							</div>
							<div>
								<strong class="ca_top">격리중</strong>
								<ul class="ca_body">
									<li>
										<dl>
											<dt class="ca_subtit">누적</dt>
											<dd class="ca_value">2,635</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt class="ca_subtit">전일대비</dt>
											<dd class="ca_value">
												<span class="txt_ntc">- 107</span>
											</dd>
										</dl>
									</li>
								</ul>	
							</div>
							<div>
								<strong class="ca_top">사망</strong>
								<ul class="ca_body">
									<li>
										<dl>
											<dt class="ca_subtit">누적</dt>
											<dd class="ca_value">377</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt class="ca_subtit">전일대비</dt>
											<dd class="ca_value">
												<span class="txt_ntc">+ 5</span>
											</dd>
										</dl>
									</li>
								</ul>	
							</div>
						</div>                        
                        
                        
                        <!--20200415 추가 시작-->
                        <h5 class="s_title_in3">해외유입 환자현황 <span class="t_date">(9.22 00시 기준)</span></h5>						
						<div class="data_table mgt16">
						  <table class="num">
							<caption><span class="hdn">해외유입 환자현황표 - 구분, 합계, 유입국가(중국, 중국외 아시아, 유럽, 미주, 아프리카), 확인단계(검역 단계, 지역사회), 국적(내국인, 외국인)으로 구성</span></caption>
							<colgroup>
								<col style="width:25%;">
								<col style="width:25%;">
								<col style="width:16.666%;">
								<col style="width:16.666%;">
								<col style="width:16.666%;">
							</colgroup>
							<thead>
							<tr>
							  <th scope="col" colspan="2">구분</th>
							  <th scope="col">신규</th>
							  <th scope="col">누계</th>
							  <th scope="col">(비율)</th>
							</tr>
							</thead>
							<tbody>
								<tr class="sumline">
								  <th scope="row"  colspan="2">합계</th>
							  
					          
								  <td>17</td>
								  <td colspan="2">3,063</td>
							  
							  
								</tr>
							  
					          
								<tr>
								
								  <th scope="row" rowspan="6">유입국가</th>
								
								  <th scope="row">중국</th>
								  <td>0</td>
								  <td>23</td>
								  <td>(0.8%)</td>
								</tr>
							 
								<tr>
								
								  <th scope="row">중국외아시아</th>
								  <td>11</td>
								  <td>1,335</td>
								  <td>(46.2%)</td>
								</tr>
							 
								<tr>
								
								  <th scope="row">유럽</th>
								  <td>1</td>
								  <td>557</td>
								  <td>(19.3%)</td>
								</tr>
							 
								<tr>
								
								  <th scope="row">미주</th>
								  <td>3</td>
								  <td>894</td>
								  <td>(30.9%)</td>
								</tr>
							 
								<tr>
								
								  <th scope="row">아프리카</th>
								  <td>0</td>
								  <td>78</td>
								  <td>(2.7%)</td>
								</tr>
							 
								<tr>
								
								  <th scope="row">호주</th>
								  <td>0</td>
								  <td>5</td>
								  <td>(0.2%)</td>
								</tr>
							 
							 
							 
					         						
								<tr>
								
								  <th scope="row" rowspan="2">확인단계</th>
								
								  <th scope="row">검역단계</th>
								  <td>4</td>
								  <td>1,376</td>
								  <td>(47.6%)</td>
								</tr>
													
								<tr>
								
								  <th scope="row">지역사회</th>
								  <td>11</td>
								  <td>1,516</td>
								  <td>(52.4%)</td>
								</tr>
							
							
							
					         						
								<tr>
								
								  <th scope="row" rowspan="2">국적</th>
								
								 <th scope="row">내국인</th>
								  <td>9</td>
								  <td>1,832</td>
								  <td>(63.3%)</td>
								</tr>
													
								<tr>
								
								 <th scope="row">외국인</th>
								  <td>6</td>
								  <td>1,060</td>
								  <td>(36.7%)</td>
								</tr>
							
								
							</tbody>
						  </table>
						</div>                        
                        <!-- 20200415 추가 끝// -->
                        
                        <h5 class="s_title_in3">누적 검사현황 <span class="t_date">(9.22. 00시 기준)</span></h5>
                        <div class="data_table mgt16 mini">
	                        <table class="num minisize">
	                            <caption><span class="hdn">누적 검사현황 - 검사완료(확진환자수 (격리중, 격리해제, 사망, 소계), 결과음성, 소계), 검사중, 합계로 구성</span></caption>
	                            <colgroup>
	                            	<col style="width:12.5%"/>
	                            	<col style="width:12.5%"/>
	                            	<col style="width:10%"/>
	                            	<col style="width:12.5%"/>
	                            	<col style="width:12.5%"/>
	                            	<col style="width:12.5%"/>
	                            	<col style="width:12.5%"/>
	                            	<col style="width:15%"/>                                
	                            </colgroup>
	                            <thead>
	                            	<tr>
	                                	<th colspan="6">검사완료</th>
	                                    <th rowspan="3">검사중</th>
	                                    <th rowspan="3">합계</th>
	                                </tr>
	                                <tr>
	                                	<th colspan="4">확진환자수</th>
	                                    <th rowspan="2">결과<br/>음성</th>
	                                    <th rowspan="2">소계</th>
	                                </tr>
	                                <tr>
	                                	<th>격리중</th>
	                                    <th>격리해제</th>
	                                    <th>사망</th>
	                                    <th>소계</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<tr>
	                                	<td>2,635</td>
	                                	<td>19,771</td>
	                                	<td>377</td>
	                                	<td>22,783</td>
	                                	<td>2,158,179</td>
	                                	<td>2,180,962</td>
	                                	<td>25,403</td>
	                                	<td>2,206,365</td>
	                                </tr>
	                            </tbody>
	                         </table>    
                        </div>                        
                        
                        <div class="liveMoveChart mgt16">
                        	<div>
                        		<div class="title"><h6 class="s_title_in3">확진환자 지역별 비율 <span class="t_date">(9.22 00시 기준)</span></h6></div>
                        		
                        		<div class="c_chart c_chart_rpr_B">
									<div class="cc_graph">
										<canvas id="regional_patient_ratio_B"></canvas>
									</div>
								</div>
                        	</div>
                        	<div>
                        		<div class="title"><h6 class="s_title_in3">감염경로별 확진자 비율 <span class="t_date">(9.22. 00시 기준)</span></h6></div>
                        		                       		
                        		<div class="c_chart c_chart_gir">
									<div class="cc_graph">
										<canvas id="group_incidence_ratio"></canvas>
									</div>
								</div>
                        	</div>                        	
                        </div>
      
						
						<h5 class="s_title_in3">감염경로구분에 따른 신규확진자 현황</h5>
                        <div class="c_chart c_chart_dp">
				            <div class="cc_graph">
				                <canvas id="daily_patient"></canvas>
				                <div class="axis_label">
									<div class="al_y_l"><em>(명)</em></div>
								</div>
				            </div>
				        </div>

						
						<h5 class="s_title_in3">일일 및 누적 확진환자 추세</h5>
						<!-- <div class="live_cpChart">
							<div class="live_pdata1">
								<div class="box_image"></div>				
							</div>						
						</div> -->
						
						<div class="c_chart c_chart_pt">
							<div class="cc_graph">
								<canvas id="patient_trend"></canvas>
								<div class="axis_label">
									<div class="al_y_l"><span class="cca_total">누적 확진환자</span><em>(명)</em></div>
									<div class="al_y_r"><span class="cca_day">일 확진환자</span class="cca_total"><em>(명)</em></div>
								</div>
							</div>
							<div class="cc_legend">
								<div class="ccl_total"><i></i><span>누적 확진환자</span></div>
								<div class="ccl_day"><i></i><span>일 확진환자</span></div>
							</div>
						</div>
						
                        <div class="hdn">
                        	<table>
                        		<caption>일일 및 누적확진환자 추세 - 날짜, 누적확진환자, 일일확진환자 수로 구성</caption>
                        		<thead>
                        			<tr><th scope="col">날짜</th><th scope="col">누적 확진환자수</th><th scope="col">일일 확진환자수</th></tr>
                        		</thead>
                        		<tbody>
                        		
									
										
									
										
											<tr><td>20200916</td><td>22055</td><td>118</td></tr>
										
									
										
											<tr><td>20200917</td><td>22176</td><td>99</td></tr>
										
									
										
											<tr><td>20200918</td><td>22285</td><td>98</td></tr>
										
									
										
											<tr><td>20200919</td><td>22391</td><td>91</td></tr>
										
									
										
											<tr><td>20200920</td><td>22504</td><td>105</td></tr>
										
									
										
											<tr><td>20200921</td><td>22657</td><td>145</td></tr>
										
									
										
											<tr><td>20200922</td><td>22783</td><td>109</td></tr>
										
									
								
                        		</tbody>
                        	</table>
                        </div>

						<h5 class="s_title_in3 mgt24">확진환자 내 일일 및 누적 격리해제 추세</h5>
						<!-- <div class="live_cpChart">
							<div class="live_pdata2">
								<div class="box_image"></div>					
							</div>							
						</div> -->
						
						<div class="c_chart c_chart_ct">
							<div class="cc_graph">
								<canvas id="complete_trend"></canvas>
								<div class="axis_label">
									<div class="al_y_l"><span class="cca_total">누적 격리해제</span><em>(명)</em></div>
									<div class="al_y_r"><span class="cca_day">일 격리해제</span><em>(명)</em></div>
								</div>
							</div>
							<div class="cc_legend">
								<div class="ccl_total"><i></i><span>누적 격리해제</span></div>
								<div class="ccl_day"><i></i><span>일 격리해제</span></div>
							</div>
						</div>
						
                        <div class="hdn">
                        	<table>
                        		<caption>확진환자 내 일일 및 누적 격리해제 추세 - 날짜, 누적확진환자, 일일확진환자 수로 구성</caption>
                        		<thead>
                        			<tr><th scope="col">날짜</th><th scope="col">누적 격리해제</th><th scope="col">일일 격리해제</th></tr>
                        		</thead>
                        		<tbody>
                        			
									
										
									
										
											<tr><td>20200916</td><td>18029</td><td>413</td></tr>
										
									
										
											<tr><td>20200917</td><td>18226</td><td>197</td></tr>
										
									
										
											<tr><td>20200918</td><td>18489</td><td>263</td></tr>
										
									
										
											<tr><td>20200919</td><td>18873</td><td>389</td></tr>
										
									
										
											<tr><td>20200920</td><td>19310</td><td>432</td></tr>
										
									
										
											<tr><td>20200921</td><td>19543</td><td>233</td></tr>
										
									
										
											<tr><td>20200922</td><td>19771</td><td>228</td></tr>
										
																
                        		</tbody>
                        	</table>
                        </div>
                        
                        <div class="board_top mgt16">							
							<div class="fl_l">
								<h5 class="s_title_in3">확진자 성별 현황<span class="title_info">(9.22 00시 기준)</span></h5>
							</div>
						</div>
						<div class="data_table">
                        	<table class="num">
                        		<caption><span class="hdn">확진자 성별현황 - 구분, 확진자(%), 사망자(%), 치명률(%) 로 구성</span></caption>
								<colgroup>
									<col style="width:20%;">
									<col style="width:26.666%;">
									<col style="width:26.666%;">
									<col style="width:26.666%;">
								</colgroup>
                        		<thead>
									<tr>
										<th scope="col">구분</th>
										<th scope="col">확진자(%)</th>
										<th scope="col">사망자(%)</th>
										<th scope="col">치명률(%)</th>
									</tr>
                        		</thead>
                        		<tbody>
                       			
								
									<tr>
										<th scope="row">남성</th>
										<td><span>10,423</span>&nbsp;<span class="txt_clr_nh">(45.75)</span></td>
										<td><span>198</span>&nbsp;<span class="txt_clr_nh">(52.52)</span></td>
										<td><span class="txt_clr_nh">1.9</span></td>
									</tr>	
								
									<tr>
										<th scope="row">여성</th>
										<td><span>12,360</span>&nbsp;<span class="txt_clr_nh">(54.25)</span></td>
										<td><span>179</span>&nbsp;<span class="txt_clr_nh">(47.48)</span></td>
										<td><span class="txt_clr_nh">1.45</span></td>
									</tr>	
								
																
                        		</tbody>
                        	</table>
						</div>

						<p class="i_descript mgt8 ta_r"><span class="txt_ntc_bold">*</span>  치명률 = 사망자수 / 확진자수 × 100</p>

                        <div class="board_top mgt16">							
							<div class="fl_l">
								<h5 class="s_title_in3">확진자 연령별 현황<span class="title_info">(9.22 00시 기준 )</span></h5>
							</div>
						</div>
						<div class="data_table">
                        	<table class="num">
                        		<caption><span class="hdn">확진자 연령별 현황 - 구분, 확진자(%), 사망자(%), 치명률(%) 로 구성</span></caption>
								<colgroup>
									<col style="width:20%;">
									<col style="width:26.666%;">
									<col style="width:26.666%;">
									<col style="width:26.666%;">
								</colgroup>
                        		<thead>
									<tr>
										<th scope="col">구분</th>
										<th scope="col">확진자(%)</th>
										<th scope="col">사망자(%)</th>
										<th scope="col">치명률(%)</th>
									</tr>
                        		</thead>
                        		<tbody>
                        		
								
									<tr><th scope="row">80 이상</th><td><span>923</span>&nbsp;<span class="txt_clr_nh">(4.05)</span></td><td><span>194</span>&nbsp;<span class="txt_clr_nh">(51.46)</span></td><td><span class="txt_clr_nh">21.02</span></td></tr>
								
									<tr><th scope="row">70-79</th><td><span>1,792</span>&nbsp;<span class="txt_clr_nh">(7.87)</span></td><td><span>118</span>&nbsp;<span class="txt_clr_nh">(31.30)</span></td><td><span class="txt_clr_nh">6.58</span></td></tr>
								
									<tr><th scope="row">60-69</th><td><span>3,582</span>&nbsp;<span class="txt_clr_nh">(15.72)</span></td><td><span>42</span>&nbsp;<span class="txt_clr_nh">(11.14)</span></td><td><span class="txt_clr_nh">1.17</span></td></tr>
								
									<tr><th scope="row">50-59</th><td><span>4,204</span>&nbsp;<span class="txt_clr_nh">(18.45)</span></td><td><span>17</span>&nbsp;<span class="txt_clr_nh">(4.51)</span></td><td><span class="txt_clr_nh">0.4</span></td></tr>
								
									<tr><th scope="row">40-49</th><td><span>3,044</span>&nbsp;<span class="txt_clr_nh">(13.36)</span></td><td><span>4</span>&nbsp;<span class="txt_clr_nh">(1.06)</span></td><td><span class="txt_clr_nh">0.13</span></td></tr>
								
									<tr><th scope="row">30-39</th><td><span>2,785</span>&nbsp;<span class="txt_clr_nh">(12.22)</span></td><td><span>2</span>&nbsp;<span class="txt_clr_nh">(0.53)</span></td><td><span class="txt_clr_nh">0.07</span></td></tr>
								
									<tr><th scope="row">20-29</th><td><span>4,647</span>&nbsp;<span class="txt_clr_nh">(20.4)</span></td><td><span>0</span>&nbsp;<span class="txt_clr_nh">(0.00)</span></td><td><span class="txt_clr_nh">-</span></td></tr>
								
									<tr><th scope="row">10-19</th><td><span>1,259</span>&nbsp;<span class="txt_clr_nh">(5.53)</span></td><td><span>0</span>&nbsp;<span class="txt_clr_nh">(0.00)</span></td><td><span class="txt_clr_nh">-</span></td></tr>
								
									<tr><th scope="row">0-9</th><td><span>547</span>&nbsp;<span class="txt_clr_nh">(2.4)</span></td><td><span>0</span>&nbsp;<span class="txt_clr_nh">(0.00)</span></td><td><span class="txt_clr_nh">-</span></td></tr>
								
									
                        		</tbody>
                        	</table>
						</div>
						<p class="i_descript mgt8 ta_r"><span class="txt_ntc_bold">*</span>  치명률 = 사망자수 / 확진자수 × 100</p>
												
						<!-- 공공누리 표시 -->

<div class="copykogl type1">
	<div class="copyimg">		
			<span class="hdn">공공누리 제1유형</span>	
	</div>
	<p class="copytext">
		코로나바이러스감염증-19가 창작한 
		<strong>"국내 발생 현황"</strong> 
		저작물은		
			 공공누리의 <strong>제1유형 (출처표시, 상업적 이용가능, 변경 가능)</strong>			
				에 따라 이용할 수 있습니다.<br />
				텍스트 데이터는 공공누리 유형조건에 따라 자유이용이 가능합니다. 단, 사진, 이미지, 일러스트, 동영상 등의 일부 자료는 코로나바이러스감염증-19가 저작권 전부를 갖고 있지 아니하므로, 자유롭게 이용하기 위해서는 반드시 해당 저작권자의 허락을 받으셔야 합니다.
	</p>
</div>  												
                        <!-- e: content -->                                             
                        </div>
                    </div>
                  </div>
                        
	</div>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-159814989-1');
</script>
	<script>
		$(function(){
			// 지역별 확진자 비율
			RPR_B_data = {
			    label: [],
			    figure: []
			};			
				RPR_B_data.label.push("대구");
				RPR_B_data.figure.push("7120");
			
				RPR_B_data.label.push("기타");
				RPR_B_data.figure.push("9257");
			
				RPR_B_data.label.push("서울");
				RPR_B_data.figure.push("4904");
			
				RPR_B_data.label.push("경기");
				RPR_B_data.figure.push("4089");
			
				RPR_B_data.label.push("경북");
				RPR_B_data.figure.push("1502");
			
			
// 			// 집단 별 확진자 비율
// 			GIR_data = {
// 			    label: [],
// 			    figure: []
// 			};
			
// 			GIR_data.label.push("신천지 관련");
// 			GIR_data.label.push("기타 집단발생");
// 			GIR_data.label.push("산발적 발생");
			
// 			GIR_data.figure.push("");
// 			GIR_data.figure.push("");
// 			GIR_data.figure.push("");

			//감염경로별 확진자 현황
			TC_data = {
			    label: [],
			    figure: []
			};
			
			
				TC_data.label.push("집단발병");
				TC_data.figure.push("8142");
			
				TC_data.label.push("신천지관련");
				TC_data.figure.push("5214");
			
				TC_data.label.push("해외유입");
				TC_data.figure.push("3046");
			
				TC_data.label.push("기타");
				TC_data.figure.push("3222");
			
				TC_data.label.push("조사중");
				TC_data.figure.push("2802");
			
				TC_data.label.push("해외유입관련");
				TC_data.figure.push("231");
			
			
			// 주간확진자 동향
			PT_data = {
					date: [],
				    total: [],
				    daily: []
			};
			
			
				if("0" != 0){
					PT_data.date.push("20200830".substr(4,2) + "." + "20200830".substr(6,2));
					PT_data.total.push("19699");
					PT_data.daily.push("19699" - "0");
				}
			
				if("19699" != 0){
					PT_data.date.push("20200831".substr(4,2) + "." + "20200831".substr(6,2));
					PT_data.total.push("19947");
					PT_data.daily.push("19947" - "19699");
				}
			
				if("19947" != 0){
					PT_data.date.push("20200901".substr(4,2) + "." + "20200901".substr(6,2));
					PT_data.total.push("20182");
					PT_data.daily.push("20182" - "19947");
				}
			
				if("20182" != 0){
					PT_data.date.push("20200902".substr(4,2) + "." + "20200902".substr(6,2));
					PT_data.total.push("20449");
					PT_data.daily.push("20449" - "20182");
				}
			
				if("20449" != 0){
					PT_data.date.push("20200903".substr(4,2) + "." + "20200903".substr(6,2));
					PT_data.total.push("20644");
					PT_data.daily.push("20644" - "20449");
				}
			
				if("20644" != 0){
					PT_data.date.push("20200904".substr(4,2) + "." + "20200904".substr(6,2));
					PT_data.total.push("20842");
					PT_data.daily.push("20842" - "20644");
				}
			
				if("20842" != 0){
					PT_data.date.push("20200905".substr(4,2) + "." + "20200905".substr(6,2));
					PT_data.total.push("21010");
					PT_data.daily.push("21010" - "20842");
				}
			
				if("21010" != 0){
					PT_data.date.push("20200906".substr(4,2) + "." + "20200906".substr(6,2));
					PT_data.total.push("21177");
					PT_data.daily.push("21177" - "21010");
				}
			
			
			// 주간격리해제 동향
			CT_data = {
					date: [],
				    total: [],
				    daily: []
			};
			
				if("0" != 0){
					CT_data.date.push("20200830".substr(4,2) + "." + "20200830".substr(6,2));
					CT_data.total.push("14903");
					CT_data.daily.push("14903" - "0");
				}
			
				if("14903" != 0){
					CT_data.date.push("20200831".substr(4,2) + "." + "20200831".substr(6,2));
					CT_data.total.push("14973");
					CT_data.daily.push("14973" - "14903");
				}
			
				if("14973" != 0){
					CT_data.date.push("20200901".substr(4,2) + "." + "20200901".substr(6,2));
					CT_data.total.push("15198");
					CT_data.daily.push("15198" - "14973");
				}
			
				if("15198" != 0){
					CT_data.date.push("20200902".substr(4,2) + "." + "20200902".substr(6,2));
					CT_data.total.push("15356");
					CT_data.daily.push("15356" - "15198");
				}
			
				if("15356" != 0){
					CT_data.date.push("20200903".substr(4,2) + "." + "20200903".substr(6,2));
					CT_data.total.push("15529");
					CT_data.daily.push("15529" - "15356");
				}
			
				if("15529" != 0){
					CT_data.date.push("20200904".substr(4,2) + "." + "20200904".substr(6,2));
					CT_data.total.push("15783");
					CT_data.daily.push("15783" - "15529");
				}
			
				if("15783" != 0){
					CT_data.date.push("20200905".substr(4,2) + "." + "20200905".substr(6,2));
					CT_data.total.push("16009");
					CT_data.daily.push("16009" - "15783");
				}
			
				if("16009" != 0){
					CT_data.date.push("20200906".substr(4,2) + "." + "20200906".substr(6,2));
					CT_data.total.push("16146");
					CT_data.daily.push("16146" - "16009");
				}
			
			
			// 국내일일확진자 - 해외유입 /국내발생
			DP_data = {
					date: [],
					oversea: [],
				    region: []
			};
			
			DP_data.oversea.push("10")
			DP_data.oversea.push("13")
			DP_data.oversea.push("14")
			DP_data.oversea.push("7")
			DP_data.oversea.push("9")
			DP_data.oversea.push("10")
			DP_data.oversea.push("15")
			
			DP_data.region.push("238")
			DP_data.region.push("222")
			DP_data.region.push("253")
			DP_data.region.push("188")
			DP_data.region.push("189")
			DP_data.region.push("158")
			DP_data.region.push("152")

			DP_data.date.push("08.31")
			DP_data.date.push("09.01")
			DP_data.date.push("09.02")
			DP_data.date.push("09.03")
			DP_data.date.push("09.04")
			DP_data.date.push("09.05")
			DP_data.date.push("09.06")
			
			RPRBChart();
// 			GIRChart();
			PTChart();
			CTChart();
			TCChart();
			DPChart();
		});
	</script>
<jsp:include page="/footer.do"/>

