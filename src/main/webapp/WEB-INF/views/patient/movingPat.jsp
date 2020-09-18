<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
                                  <li><a href="/movingPat.do" >확진환자 이동경로</a></li>
                              </ul>
                          </div>
                          <div class="st_title">
                              <div class="fl_l">
                                  <h3>확진환자 이동경로</h3>
                              </div>
                          </div>
                      </div>

                      <!-- s: content -->
					<div class="box_line2">
						<ul class="s_listin_dot">
							<li><span class="w_bold">"확진환자의 이동경로 등 정보 공개 안내(3판)('20.6.30.)"</span>에 따라  확진자가 마지막 접촉자와 접촉한 날로부터 14일 경과 시, 이동경로에 대한 부분은 공개되지 않음을 알려드립니다. </li>
						</ul>
						<div class="etc_box mgt8">
							<strong class="tit">※ 집단발생 관련 반복대량 노출장소 현황 <br class="p_dp_n t_dp_n" />(2020년 9월 22일 00시 기준)</span></strong>
							<p class="notice">해당 시간대에 아래 시설을 방문하신 분은 증상이 없어도 진단검사를 꼭 받아주세요.</p>				
							<div class="data_table midd">
								<table class="midsize big">
									<caption><span class="hdn">집단발생 관련 반복대량 노출장소 현황표 - 지역(시,구), 유형, 상호명(주소), 노출일자, 소독여부 로 구성</span></caption>
									<colgroup>
										<col style="width:11%;">
										<col style="width:15%;">
										<col style="width:15%;">
										<col style="width:31%;">
										<col style="width:15%;">
										<col style="width:13%;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="2">지역</th>
											<th scope="col">유형</th>
											<th scope="col">상호명<br />(주소)</th>
											<th scope="col">노출<br />일자</th>
											<th scope="col">소독<br />여부</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>광주</td>
											<td>북구</td>
											<td>시장</td>
											<td>말바우시장 (광주 북구 동문대로85번길 62)</td>
											<td>8/22~9/4</td>		
											<td>완료</td>									
									</tbody>
								</table>
							</div>
							<p class="s_descript"><span class="txt_ntc">* 발생 상황 정보를 신속 · 투명히 알리기 위해 위 명단을 공개하며, 추가 역학조사 결과 등에 따라 수정 및 보완될 수 있음</span></p>
							<ul class="s_listin_dot">
								<li>추가 정보는 공식 브리핑 및 지자체별 동향 정보로 확인 하시기 바랍니다.</li>
							</ul>
						</div>
					</div>
					
					<!-- 공공누리 표시 -->

<div class="copykogl type1">
	<div class="copyimg">		
			<span class="hdn">공공누리 제1유형</span>
	
	</div>
	<p class="copytext">
		코로나바이러스감염증-19가 창작한 
		<strong>"확진환자 이동경로"</strong> 
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
</form>



<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-159814989-1');
</script>




<jsp:include page="/footer.do"/>