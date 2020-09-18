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
                                    <li><a href="index.html"><span class="hdn">홈</span></a></li>
                                    <li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/bdBoardList.do', '1', '11', '');">발생동향</a></li>
                                    <li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/bdBoardList.do', '1', '14', '');">국외 발생 현황</a></li>
                                </ul>
                            </div>
                            <div class="st_title">
                                <div class="fl_l">
                                    <h3>국외 발생 현황</h3>
                                </div>
                            </div>
                        </div>

                        <!-- s: content -->                        
                       <h4 class="s_title_in2">국외 발생 현황</h4>
                     
						<h5 class="s_title_in3">전체 국가 발생 현황</h5>
						<p class="s_descript">코로나바이러스감염증-19 환자 총 30,010,484명 (사망 943,095 명) ( 09.22. 09시 기준)</p>
				
						<div class="box_toggle">
							<div class="btnarea">
								<p class="title_ac hdn">[전체 국가 현황표]</p>
								<button type="button" data-button="box_toggle" class="title_ac m">전체 국가 현황표</button>							
							</div>
							<div class="inner">
								<div class="data_table mgt16">
							<table class="num">
								<caption><span class="hdn">국외 발생현황표 - 지역 및 국가, 확진환자 발생수(사망)으로 구성</span></caption>
								<colgroup>
									<col style="width: 29%" />
									<col style="width: 29%" />
									<col style="width: 42%" />
								</colgroup>
								<thead>
									<tr>
										<th colspan="2" scope="col">지역 및 국가</th>
										<th scope="col">환자발생 수 (사망)</th>
									</tr>
								</thead>
								<tbody>
								
									
										
											
											
												
													
														<tr>
															<th rowspan="29" scope="row">아시아</th>
															<td class="w_bold">중국</td>
															<td>85,122명
															
														(사망 4,634)
														</td>
														</tr>
													
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">홍콩</td><td>4,857명
														
														(사망 94)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">대만</td><td>492명
														
														(사망 7)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">마카오</td><td>46명
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">일본</td><td>71,419명
														
														(사망 1,357)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">싱가포르</td><td>56,982명
														
														(사망 27)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">태국</td><td>3,438명
														
														(사망 58)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">말레이시아</td><td>9,385명
														
														(사망 128)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">베트남</td><td>1,049명
														
														(사망 35)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">인도</td><td>4,023,179명
														
														(사망 69,561)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">필리핀</td><td>232,072명
														
														(사망 3,737)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">캄보디아</td><td>274명
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">네팔</td><td>44,236명
														
														(사망 271)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">스리랑카</td><td>3,115명
														
														(사망 12)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">아프가니스탄</td><td>38,324명
														
														(사망 1,409)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">파키스탄</td><td>298,025명
														
														(사망 6,340)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">인도네시아</td><td>187,537명
														
														(사망 7,832)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">부탄</td><td>228명
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">몰디브</td><td>8,361명
														
														(사망 29)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">방글라데시</td><td>321,615명
														
														(사망 4,412)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">브루나이</td><td>145명
														
														(사망 3)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">몽골</td><td>310명
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">카자흐스탄</td><td>132,924명
														
														(사망 1,878)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">우즈베키스탄</td><td>43,169명
														
														(사망 338)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">키르기스스탄</td><td>44,316명
														
														(사망 1,061)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">동티모르</td><td>27명
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">미얀마</td><td>1,216명
														
														(사망 7)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">라오스</td><td>22명
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr>
														<td class="w_bold">타지키스탄</td><td>8,724명
														
														(사망 69)
														
														</td>
														</tr>
													
												 
											
											
											
											
											
											
											
											
											
											
												
													
														<tr>
															<th rowspan="18" scope="row">중동</th>
															<td class="w_bold">이란</td>
															<td>384,666명
															
															(사망 22,154)
															
															</td>
														</tr>
													
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">바레인</td><td>54,095명
														
														(사망 196)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">이집트</td><td>99,582명
														
														(사망 5,495)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">이라크</td><td>256,719명
														
														(사망 7,422)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">요르단</td><td>2,353명
														
														(사망 16)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">쿠웨이트</td><td>88,963명
														
														(사망 540)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">레바논</td><td>19,480명
														
														(사망 183)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">리비아</td><td>17,094명
														
														(사망 272)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">모로코</td><td>68,605명
														
														(사망 1,292)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">오만</td><td>86,380명
														
														(사망 705)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">카타르</td><td>119,864명
														
														(사망 202)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">사우디아라비아</td><td>319,932명
														
														(사망 4,049)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">시리아</td><td>3,041명
														
														(사망 127)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">튀니지</td><td>4,542명
														
														(사망 87)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">이스라엘</td><td>128,936명
														
														(사망 1,007)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">아랍에미리트</td><td>73,471명
														
														(사망 388)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">알제리</td><td>45,773명
														
														(사망 1,539)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">예멘</td><td>1,987명
														
														(사망 573)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
											
												
													
														<tr>
															<th rowspan="35" scope="row">아메리카</th>
															<td class="w_bold">미국</td>
															<td>6,242,039명
															
														(사망 188,501)
														</td>
														</tr>
													
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">캐나다</td><td>131,495명
														
														(사망 9,143)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">멕시코</td><td>629,409명
														
														(사망 67,326)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">파나마</td><td>94,914명
														
														(사망 2,046)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">온두라스</td><td>63,158명
														
														(사망 1,954)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">과테말라</td><td>77,040명
														
														(사망 2,825)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">코스타리카</td><td>44,458명
														
														(사망 460)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">엘살바도르</td><td>26,099명
														
														(사망 744)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">벨리즈</td><td>1,118명
														
														(사망 13)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">니카라구아</td><td>3,773명
														
														(사망 141)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">도미니카공화국</td><td>96,629명
														
														(사망 1,801)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">쿠바</td><td>4,266명
														
														(사망 100)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">자메이카</td><td>2,896명
														
														(사망 29)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">트리니다드토바고</td><td>2,030명
														
														(사망 30)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">아이티</td><td>8,326명
														
														(사망 212)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">바하마</td><td>2,386명
														
														(사망 50)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">바베이도스</td><td>177명
														
														(사망 7)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">앤티가바부다</td><td>95명
														
														(사망 3)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">그레나다</td><td>24명
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">세인트루시아</td><td>26명
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">세인트빈센트그레나딘</td><td>61명
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">도미니카연방</td><td>22명
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">세인트키츠네비스</td><td>17명
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">브라질</td><td>4,123,000명
														
														(사망 126,203)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">페루</td><td>676,848명
														
														(사망 29,554)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">에콰도르</td><td>117,175명
														
														(사망 6,674)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">칠레</td><td>420,434명
														
														(사망 11,551)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">콜롬비아</td><td>641,574명
														
														(사망 20,618)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">아르헨티나</td><td>451,198명
														
														(사망 9,468)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">볼리비아</td><td>118,781명
														
														(사망 5,288)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">우루과이</td><td>1,636명
														
														(사망 44)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">파라과이</td><td>19,959명
														
														(사망 373)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">베네수엘라</td><td>49,877명
														
														(사망 402)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">가이아나</td><td>1,401명
														
														(사망 44)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">수리남</td><td>4,215명
														
														(사망 73)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
											
												
													
														<tr>
															<th rowspan="49" scope="row">유럽</th>
															<td class="w_bold">이탈리아</td>
															<td>276,338명
															
														(사망 35,534)
														</td>
														</tr>
													
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">독일</td><td>251,058명
														
														(사망 9,329)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">프랑스</td><td>317,706명
														
														(사망 30,698)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">영국</td><td>344,164명
														
														(사망 41,549)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">스페인</td><td>498,989명
														
														(사망 29,418)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">오스트리아</td><td>29,055명
														
														(사망 735)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">크로아티아</td><td>11,428명
														
														(사망 195)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">핀란드</td><td>8,225명
														
														(사망 335)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">스웨덴</td><td>84,985명
														
														(사망 5,835)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">스위스</td><td>43,957명
														
														(사망 1,732)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">벨기에</td><td>87,080명
														
														(사망 9,901)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">덴마크</td><td>17,547명
														
														(사망 627)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">에스토니아</td><td>2,456명
														
														(사망 64)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">조지아</td><td>1,621명
														
														(사망 19)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">그리스</td><td>11,200명
														
														(사망 279)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">북마케도니아</td><td>14,762명
														
														(사망 606)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">노르웨이</td><td>11,120명
														
														(사망 264)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">루마니아</td><td>93,864명
														
														(사망 3,850)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">네덜란드</td><td>73,136명
														
														(사망 6,228)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">벨라루스</td><td>72,485명
														
														(사망 701)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">리투아니아</td><td>3,004명
														
														(사망 86)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">산마리노</td><td>735명
														
														(사망 42)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">아제르바이잔</td><td>37,031명
														
														(사망 543)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">아이슬란드</td><td>2,135명
														
														(사망 10)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">모나코</td><td>147명
														
														(사망 1)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">룩셈부르크</td><td>6,854명
														
														(사망 124)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">아르메니아</td><td>44,649명
														
														(사망 895)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">아일랜드</td><td>29,534명
														
														(사망 1,777)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">체코</td><td>27,249명
														
														(사망 429)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">포르투갈</td><td>57,943명
														
														(사망 1,838)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">라트비아</td><td>1,416명
														
														(사망 35)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">안도라</td><td>1,215명
														
														(사망 53)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">폴란드</td><td>70,387명
														
														(사망 2,113)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">우크라이나</td><td>133,787명
														
														(사망 2,811)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">헝가리</td><td>7,382명
														
														(사망 621)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">보스니아 헤르체고비나</td><td>20,861명
														
														(사망 630)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">슬로베니아</td><td>3,088명
														
														(사망 129)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">리히텐슈타인</td><td>108명
														
														(사망 1)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">세르비아</td><td>31,772명
														
														(사망 721)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">슬로바키아</td><td>4,300명
														
														(사망 37)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">불가리아</td><td>16,775명
														
														(사망 658)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">몰타</td><td>1,984명
														
														(사망 13)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">몰도바</td><td>38,906명
														
														(사망 1,047)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">알바니아</td><td>9,967명
														
														(사망 306)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">사이프러스</td><td>1,498명
														
														(사망 21)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">터키</td><td>278,228명
														
														(사망 6,620)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">몬테네그로</td><td>5,379명
														
														(사망 106)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">코소보</td><td>13,867명
														
														(사망 541)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">러시아</td><td>1,020,310명
														
														(사망 17,759)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
											
												
													
														<tr>
															<th rowspan="4" scope="row">오세아니아</th>
															<td class="w_bold">호주</td>
															<td>26,136명
															
														(사망 737)
														</td>
														</tr>
													
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">뉴질랜드</td><td>1,416명
														
														(사망 24)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">피지</td><td>29명
														
														(사망 2)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">파푸아뉴기니</td><td>479명
														
														(사망 5)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
											
												
													
														<tr>
															<th rowspan="49" scope="row">아프리카</th>
															<td class="w_bold">나이지리아</td>
															<td>54,743명
															
														(사망 1,051)
														</td>
														</tr>
													
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">세네갈</td><td>13,881명
														
														(사망 289)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">카메룬</td><td>19,604명
														
														(사망 415)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">남아프리카공화국</td><td>635,078명
														
														(사망 14,678)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">토고</td><td>1,443명
														
														(사망 31)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">부르키나파소</td><td>1,386명
														
														(사망 55)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">DR콩고</td><td>10,148명
														
														(사망 259)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">코트디부아르</td><td>18,208명
														
														(사망 119)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">수단</td><td>13,189명
														
														(사망 823)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">에티오피아</td><td>56,516명
														
														(사망 880)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">가봉</td><td>8,601명
														
														(사망 53)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">가나</td><td>44,777명
														
														(사망 283)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">기니</td><td>9,649명
														
														(사망 61)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">케냐</td><td>34,884명
														
														(사망 589)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">나미비아</td><td>8,323명
														
														(사망 87)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">중앙아프리카공화국</td><td>4,729명
														
														(사망 62)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">콩고</td><td>4,628명
														
														(사망 102)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">적도기니</td><td>4,972명
														
														(사망 83)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">에스와티니</td><td>4,780명
														
														(사망 94)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">모리타니아</td><td>7,126명
														
														(사망 160)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">르완다</td><td>4,304명
														
														(사망 18)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">세이쉘</td><td>135명
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">베냉</td><td>2,213명
														
														(사망 40)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">라이베리아</td><td>1,306명
														
														(사망 82)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">탄자니아</td><td>509명
														
														(사망 21)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">지부티</td><td>5,387명
														
														(사망 60)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">감비아</td><td>3,120명
														
														(사망 99)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">잠비아</td><td>12,639명
														
														(사망 292)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">모리셔스</td><td>356명
														
														(사망 10)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">차드</td><td>1,023명
														
														(사망 77)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">니제르</td><td>1,177명
														
														(사망 69)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">카보베르데</td><td>4,200명
														
														(사망 41)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">짐바브웨</td><td>6,837명
														
														(사망 206)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">소말리아</td><td>3,332명
														
														(사망 98)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">마다가스카르</td><td>15,187명
														
														(사망 198)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">앙골라</td><td>2,876명
														
														(사망 115)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">에리트레아</td><td>330명
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">우간다</td><td>3,353명
														
														(사망 35)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">모잠비크</td><td>4,265명
														
														(사망 26)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">기니비사우</td><td>2,245명
														
														(사망 38)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">말리</td><td>2,814명
														
														(사망 126)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">보츠와나</td><td>2,002명
														
														(사망 8)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">브룬디</td><td>460명
														
														(사망 1)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">시에라리온</td><td>2,041명
														
														(사망 71)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">말라위</td><td>5,608명
														
														(사망 175)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">남수단</td><td>2,544명
														
														(사망 48)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">상투메프린시페</td><td>897명
														
														(사망 15)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">코모로</td><td>448명
														
														(사망 7)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
												
													
													
														<tr><td class="w_bold">레소토</td><td>1,148명
														
														(사망 31)
														</td></tr>
													
												 
											
											
											
											
											
											
											
											
											
											
												
													
														<tr>
															<th rowspan="1" scope="row">기타</th>
															<td class="w_bold">기타지역 영토</td>
															<td>94,457명
															
														(사망 969)
														</td>
														</tr>
													
													
												 
											
											
										
										<tr>
											<th colspan="2" scope="row">합계</th>
											<td class="w_bold">30,010,484명<br />(사망 943,095)</td>
										</tr>
								</tbody>
							</table>
								</div>
								 
								<div class="remark_area">
								<p>* 발생 지역 구분은 외교부 기준을 따름, 동북 &middot; 서남 &middot; 동남 &middot; 중앙아시아는 &#39;아시아&#39; 로 통일</p>

<p>* 스페인, 스웨덴: 보건부 통계 미발표</p>

<p>* 포르투갈: 보건부 통계 정정</p>
								</div>
								
								
								
<!-- 								<h6 class="s_title_in4">지역감염(local transmission) 분류 국가 : <br />총 162개 국가/영토/지역</h6> -->
<!-- 								<p class="m_descript pdl24"><a href="https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports/" target="_blank" title="새창이동" class="s_link_text"><span style="color:#0024ac; text-decoration:underline">※ 출처: WHO 상황보고서 (4.1)</span></a></p>						 -->
<!-- 								<p class="s_descript pdl24"> -->
<!-- 								가나, 가이아나, 건지섬, 과들루프, 과테말라, 괌, 그레나다, 그리스, 나이지리아, 남아프리카공화국, 네덜란드, 노르웨이, 뉴질랜드, 뉴칼레도니아, 니제르, 덴마크, 도미니카공화국, 도미니카연방, 독일, 대한민국,  라오스, 라이베리아, 라트비아, 러시아, 레바논, 루마니아, 룩셈부르크, 르완다, 리비아, 리투아니아, 마르티니크, 마다가스카르, 마요트, 말레이시아, 말리, 맨섬, 멕시코, 모나코, 모로코, 모리셔스, 모잠비크, 몬테네그로, 몰도바공화국, 몰디브, 몰타, 미국, 미국령 버진아일랜드, 미얀마, 바레인, 바베이도스, 바하마, 방글라데시, 버뮤다제도, 베네수엘라, 베트남, 벨기에, 벨라루스, 벨리즈, 보스니아 헤르체고비나, 볼리비아, 부르키나파소, 북마케도니아, 불가리아, 브라질, 브루나이, 사우디아라비아, 사이프러스, 산마리노, 세네갈, 세르비아, 세인트루시아, 스리랑카, 스웨덴, 스위스, 스페인, 슬로바키아, 슬로베니아, 싱가포르, 아랍에미리트, 아루바, 아르메니아, 아르헨티나, 아이슬란드, 아일랜드, 아제르바이잔, 아프가니스탄, 안도라, 알바니아, 알제리, 앵귈라, 에스토니아, 에콰도르, 에티오피아, 엘살바도르, 영국, 오만, 오스트리아, 온두라스, 요르단, 우간다, 우루과이, 우즈베키스탄, 우크라이나, 이라크, 이란, 이스라엘, 이집트, 이탈리아, 인도, 인도네시아, 일본, 자메이카, 잠비아, 저지섬, 적도기니, 조지아, 중국, 지부티, 지브롤터, 짐바브웨, 체코, 칠레, 카메룬, 카자흐스탄, 카타르, 캄보디아, 캐나다, 케냐, 코소보, 코스타리카, 코트디부아르, 콜롬비아, 쿠바, 쿠웨이트, DR콩고, 크로아티아, 키르기스스탄, 태국, 터크스케이케스제도, 터키, 토고, 튀니지, 트리니다드토바고, 파나마, 파라과이, 파키스탄, 팔레스타인, 페로제도, 페루, 포르투갈, 폴란드, 프랑스, 프랑스령 기아나, 프랑스령 레위니옹, 프랑스령 폴리네시아, 푸에르토리코, 피지, 핀란드, 필리핀, 헝가리, 호주                    -->
<!-- 								</p>									 -->
							</div>						
						</div>							

						
																		
						<!-- <div class="live_foreign">
							<div class="box_image mgt16">
								<img src="/static/image/main_chart/live_fo500_0312.png" alt="" />
							</div>
						</div> -->
						
										        

						<div class="board_top mgt16">							
							<div class="fl_l">
								 <h5 class="s_title_in3">주요 발생 국가 주간 동향 <span class="title_info">(누적발생 20만 이상 국가)</span></h5>		 
							</div>
						</div>
						
						
						<div class="mcs_tab tab_common">
				            <div class="tab_list">
				                <ul>
				                    <li><a>누적 확진환자</a></li>
				                    <li><a>일 확진환자</a></li>
				                </ul>
				            </div>
				            <div>
				                <div class="tab_content">
				                
				                	<div class="c_chart c_chart_nptb">
							            <div class="cc_graph">
							                <canvas id="national_patient_trend_B"></canvas>
							                <div class="axis_label">
									<div class="al_y_l"><!-- <em>(명)</em> --></div>
											</div>
							            </div>
							        </div>
							        
				                </div>
				                <div class="tab_content">
				                	
				                	<div class="c_chart c_chart_nptd">
							            <div class="cc_graph">
							                <canvas id="national_patient_trend_daily"></canvas>
							                <div class="axis_label">
									<div class="al_y_l"><!-- <em>(명)</em> --></div>
							                </div>
							            </div>
							        </div>
				                	
				                </div>
				            </div>
				        </div>
				        
												
						<div class="data_table mgt16 tbl_scrl_mini2 mini">
							<table class="num minisize">
								<caption><span class="hdn">국외 발생현황표 - 지역 및 국가, 확진환자 발생수(사망)으로 구성</span></caption>
								<colgroup>
									<col style="width: 11.2%" />
									<col style="width: 11.1%" />
									<col style="width: 11.1%" />
									<col style="width: 11.1%" />
									<col style="width: 11.1%" />
									<col style="width: 11.1%" />
									<col style="width: 11.1%" />
									<col style="width: 11.1%" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">국가/일</th>										
										<th scope="col">09.16</th>
										<th scope="col">09.17</th>
										<th scope="col">09.18</th>
										<th scope="col">09.19</th>
										<th scope="col">09.20</th>
										<th scope="col">09.21</th>
										<th scope="col">09.22</th>
										<th scope="col">누적<br />사망자수</th>
									</tr>
								</thead>
								<tbody>
								
								
										
											<tr>
												<th scope="row">미국</th>
												<td>5,993,668명</td>
												<td>6,027,111명</td>
												<td>6,071,971명</td>
												<td>6,111,485명</td>
												<td>6,146,524명</td>
												<td>6,198,996명</td>
												<td>6,242,039명</td>
												<td>(188,501명)</td>
											</tr>
										
											<tr>
												<th scope="row">브라질</th>
												<td>3,862,311명</td>
												<td>3,908,272명</td>
												<td>3,950,931명</td>
												<td>3,997,865명</td>
												<td>4,041,638명</td>
												<td>4,091,801명</td>
												<td>4,123,000명</td>
												<td>(126,203명)</td>
											</tr>
										
											<tr>
												<th scope="row">인도</th>
												<td>3,542,733명</td>
												<td>3,621,245명</td>
												<td>3,691,166명</td>
												<td>3,769,523명</td>
												<td>3,853,406명</td>
												<td>3,936,747명</td>
												<td>4,023,179명</td>
												<td>(69,561명)</td>
											</tr>
										
											<tr>
												<th scope="row">러시아</th>
												<td>990,326명</td>
												<td>995,319명</td>
												<td>1,000,048명</td>
												<td>1,005,000명</td>
												<td>1,009,995명</td>
												<td>1,015,105명</td>
												<td>1,020,310명</td>
												<td>(17,759명)</td>
											</tr>
										
											<tr>
												<th scope="row">페루</th>
												<td>639,435명</td>
												<td>647,166명</td>
												<td>652,037명</td>
												<td>657,129명</td>
												<td>657,129명</td>
												<td>670,145명</td>
												<td>676,848명</td>
												<td>(29,554명)</td>
											</tr>
										
											<tr>
												<th scope="row">콜롬비아</th>
												<td>590,520명</td>
												<td>599,914명</td>
												<td>607,938명</td>
												<td>615,168명</td>
												<td>624,069명</td>
												<td>633,339명</td>
												<td>641,574명</td>
												<td>(20,618명)</td>
											</tr>
										
											<tr>
												<th scope="row">남아프리카공화국</th>
												<td>622,551명</td>
												<td>625,056명</td>
												<td>627,041명</td>
												<td>628,259명</td>
												<td>630,595명</td>
												<td>633,015명</td>
												<td>635,078명</td>
												<td>(14,678명)</td>
											</tr>
										
											<tr>
												<th scope="row">멕시코</th>
												<td>595,841명</td>
												<td>599,560명</td>
												<td>606,036명</td>
												<td>610,957명</td>
												<td>616,894명</td>
												<td>623,090명</td>
												<td>629,409명</td>
												<td>(67,326명)</td>
											</tr>
										
											<tr>
												<th scope="row">스페인</th>
												<td>439,286명</td>
												<td>462,858명</td>
												<td>470,973명</td>
												<td>479,554명</td>
												<td>488,513명</td>
												<td>498,989명</td>
												<td>498,989명</td>
												<td>(29,418명)</td>
											</tr>
										
											<tr>
												<th scope="row">아르헨티나</th>
												<td>392,009명</td>
												<td>401,239명</td>
												<td>408,426명</td>
												<td>417,735명</td>
												<td>428,239명</td>
												<td>439,172명</td>
												<td>451,198명</td>
												<td>(9,468명)</td>
											</tr>
										
											<tr>
												<th scope="row">칠레</th>
												<td>409,974명</td>
												<td>411,726명</td>
												<td>413,145명</td>
												<td>414,739명</td>
												<td>416,501명</td>
												<td>418,469명</td>
												<td>420,434명</td>
												<td>(11,551명)</td>
											</tr>
										
											<tr>
												<th scope="row">이란</th>
												<td>373,570명</td>
												<td>375,212명</td>
												<td>376,894명</td>
												<td>378,752명</td>
												<td>380,746명</td>
												<td>382,772명</td>
												<td>384,666명</td>
												<td>(22,154명)</td>
											</tr>
										
											<tr>
												<th scope="row">영국</th>
												<td>334,467명</td>
												<td>335,873명</td>
												<td>337,168명</td>
												<td>338,676명</td>
												<td>340,411명</td>
												<td>342,351명</td>
												<td>344,164명</td>
												<td>(41,549명)</td>
											</tr>
										
											<tr>
												<th scope="row">방글라데시</th>
												<td>308,925명</td>
												<td>310,822명</td>
												<td>312,996명</td>
												<td>314,946명</td>
												<td>317,528명</td>
												<td>319,686명</td>
												<td>321,615명</td>
												<td>(4,412명)</td>
											</tr>
										
											<tr>
												<th scope="row">사우디아라비아</th>
												<td>314,821명</td>
												<td>315,772명</td>
												<td>316,670명</td>
												<td>317,486명</td>
												<td>318,319명</td>
												<td>319,141명</td>
												<td>319,932명</td>
												<td>(4,049명)</td>
											</tr>
										
											<tr>
												<th scope="row">프랑스</th>
												<td>277,943명</td>
												<td>281,025명</td>
												<td>286,007명</td>
												<td>293,024명</td>
												<td>300,181명</td>
												<td>309,156명</td>
												<td>317,706명</td>
												<td>(30,698명)</td>
											</tr>
										
											<tr>
												<th scope="row">파키스탄</th>
												<td>295,636명</td>
												<td>295,849명</td>
												<td>296,149명</td>
												<td>296,590명</td>
												<td>297,014명</td>
												<td>297,512명</td>
												<td>298,025명</td>
												<td>(6,340명)</td>
											</tr>
										
											<tr>
												<th scope="row">터키</th>
												<td>268,546명</td>
												<td>270,133명</td>
												<td>271,705명</td>
												<td>273,301명</td>
												<td>274,943명</td>
												<td>276,555명</td>
												<td>278,228명</td>
												<td>(6,620명)</td>
											</tr>
										
											<tr>
												<th scope="row">이탈리아</th>
												<td>268,218명</td>
												<td>269,214명</td>
												<td>270,189명</td>
												<td>271,515명</td>
												<td>272,912명</td>
												<td>274,644명</td>
												<td>276,338명</td>
												<td>(35,534명)</td>
											</tr>
										
											<tr>
												<th scope="row">이라크</th>
												<td>231,177명</td>
												<td>234,934명</td>
												<td>238,338명</td>
												<td>242,284명</td>
												<td>247,039명</td>
												<td>252,075명</td>
												<td>256,719명</td>
												<td>(7,422명)</td>
											</tr>
										
											<tr>
												<th scope="row">독일</th>
												<td>243,305명</td>
												<td>244,802명</td>
												<td>246,015명</td>
												<td>247,411명</td>
												<td>248,840명</td>
												<td>250,283명</td>
												<td>251,058명</td>
												<td>(9,329명)</td>
											</tr>
										
											<tr>
												<th scope="row">필리핀</th>
												<td>213,131명</td>
												<td>217,396명</td>
												<td>220,819명</td>
												<td>224,264명</td>
												<td>226,440명</td>
												<td>228,403명</td>
												<td>232,072명</td>
												<td>(3,737명)</td>
											</tr>
										
									
								</tbody>
							</table>						
						</div>

                        
                        <!-- 20200415 추가 시작 -->
						<div class="board_top mgt16">							
							<div class="fl_l">


								 <h5 class="s_title_in3">주요 국가 확진환자 및 사망자 현황비교<span class="title_info">(09.06 09시 기준)</span></h5>
								 
								 
							</div>
						</div>                          
                        <div class="data_table mgt8">
	                        <table class="num">
	                            <caption><span class="hdn">주요 국가 확진환자 및 사망자 현황 - 미국, 스페인, 이탈리아, 독일, 프랑스, 영국, 중국, 이란, 터키, 벨기에, 네덜란드, 러시아, 캐나다, 스위스, 브라질, 일본, 태국, 인도네시아, 필리핀, 베트남, 한국의 감염자, 감염발생률, 사망자, 사망발생률, 사망률로 구성</span></caption>
	                            <colgroup>
	                            	<col style="width:20%"/>
									<col style="width:16%"/>
	                            	<col style="width:16%"/>
									<col style="width:16%"/>
	                            	<col style="width:16%"/>
	                            	<col style="width:16%"/>
	                            </colgroup>
	                            <thead>
	                            	<tr>
	                                	<th scope="col" rowspan="2">국가</th>
	                                    <th scope="col" colspan="2">감염자</th>
	                                    <th scope="col" colspan="2">사망자</th>
	                                    <th scope="col" rowspan="2">사망률</th>
	                                </tr>
	                            	<tr>
	                                	<th scope="col">인원</th>
	                                    <th scope="col">발생률<span class="txt_ntc_bold"> (*)</span></th>
	                                	<th scope="col">인원</th>
	                                    <th scope="col">발생률<span class="txt_ntc_bold"> (*)</span></th>
	                                </tr>
	                            </thead>
	                            <tbody> 
	                            	
										
											<tr>
													<th scope="row">미국</th>
													<td>6,242,039</td>
													<td>1896.70</td>
													<td>188,501</td>
													<td>57.3</td>
													<td>3.02</td>
											</tr>
										
											<tr>
													<th scope="row">브라질</th>
													<td>4,123,000</td>
													<td>1941.15</td>
													<td>126,203</td>
													<td>59.4</td>
													<td>3.06</td>
											</tr>
										
											<tr>
													<th scope="row">인도</th>
													<td>4,023,179</td>
													<td>293.94</td>
													<td>69,561</td>
													<td>5.1</td>
													<td>1.73</td>
											</tr>
										
											<tr>
													<th scope="row">러시아</th>
													<td>1,020,310</td>
													<td>709.04</td>
													<td>17,759</td>
													<td>12.3</td>
													<td>1.74</td>
											</tr>
										
											<tr>
													<th scope="row">페루</th>
													<td>676,848</td>
													<td>2057.29</td>
													<td>29,554</td>
													<td>89.8</td>
													<td>4.37</td>
											</tr>
										
											<tr>
													<th scope="row">콜롬비아</th>
													<td>641,574</td>
													<td>1288.30</td>
													<td>20,618</td>
													<td>41.4</td>
													<td>3.21</td>
											</tr>
										
											<tr>
													<th scope="row">남아프리카공화국</th>
													<td>635,078</td>
													<td>1093.08</td>
													<td>14,678</td>
													<td>25.3</td>
													<td>2.31</td>
											</tr>
										
											<tr>
													<th scope="row">멕시코</th>
													<td>629,409</td>
													<td>475.74</td>
													<td>67,326</td>
													<td>50.9</td>
													<td>10.7</td>
											</tr>
										
											<tr>
													<th scope="row">스페인</th>
													<td>498,989</td>
													<td>1075.41</td>
													<td>29,418</td>
													<td>63.4</td>
													<td>5.9</td>
											</tr>
										
											<tr>
													<th scope="row">아르헨티나</th>
													<td>451,198</td>
													<td>1000.44</td>
													<td>9,468</td>
													<td>21.0</td>
													<td>2.1</td>
											</tr>
										
											<tr>
													<th scope="row">칠레</th>
													<td>420,434</td>
													<td>2244.71</td>
													<td>11,551</td>
													<td>61.7</td>
													<td>2.75</td>
											</tr>
										
											<tr>
													<th scope="row">이란</th>
													<td>384,666</td>
													<td>464.57</td>
													<td>22,154</td>
													<td>26.8</td>
													<td>5.76</td>
											</tr>
										
											<tr>
													<th scope="row">영국</th>
													<td>344,164</td>
													<td>513.68</td>
													<td>41,549</td>
													<td>62.0</td>
													<td>12.07</td>
											</tr>
										
											<tr>
													<th scope="row">방글라데시</th>
													<td>321,615</td>
													<td>199.27</td>
													<td>4,412</td>
													<td>2.7</td>
													<td>1.37</td>
											</tr>
										
											<tr>
													<th scope="row">사우디아라비아</th>
													<td>319,932</td>
													<td>938.22</td>
													<td>4,049</td>
													<td>11.9</td>
													<td>1.27</td>
											</tr>
										
											<tr>
													<th scope="row">프랑스</th>
													<td>317,706</td>
													<td>485.05</td>
													<td>30,698</td>
													<td>46.9</td>
													<td>9.7</td>
											</tr>
										
											<tr>
													<th scope="row">파키스탄</th>
													<td>298,025</td>
													<td>145.66</td>
													<td>6,340</td>
													<td>3.1</td>
													<td>2.13</td>
											</tr>
										
											<tr>
													<th scope="row">터키</th>
													<td>278,228</td>
													<td>335.21</td>
													<td>6,620</td>
													<td>8.0</td>
													<td>2.38</td>
											</tr>
										
											<tr>
													<th scope="row">이탈리아</th>
													<td>276,338</td>
													<td>466.79</td>
													<td>35,534</td>
													<td>60.0</td>
													<td>12.86</td>
											</tr>
										
											<tr>
													<th scope="row">필리핀</th>
													<td>232,072</td>
													<td>214.68</td>
													<td>3,737</td>
													<td>3.5</td>
													<td>1.61</td>
											</tr>
										
											<tr>
													<th scope="row">인도네시아</th>
													<td>187,537</td>
													<td>69.59</td>
													<td>7,832</td>
													<td>2.9</td>
													<td>4.18</td>
											</tr>
										
											<tr>
													<th scope="row">카자흐스탄</th>
													<td>132,924</td>
													<td>714.65</td>
													<td>1,878</td>
													<td>10.1</td>
													<td>1.41</td>
											</tr>
										
											<tr>
													<th scope="row">중국</th>
													<td>85,122</td>
													<td>5.99</td>
													<td>4,634</td>
													<td>0.3</td>
													<td>5.44</td>
											</tr>
										
											<tr>
													<th scope="row">일본</th>
													<td>71,419</td>
													<td>56.28</td>
													<td>1,357</td>
													<td>1.1</td>
													<td>1.9</td>
											</tr>
										
											<tr>
													<th scope="row">싱가포르</th>
													<td>56,982</td>
													<td>965.8</td>
													<td>27</td>
													<td>0.5</td>
													<td>0.05</td>
											</tr>
										
											<tr>
													<th scope="row">키르기스스탄</th>
													<td>44,316</td>
													<td>714.77</td>
													<td>1,061</td>
													<td>17.1</td>
													<td>2.39</td>
											</tr>
										
											<tr>
													<th scope="row">우즈베키스탄</th>
													<td>43,169</td>
													<td>131.61</td>
													<td>338</td>
													<td>1.0</td>
													<td>0.78</td>
											</tr>
										
											<tr>
													<th scope="row">호주</th>
													<td>26,136</td>
													<td>104.13</td>
													<td>737</td>
													<td>2.9</td>
													<td>2.82</td>
											</tr>
										
											<tr>
													<th scope="row">말레이시아</th>
													<td>9,385</td>
													<td>28.88</td>
													<td>128</td>
													<td>0.4</td>
													<td>1.36</td>
											</tr>
										
											<tr>
													<th scope="row">태국</th>
													<td>3,438</td>
													<td>4.96</td>
													<td>58</td>
													<td>0.1</td>
													<td>1.69</td>
											</tr>
										
											<tr>
													<th scope="row">베트남</th>
													<td>1,049</td>
													<td>1.1</td>
													<td>35</td>
													<td>0.0</td>
													<td>3.34</td>
											</tr>
										
											<tr>
													<th scope="row">한국</th>
													<td>21,177</td>
													<td>40.8</td>
													<td>334</td>
													<td>0.6</td>
													<td>1.58</td>
											</tr>
										
									
	                            </tbody>
	                        </table>    
                        </div>        
						 <p class="i_descript mgt8 ta_r">
							<span class="txt_ntc_bold">(*)</span> 인구 10만 명당 (국가별 총 인구수 : 한국 - 2020년 1월 행정안전부 주민등록인구현황 기준 , 한국 외 - United Nations Population Fund(UNFPA, 유엔인구기금) )
							<!-- <span class="txt_ntc_bold">(**)</span> 4월 15일 09:00 기준 발생현황 업데이트 되지 않아 미반영 -->
						</p>
                        <!-- 20200415 추가 끝// -->
                       
						<div class="board_top mgt16">							
							<div class="fl_l">
								 <h5 class="s_title_in3">주요 국가 검진건수 및 확진률 비교<span class="title_info">(09.06. 00시 기준)</span></h5>
							</div>
						</div>

                        <div class="data_table mgt8">
	                        <table class="num">
	                            <caption><span class="hdn">주요 국가 검진건수 및 확진률 비교표 - 중국, 한국, 이탈리아, 이란, 일본, 미국의 검사건수, 확진자, 건수대 확진 정보로 구성</span></caption>
	                            <colgroup>
	                            	<col style="width:20%"/>
	                            	<col style="width:26.666%"/>
	                            	<col style="width:26.666%"/>
	                            	<col style="width:26.666%"/>       
	                            </colgroup>
	                            <thead>
	                            	<tr>
	                                	<th scope="col">국가</th>
	                                    <th scope="col">검사건수</th>
	                                    <th scope="col">확진자</th>
	                                    <th scope="col">건수대비 확진률</th>
	                                </tr>
	                            </thead>
	                            <tbody>
		                            
										
											<tr>
												<th scope="row">중국</th>
												<td>
													
														
														N/A
													
												</td>
												<td>
													
														85,112명
														
													
												<td>
													N/A
													
														
														
													
												</td>
											</tr>
										
											<tr>
												<th scope="row">한국</th>
												<td>
													
														2,206,365건
														
													
												</td>
												<td>
													
														22,783명
														
													
												<td>
													1.0
													
														%
														
													
												</td>
											</tr>
										
											<tr>
												<th scope="row">이탈리아</th>
												<td>
													
														
														N/A
													
												</td>
												<td>
													
														274,644명
														
													
												<td>
													N/A
													
														
														
													
												</td>
											</tr>
										
											<tr>
												<th scope="row">이란</th>
												<td>
													
														
														N/A
													
												</td>
												<td>
													
														384,666명
														
													
												<td>
													N/A
													
														
														
													
												</td>
											</tr>
										
											<tr>
												<th scope="row">일본</th>
												<td>
													
														1,577,444건
														
													
												</td>
												<td>
													
														70,876명
														
													
												<td>
													4.5
													
														%
														
													
												</td>
											</tr>
										
											<tr>
												<th scope="row">미국</th>
												<td>
													
														
														N/A
													
												</td>
												<td>
													
														6,232,889명
														
													
												<td>
													N/A
													
														
														
													
												</td>
											</tr>
										
											<tr>
												<th scope="row">영국</th>
												<td>
													
														17,619,897건
														
													
												</td>
												<td>
													
														344,164명
														
													
												<td>
													2.0
													
														%
														
													
												</td>
											</tr>
										
									
	                            </tbody>
	                        </table>    
                        </div>
                        <p class="i_descript mgt8 ta_r"><span class="txt_ntc_bold">*</span> N/A표시는 미집계를 의미함</p>
						
						<div class="box_toggle">
							<div class="btnarea">
								<p class="title_ac">[기준 및 출처]</p>
								<button type="button" data-button="box_toggle" class="title_ac m">기준 및 출처</button>
							</div>
							<div class="inner">
								<strong class="inner_title">기준</strong>
								<ul class="s_listin_mdot  mgt0">
									<li>건수대비 확진율(확진자수/검사건수 × 100)는 온라인에 공개된 각국의 검사건수 및 확진자 수를 토대로 자체 계산</li>
									<!--  <li>한국의 검사건수는 전체 검사건수(2,045,935건) 중 검사가 진행 중인 건수(49,621건)를 제외하고, 양성 &middot; 음성이 진단이 완료된 건수만 포함</li>  -->
									<li>
									
										
											
												중국 (  09월 21일 24시 기준)
												
											
										
											
												
												, 한국 (  09월 22일 00시 기준)
											
										
											
												
												, 이탈리아 (  09월 22일 00시 기준)
											
										
											
												
												, 이란 (  09월 21일 16시 기준)
											
										
											
												
												, 일본 (  09월 22일 00시 기준)
											
										
											
												
												, 미국 (  09월 21일 16시 기준)
											
										
											
												
												, 영국 (  09월 22일 00시 기준)
											
										
									
									
									</li>
								</ul>
								<strong class="inner_title">출처</strong>
								<ul class="s_listin_mbar pdl12 mgt0">
									<li>중국 : <a href="http://en.nhc.gov.cn/2020-03/06/c_77327.htm" target="_blank" title="새창" class="s_link_text">국가위생건강위원회 홈페이지</a></li>
									<li>한국 : 중앙방역대책본부 정례브리핑 보도자료</li>
									<li>이탈리아 : <a href="http://www.salute.gov.it/portale/nuovocoronavirus/dettaglioContenutiNuovoCoronavirus.jsp?lingua=italiano&amp;id=5351&amp;area=nuovoCoronavirus&amp;menu=vuoto" target="_blank" title="새창" class="s_link_text">보건부 홈페이지</a></li>									
									<li>일본 : <a href="https://www.mhlw.go.jp/stf/houdou/houdou_list_202005.html" target="_blank" title="새창" class="s_link_text">후생노동성 보도자료</a></li>
									<li>영국 : <a href="https://www.gov.uk/guidance/coronavirus-covid-19-information-for-the-public#number-of-cases" target="_blank" title="새창" class="s_link_text">정부사이트</a></li>
									<li>이란 &middot; 미국 : <a href="https://www.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6" target="_blank" title="새창" class="s_link_text">Coronavirus COVID-19 Global Cases by Johns Hopkins CSSE</a></li>								
								</ul>
							</div>
						</div>
						
						<!-- 공공누리 표시 -->
						





	
	
	
	
	
	
		
	
	
			
			
	
	
	


<div class="copykogl
	
		 type1
		
		
		
		
	">
	<div class="copyimg">
		
			<span class="hdn">공공누리 제1유형</span>
			
			
			
			
			
	</div>
	<p class="copytext">
		코로나바이러스감염증-19가 창작한 
		<strong>"국외 발생 현황"</strong> 
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
	<script>
		$(function(){
			// 차트 디자인 관련변수 설정 : 기본을 먼저 설정 후 추가 적용 
			N_Data = {
					
					UnitedStatesofAmerica: { kr: "미국", en: "United States of America", cn: "美国", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Brazil: { kr: "브라질", en: "Brazil", cn: "巴西", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					India: { kr: "인도", en: "India", cn: "印度", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Russia: { kr: "러시아", en: "Russia", cn: "俄罗斯", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Peru: { kr: "페루", en: "Peru", cn: "秘鲁", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Columbia: { kr: "콜롬비아", en: "Columbia", cn: "哥伦比亚", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					RepublicofSouthAfrica: { kr: "남아프리카공화국", en: "Republic of South Africa", cn: "南非共和国", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Mexico: { kr: "멕시코", en: "Mexico", cn: "墨西哥", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Spain: { kr: "스페인", en: "Spain", cn: "西班牙", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Argentina: { kr: "아르헨티나", en: "Argentina", cn: "阿根廷", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Chile: { kr: "칠레", en: "Chile", cn: "智利", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Iran: { kr: "이란", en: "Iran", cn: "伊朗", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					UnitedKingdom: { kr: "영국", en: "United Kingdom", cn: "英国", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Bangladesh: { kr: "방글라데시", en: "Bangladesh", cn: "孟加拉国", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					SaudiArabia: { kr: "사우디아라비아", en: "Saudi Arabia", cn: "沙特阿拉伯", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					France: { kr: "프랑스", en: "France", cn: "法国", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Pakistan: { kr: "파키스탄", en: "Pakistan", cn: "巴基斯坦", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Turkey: { kr: "터키", en: "Turkey", cn: "土耳其", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Italy: { kr: "이탈리아", en: "Italy", cn: "意大利", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Iraq: { kr: "이라크", en: "Iraq", cn: "伊拉克", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Germany: { kr: "독일", en: "Germany", cn: "德国", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					Philippines: { kr: "필리핀", en: "Philippines", cn: "菲律宾", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#666666", pointColor: "#666666", lineColor: "#666666", fontColor: "#666666" },    
					
					
					UnitedStatesofAmerica: { kr: "미국", en: "USA", cn: "美国", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#ff12ff", pointColor: "#ff12ff", lineColor: "#ff12ff", fontColor: "#ff12ff" },
				    Brazil: { kr: "브라질", en: "Brazil", cn: "巴西", pointStyle: "rect", borderDash: [0, 0], backgroundColor: "#ffffff", pointColor: "#4f4f4f", lineColor: "#4f4f4f", fontColor: "#4f4f4f" },
				    Russia: { kr: "러시아", en: "Russia", cn: "俄罗斯", pointStyle: "rectRot", borderDash: [0, 0], backgroundColor: "#ffffff", pointColor: "#e92828", lineColor: "#e92828", fontColor: "#e92828" },
				    UnitedKingdom: { kr: "영국", en: "UK", cn: "英国", pointStyle: "circle", borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#15399e", lineColor: "#15399e", fontColor: "#15399e" },
				    Spain: { kr: "스페인", en: "Spain", cn: "西班牙", pointStyle: "triangle", borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#ff12ff", lineColor: "#ff12ff", fontColor: "#ff12ff" },
				    Italy: { kr: "이탈리아", en: "Italy", cn: "意大利", pointStyle: "rect", borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#197b30", lineColor: "#197b30", fontColor: "#197b30" },
				    India: { kr: "인도", en: "India", cn: "印度", pointStyle: "rectRot", borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#0606ff", lineColor: "#0606ff", fontColor: "#0606ff" },
				    Germany: { kr: "독일", en: "Germany", cn: "德国", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#ffffff", pointColor: "#721dca", lineColor: "#721dca", fontColor: "#721dca" },
				    Peru: { kr: "페루", en: "Peru", cn: "秘鲁", pointStyle: "triangle", borderDash: [0, 0], backgroundColor: "#ffffff", pointColor: "#00b8ce", lineColor: "#00b8ce", fontColor: "#00b8ce" },
				    Turkey: { kr: "터키", en: "Turkey", cn: "土耳其", pointStyle: "rect", borderDash: [0, 0], backgroundColor: "#4f4f4f", pointColor: "#4f4f4f", lineColor: "#4f4f4f", fontColor: "#4f4f4f" },
				    Iran: { kr: "이란", en: "Iran", cn: "伊朗", pointStyle: "rectRot", borderDash: [0, 0], backgroundColor: "#e92828", pointColor: "#e92828", lineColor: "#e92828", fontColor: "#e92828" },
				    France: { kr: "프랑스", en: "France", cn: "法国", pointStyle: "circle", borderDash: [2, 1], backgroundColor: "#15399e", pointColor: "#15399e", lineColor: "#15399e", fontColor: "#15399e" },
				    Chile: { kr: "칠레", en: "Chile", cn: "智利", pointStyle: "rectRot",  borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#ff12ff", lineColor: "#ff12ff", fontColor: "#ff12ff" },
				    Mexico: { kr: "멕시코", en: "Mexico", cn: "墨西哥", pointStyle: "circle",   borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#197b30", lineColor: "#197b30", fontColor: "#197b30" },
				    Pakistan: { kr: "파키스탄", en: "Pakistan", cn: "巴基斯坦", pointStyle: "triangle", borderDash: [0, 0], backgroundColor: "#15399e", pointColor: "#15399e", lineColor: "#15399e", fontColor: "#15399e" },
				    SaudiArabia: { kr: "사우디아라비아", en: "SA", cn: "沙特阿拉伯", pointStyle: "rect",     borderDash: [0, 0], backgroundColor: "#ff12ff", pointColor: "#ff12ff", lineColor: "#ff12ff", fontColor: "#ff12ff" },
				    RepublicofSouthAfrica : { kr: "남아프리카공화국", en: "RSA", cn: "南非共和国", pointStyle: "rectRot",     borderDash: [0, 0], backgroundColor: "#ffffff", pointColor: "#2fcf51", lineColor: "#2fcf51", fontColor: "#2fcf51" },				    
				    Qatar : { kr: "카타르", en: "Qatar", cn: "卡塔尔", pointStyle: "triangle",     borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#f25480", lineColor: "#f25480", fontColor: "#f25480" },
				    Bangladesh : { kr: "방글라데시", en: "Bangladesh", cn: "孟加拉国", pointStyle: "rectRot",     borderDash: [0, 0], backgroundColor: "#cdb200", pointColor: "#cdb200", lineColor: "#cdb200", fontColor: "#cdb200" },
				    Columbia : { kr: "콜롬비아", en: "Columbia", cn: "哥伦比亚", pointStyle: "circle",     borderDash: [0, 0], backgroundColor: "#1ba8d6", pointColor: "#1ba8d6", lineColor: "#1ba8d6", fontColor: "#1ba8d6" },
				    Canada : { kr: "캐나다", en: "Canada", cn: "加拿大", pointStyle: "triangle",     borderDash: [0, 0], backgroundColor: "#0cd1e8", pointColor: "#0cd1e8", lineColor: "#0cd1e8", fontColor: "#0cd1e8" }									
				};
			NPTB_data = {
					date: [],
					
					 UnitedStatesofAmerica:[],					
										
					
					 Brazil:[],					
										
					
					 India:[],					
										
					
					 Russia:[],					
										
					
					 Peru:[],					
										
					
					 Columbia:[],					
										
					
					 RepublicofSouthAfrica:[],					
										
					
					 Mexico:[],					
										
					
					 Spain:[],					
										
					
					 Argentina:[],					
										
					
					 Chile:[],					
										
					
					 Iran:[],					
										
					
					 UnitedKingdom:[],					
										
					
					 Bangladesh:[],					
										
					
					 SaudiArabia:[],					
										
					
					 France:[],					
										
					
					 Pakistan:[],					
										
					
					 Turkey:[],					
										
					
					 Italy:[],					
										
					
					 Iraq:[],					
										
					
					 Germany:[],					
										
					
										
					 Philippines:[]					
					
			};
			
			NPTD_data = {
					date: [],
					
					 UnitedStatesofAmerica:[],					
										
					
					 Brazil:[],					
										
					
					 India:[],					
										
					
					 Russia:[],					
										
					
					 Peru:[],					
										
					
					 Columbia:[],					
										
					
					 RepublicofSouthAfrica:[],					
										
					
					 Mexico:[],					
										
					
					 Spain:[],					
										
					
					 Argentina:[],					
										
					
					 Chile:[],					
										
					
					 Iran:[],					
										
					
					 UnitedKingdom:[],					
										
					
					 Bangladesh:[],					
										
					
					 SaudiArabia:[],					
										
					
					 France:[],					
										
					
					 Pakistan:[],					
										
					
					 Turkey:[],					
										
					
					 Italy:[],					
										
					
					 Iraq:[],					
										
					
					 Germany:[],					
										
					
										
					 Philippines:[]					
					
			};
			
			
			var def_cnt = [   nullChkAndStrToInt("5699804"), nullChkAndStrToInt("5735771"),
			                  	nullChkAndStrToInt("5775416"), nullChkAndStrToInt("5817538"),
			                  	nullChkAndStrToInt("5860397"), nullChkAndStrToInt("5912016"),
			                  	nullChkAndStrToInt("5958902"),nullChkAndStrToInt("5993668"),
								nullChkAndStrToInt("6027111"), nullChkAndStrToInt("6071971"), 
								nullChkAndStrToInt("6111485"), nullChkAndStrToInt("6146524"), 
								nullChkAndStrToInt("6198996"),nullChkAndStrToInt("6242039")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.UnitedStatesofAmerica = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("3605783"), nullChkAndStrToInt("3622861"),
			                  	nullChkAndStrToInt("3669995"), nullChkAndStrToInt("3717156"),
			                  	nullChkAndStrToInt("3761391"), nullChkAndStrToInt("3804803"),
			                  	nullChkAndStrToInt("3846153"),nullChkAndStrToInt("3862311"),
								nullChkAndStrToInt("3908272"), nullChkAndStrToInt("3950931"), 
								nullChkAndStrToInt("3997865"), nullChkAndStrToInt("4041638"), 
								nullChkAndStrToInt("4091801"),nullChkAndStrToInt("4123000")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Brazil = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("3044940"), nullChkAndStrToInt("3106348"),
			                  	nullChkAndStrToInt("3167323"), nullChkAndStrToInt("3234474"),
			                  	nullChkAndStrToInt("3310234"), nullChkAndStrToInt("3387500"),
			                  	nullChkAndStrToInt("3463972"),nullChkAndStrToInt("3542733"),
								nullChkAndStrToInt("3621245"), nullChkAndStrToInt("3691166"), 
								nullChkAndStrToInt("3769523"), nullChkAndStrToInt("3853406"), 
								nullChkAndStrToInt("3936747"),nullChkAndStrToInt("4023179")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.India = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("956749"), nullChkAndStrToInt("961493"),
			                  	nullChkAndStrToInt("966189"), nullChkAndStrToInt("970865"),
			                  	nullChkAndStrToInt("975576"), nullChkAndStrToInt("980405"),
			                  	nullChkAndStrToInt("985346"),nullChkAndStrToInt("990326"),
								nullChkAndStrToInt("995319"), nullChkAndStrToInt("1000048"), 
								nullChkAndStrToInt("1005000"), nullChkAndStrToInt("1009995"), 
								nullChkAndStrToInt("1015105"),nullChkAndStrToInt("1020310")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Russia = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("585236"), nullChkAndStrToInt("594326"),
			                  	nullChkAndStrToInt("600438"), nullChkAndStrToInt("607382"),
			                  	nullChkAndStrToInt("613378"), nullChkAndStrToInt("621997"),
			                  	nullChkAndStrToInt("629961"),nullChkAndStrToInt("639435"),
								nullChkAndStrToInt("647166"), nullChkAndStrToInt("652037"), 
								nullChkAndStrToInt("657129"), nullChkAndStrToInt("657129"), 
								nullChkAndStrToInt("670145"),nullChkAndStrToInt("676848")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Peru = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("522138"), nullChkAndStrToInt("533103"),
			                  	nullChkAndStrToInt("541147"), nullChkAndStrToInt("551696"),
			                  	nullChkAndStrToInt("562128"), nullChkAndStrToInt("572270"),
			                  	nullChkAndStrToInt("582022"),nullChkAndStrToInt("590520"),
								nullChkAndStrToInt("599914"), nullChkAndStrToInt("607938"), 
								nullChkAndStrToInt("615168"), nullChkAndStrToInt("624069"), 
								nullChkAndStrToInt("633339"),nullChkAndStrToInt("641574")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Columbia = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("607045"), nullChkAndStrToInt("609773"),
			                  	nullChkAndStrToInt("611450"), nullChkAndStrToInt("613017"),
			                  	nullChkAndStrToInt("615701"), nullChkAndStrToInt("615701"),
			                  	nullChkAndStrToInt("620132"),nullChkAndStrToInt("622551"),
								nullChkAndStrToInt("625056"), nullChkAndStrToInt("627041"), 
								nullChkAndStrToInt("628259"), nullChkAndStrToInt("630595"), 
								nullChkAndStrToInt("633015"),nullChkAndStrToInt("635078")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.RepublicofSouthAfrica = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("560164"), nullChkAndStrToInt("563705"),
			                  	nullChkAndStrToInt("568621"), nullChkAndStrToInt("573888"),
			                  	nullChkAndStrToInt("579914"), nullChkAndStrToInt("585738"),
			                  	nullChkAndStrToInt("591712"),nullChkAndStrToInt("595841"),
								nullChkAndStrToInt("599560"), nullChkAndStrToInt("606036"), 
								nullChkAndStrToInt("610957"), nullChkAndStrToInt("616894"), 
								nullChkAndStrToInt("623090"),nullChkAndStrToInt("629409")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Mexico = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("386054"), nullChkAndStrToInt("405436"),
			                  	nullChkAndStrToInt("412553"), nullChkAndStrToInt("419849"),
			                  	nullChkAndStrToInt("429507"), nullChkAndStrToInt("439286"),
			                  	nullChkAndStrToInt("439286"),nullChkAndStrToInt("439286"),
								nullChkAndStrToInt("462858"), nullChkAndStrToInt("470973"), 
								nullChkAndStrToInt("479554"), nullChkAndStrToInt("488513"), 
								nullChkAndStrToInt("498989"),nullChkAndStrToInt("498989")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Spain = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("329043"), nullChkAndStrToInt("336802"),
			                  	nullChkAndStrToInt("342154"), nullChkAndStrToInt("350867"),
			                  	nullChkAndStrToInt("359638"), nullChkAndStrToInt("370188"),
			                  	nullChkAndStrToInt("380292"),nullChkAndStrToInt("392009"),
								nullChkAndStrToInt("401239"), nullChkAndStrToInt("408426"), 
								nullChkAndStrToInt("417735"), nullChkAndStrToInt("428239"), 
								nullChkAndStrToInt("439172"),nullChkAndStrToInt("451198")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Argentina = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("397665"), nullChkAndStrToInt("399568"),
			                  	nullChkAndStrToInt("400985"), nullChkAndStrToInt("402365"),
			                  	nullChkAndStrToInt("404102"), nullChkAndStrToInt("405972"),
			                  	nullChkAndStrToInt("408009"),nullChkAndStrToInt("409974"),
								nullChkAndStrToInt("411726"), nullChkAndStrToInt("413145"), 
								nullChkAndStrToInt("414739"), nullChkAndStrToInt("416501"), 
								nullChkAndStrToInt("418469"),nullChkAndStrToInt("420434")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Chile = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("358905"), nullChkAndStrToInt("361150"),
			                  	nullChkAndStrToInt("363363"), nullChkAndStrToInt("365606"),
			                  	nullChkAndStrToInt("367796"), nullChkAndStrToInt("369911"),
			                  	nullChkAndStrToInt("371816"),nullChkAndStrToInt("373570"),
								nullChkAndStrToInt("375212"), nullChkAndStrToInt("376894"), 
								nullChkAndStrToInt("378752"), nullChkAndStrToInt("380746"), 
								nullChkAndStrToInt("382772"),nullChkAndStrToInt("384666")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Iran = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("325642"), nullChkAndStrToInt("326614"),
			                  	nullChkAndStrToInt("327798"), nullChkAndStrToInt("328846"),
			                  	nullChkAndStrToInt("330368"), nullChkAndStrToInt("331644"),
			                  	nullChkAndStrToInt("332752"),nullChkAndStrToInt("334467"),
								nullChkAndStrToInt("335873"), nullChkAndStrToInt("337168"), 
								nullChkAndStrToInt("338676"), nullChkAndStrToInt("340411"), 
								nullChkAndStrToInt("342351"),nullChkAndStrToInt("344164")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.UnitedKingdom = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("292625"), nullChkAndStrToInt("294598"),
			                  	nullChkAndStrToInt("297083"), nullChkAndStrToInt("299628"),
			                  	nullChkAndStrToInt("302147"), nullChkAndStrToInt("304583"),
			                  	nullChkAndStrToInt("306794"),nullChkAndStrToInt("308925"),
								nullChkAndStrToInt("310822"), nullChkAndStrToInt("312996"), 
								nullChkAndStrToInt("314946"), nullChkAndStrToInt("317528"), 
								nullChkAndStrToInt("319686"),nullChkAndStrToInt("321615")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Bangladesh = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("307479"), nullChkAndStrToInt("308654"),
			                  	nullChkAndStrToInt("309768"), nullChkAndStrToInt("310836"),
			                  	nullChkAndStrToInt("311855"), nullChkAndStrToInt("312924"),
			                  	nullChkAndStrToInt("313911"),nullChkAndStrToInt("314821"),
								nullChkAndStrToInt("315772"), nullChkAndStrToInt("316670"), 
								nullChkAndStrToInt("317486"), nullChkAndStrToInt("318319"), 
								nullChkAndStrToInt("319141"),nullChkAndStrToInt("319932")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.SaudiArabia = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("242899"), nullChkAndStrToInt("244854"),
			                  	nullChkAndStrToInt("248158"), nullChkAndStrToInt("253587"),
			                  	nullChkAndStrToInt("259698"), nullChkAndStrToInt("267077"),
			                  	nullChkAndStrToInt("272530"),nullChkAndStrToInt("277943"),
								nullChkAndStrToInt("281025"), nullChkAndStrToInt("286007"), 
								nullChkAndStrToInt("293024"), nullChkAndStrToInt("300181"), 
								nullChkAndStrToInt("309156"),nullChkAndStrToInt("317706")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.France = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("292765"), nullChkAndStrToInt("293261"),
			                  	nullChkAndStrToInt("293711"), nullChkAndStrToInt("294193"),
			                  	nullChkAndStrToInt("294638"), nullChkAndStrToInt("295053"),
			                  	nullChkAndStrToInt("295372"),nullChkAndStrToInt("295636"),
								nullChkAndStrToInt("295849"), nullChkAndStrToInt("296149"), 
								nullChkAndStrToInt("296590"), nullChkAndStrToInt("297014"), 
								nullChkAndStrToInt("297512"),nullChkAndStrToInt("298025")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Pakistan = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("258249"), nullChkAndStrToInt("259692"),
			                  	nullChkAndStrToInt("261194"), nullChkAndStrToInt("262507"),
			                  	nullChkAndStrToInt("263998"), nullChkAndStrToInt("265515"),
			                  	nullChkAndStrToInt("267064"),nullChkAndStrToInt("268546"),
								nullChkAndStrToInt("270133"), nullChkAndStrToInt("271705"), 
								nullChkAndStrToInt("273301"), nullChkAndStrToInt("274943"), 
								nullChkAndStrToInt("276555"),nullChkAndStrToInt("278228")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Turkey = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("259345"), nullChkAndStrToInt("260298"),
			                  	nullChkAndStrToInt("261174"), nullChkAndStrToInt("262540"),
			                  	nullChkAndStrToInt("263949"), nullChkAndStrToInt("265409"),
			                  	nullChkAndStrToInt("266853"),nullChkAndStrToInt("268218"),
								nullChkAndStrToInt("269214"), nullChkAndStrToInt("270189"), 
								nullChkAndStrToInt("271515"), nullChkAndStrToInt("272912"), 
								nullChkAndStrToInt("274644"),nullChkAndStrToInt("276338")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Italy = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("204341"), nullChkAndStrToInt("204341"),
			                  	nullChkAndStrToInt("207985"), nullChkAndStrToInt("215784"),
			                  	nullChkAndStrToInt("219435"), nullChkAndStrToInt("223612"),
			                  	nullChkAndStrToInt("227446"),nullChkAndStrToInt("231177"),
								nullChkAndStrToInt("234934"), nullChkAndStrToInt("238338"), 
								nullChkAndStrToInt("242284"), nullChkAndStrToInt("247039"), 
								nullChkAndStrToInt("252075"),nullChkAndStrToInt("256719")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Iraq = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("234483"), nullChkAndStrToInt("236121"),
			                  	nullChkAndStrToInt("237583"), nullChkAndStrToInt("239010"),
			                  	nullChkAndStrToInt("240571"), nullChkAndStrToInt("242126"),
			                  	nullChkAndStrToInt("242835"),nullChkAndStrToInt("243305"),
								nullChkAndStrToInt("244802"), nullChkAndStrToInt("246015"), 
								nullChkAndStrToInt("247411"), nullChkAndStrToInt("248840"), 
								nullChkAndStrToInt("250283"),nullChkAndStrToInt("251058")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Germany = def_cnt;
				
			
			var def_cnt = [   nullChkAndStrToInt("187249"), nullChkAndStrToInt("189601"),
			                  	nullChkAndStrToInt("194252"), nullChkAndStrToInt("197164"),
			                  	nullChkAndStrToInt("202361"), nullChkAndStrToInt("205581"),
			                  	nullChkAndStrToInt("209544"),nullChkAndStrToInt("213131"),
								nullChkAndStrToInt("217396"), nullChkAndStrToInt("220819"), 
								nullChkAndStrToInt("224264"), nullChkAndStrToInt("226440"), 
								nullChkAndStrToInt("228403"),nullChkAndStrToInt("232072")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTB_data.Philippines = def_cnt;
				
			
			
				var def_cnt = [ nullChkAndStrToInt("35068"), nullChkAndStrToInt("35967"), 
				    nullChkAndStrToInt("39645"), nullChkAndStrToInt("42122"),
				    nullChkAndStrToInt("42859"), nullChkAndStrToInt("51619"),
				    nullChkAndStrToInt("46886"), nullChkAndStrToInt("34766"),
					nullChkAndStrToInt("33443"), nullChkAndStrToInt("44860"), 
					nullChkAndStrToInt("39514"), nullChkAndStrToInt("35039"), 
					nullChkAndStrToInt("52472"),nullChkAndStrToInt("43043")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.UnitedStatesofAmerica = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("23421"), nullChkAndStrToInt("17078"), 
				    nullChkAndStrToInt("47134"), nullChkAndStrToInt("47161"),
				    nullChkAndStrToInt("44235"), nullChkAndStrToInt("43412"),
				    nullChkAndStrToInt("41350"), nullChkAndStrToInt("16158"),
					nullChkAndStrToInt("45961"), nullChkAndStrToInt("42659"), 
					nullChkAndStrToInt("46934"), nullChkAndStrToInt("43773"), 
					nullChkAndStrToInt("50163"),nullChkAndStrToInt("31199")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Brazil = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("69239"), nullChkAndStrToInt("61408"), 
				    nullChkAndStrToInt("60975"), nullChkAndStrToInt("67151"),
				    nullChkAndStrToInt("75760"), nullChkAndStrToInt("77266"),
				    nullChkAndStrToInt("76472"), nullChkAndStrToInt("78761"),
					nullChkAndStrToInt("78512"), nullChkAndStrToInt("69921"), 
					nullChkAndStrToInt("78357"), nullChkAndStrToInt("83883"), 
					nullChkAndStrToInt("83341"),nullChkAndStrToInt("86432")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.India = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("4852"), nullChkAndStrToInt("4744"), 
				    nullChkAndStrToInt("4696"), nullChkAndStrToInt("4676"),
				    nullChkAndStrToInt("4711"), nullChkAndStrToInt("4829"),
				    nullChkAndStrToInt("4941"), nullChkAndStrToInt("4980"),
					nullChkAndStrToInt("4993"), nullChkAndStrToInt("4729"), 
					nullChkAndStrToInt("4952"), nullChkAndStrToInt("4995"), 
					nullChkAndStrToInt("5110"),nullChkAndStrToInt("5205")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Russia = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("9169"), nullChkAndStrToInt("9090"), 
				    nullChkAndStrToInt("6112"), nullChkAndStrToInt("6944"),
				    nullChkAndStrToInt("5996"), nullChkAndStrToInt("8619"),
				    nullChkAndStrToInt("7964"), nullChkAndStrToInt("9474"),
					nullChkAndStrToInt("7731"), nullChkAndStrToInt("4871"), 
					nullChkAndStrToInt("5092"), nullChkAndStrToInt("0"), 
					nullChkAndStrToInt("13016"),nullChkAndStrToInt("6703")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Peru = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("8419"), nullChkAndStrToInt("10965"), 
				    nullChkAndStrToInt("8044"), nullChkAndStrToInt("10549"),
				    nullChkAndStrToInt("10432"), nullChkAndStrToInt("10142"),
				    nullChkAndStrToInt("9752"), nullChkAndStrToInt("8498"),
					nullChkAndStrToInt("9394"), nullChkAndStrToInt("8024"), 
					nullChkAndStrToInt("7230"), nullChkAndStrToInt("8901"), 
					nullChkAndStrToInt("9270"),nullChkAndStrToInt("8235")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Columbia = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("3707"), nullChkAndStrToInt("2728"), 
				    nullChkAndStrToInt("1677"), nullChkAndStrToInt("1567"),
				    nullChkAndStrToInt("2684"), nullChkAndStrToInt("0"),
				    nullChkAndStrToInt("4431"), nullChkAndStrToInt("2419"),
					nullChkAndStrToInt("2505"), nullChkAndStrToInt("1985"), 
					nullChkAndStrToInt("1218"), nullChkAndStrToInt("2336"), 
					nullChkAndStrToInt("2420"),nullChkAndStrToInt("2063")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.RepublicofSouthAfrica = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("3948"), nullChkAndStrToInt("3541"), 
				    nullChkAndStrToInt("4916"), nullChkAndStrToInt("5267"),
				    nullChkAndStrToInt("6026"), nullChkAndStrToInt("5824"),
				    nullChkAndStrToInt("5974"), nullChkAndStrToInt("4129"),
					nullChkAndStrToInt("3719"), nullChkAndStrToInt("6476"), 
					nullChkAndStrToInt("4921"), nullChkAndStrToInt("5937"), 
					nullChkAndStrToInt("6196"),nullChkAndStrToInt("6319")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Mexico = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("0"), nullChkAndStrToInt("19382"), 
				    nullChkAndStrToInt("7117"), nullChkAndStrToInt("7296"),
				    nullChkAndStrToInt("9658"), nullChkAndStrToInt("9779"),
				    nullChkAndStrToInt("0"), nullChkAndStrToInt("0"),
					nullChkAndStrToInt("23572"), nullChkAndStrToInt("8115"), 
					nullChkAndStrToInt("8581"), nullChkAndStrToInt("8959"), 
					nullChkAndStrToInt("10476"),nullChkAndStrToInt("0")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Spain = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("8159"), nullChkAndStrToInt("7759"), 
				    nullChkAndStrToInt("5352"), nullChkAndStrToInt("8713"),
				    nullChkAndStrToInt("8771"), nullChkAndStrToInt("10550"),
				    nullChkAndStrToInt("10104"), nullChkAndStrToInt("11717"),
					nullChkAndStrToInt("9230"), nullChkAndStrToInt("7187"), 
					nullChkAndStrToInt("9309"), nullChkAndStrToInt("10504"), 
					nullChkAndStrToInt("10933"),nullChkAndStrToInt("12026")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Argentina = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("1957"), nullChkAndStrToInt("1903"), 
				    nullChkAndStrToInt("1417"), nullChkAndStrToInt("1380"),
				    nullChkAndStrToInt("1737"), nullChkAndStrToInt("1870"),
				    nullChkAndStrToInt("2037"), nullChkAndStrToInt("1965"),
					nullChkAndStrToInt("1752"), nullChkAndStrToInt("1419"), 
					nullChkAndStrToInt("1594"), nullChkAndStrToInt("1762"), 
					nullChkAndStrToInt("1968"),nullChkAndStrToInt("1965")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Chile = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("2113"), nullChkAndStrToInt("2245"), 
				    nullChkAndStrToInt("2213"), nullChkAndStrToInt("2243"),
				    nullChkAndStrToInt("2190"), nullChkAndStrToInt("2115"),
				    nullChkAndStrToInt("1905"), nullChkAndStrToInt("1754"),
					nullChkAndStrToInt("1642"), nullChkAndStrToInt("1682"), 
					nullChkAndStrToInt("1858"), nullChkAndStrToInt("1994"), 
					nullChkAndStrToInt("2026"),nullChkAndStrToInt("1894")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Iran = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("1041"), nullChkAndStrToInt("972"), 
				    nullChkAndStrToInt("1184"), nullChkAndStrToInt("1048"),
				    nullChkAndStrToInt("1522"), nullChkAndStrToInt("1276"),
				    nullChkAndStrToInt("1108"), nullChkAndStrToInt("1715"),
					nullChkAndStrToInt("1406"), nullChkAndStrToInt("1295"), 
					nullChkAndStrToInt("1508"), nullChkAndStrToInt("1735"), 
					nullChkAndStrToInt("1940"),nullChkAndStrToInt("1813")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.UnitedKingdom = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("2265"), nullChkAndStrToInt("1973"), 
				    nullChkAndStrToInt("2485"), nullChkAndStrToInt("2545"),
				    nullChkAndStrToInt("2519"), nullChkAndStrToInt("2436"),
				    nullChkAndStrToInt("2211"), nullChkAndStrToInt("2131"),
					nullChkAndStrToInt("1897"), nullChkAndStrToInt("2174"), 
					nullChkAndStrToInt("1950"), nullChkAndStrToInt("2582"), 
					nullChkAndStrToInt("2158"),nullChkAndStrToInt("1929")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Bangladesh = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("1109"), nullChkAndStrToInt("1175"), 
				    nullChkAndStrToInt("1114"), nullChkAndStrToInt("1068"),
				    nullChkAndStrToInt("1019"), nullChkAndStrToInt("1069"),
				    nullChkAndStrToInt("987"), nullChkAndStrToInt("910"),
					nullChkAndStrToInt("951"), nullChkAndStrToInt("898"), 
					nullChkAndStrToInt("816"), nullChkAndStrToInt("833"), 
					nullChkAndStrToInt("822"),nullChkAndStrToInt("791")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.SaudiArabia = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("4897"), nullChkAndStrToInt("1955"), 
				    nullChkAndStrToInt("3304"), nullChkAndStrToInt("5429"),
				    nullChkAndStrToInt("6111"), nullChkAndStrToInt("7379"),
				    nullChkAndStrToInt("5453"), nullChkAndStrToInt("5413"),
					nullChkAndStrToInt("3082"), nullChkAndStrToInt("4982"), 
					nullChkAndStrToInt("7017"), nullChkAndStrToInt("7157"), 
					nullChkAndStrToInt("8975"),nullChkAndStrToInt("8550")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.France = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("591"), nullChkAndStrToInt("496"), 
				    nullChkAndStrToInt("450"), nullChkAndStrToInt("482"),
				    nullChkAndStrToInt("445"), nullChkAndStrToInt("415"),
				    nullChkAndStrToInt("319"), nullChkAndStrToInt("264"),
					nullChkAndStrToInt("213"), nullChkAndStrToInt("300"), 
					nullChkAndStrToInt("441"), nullChkAndStrToInt("424"), 
					nullChkAndStrToInt("498"),nullChkAndStrToInt("513")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Pakistan = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("1217"), nullChkAndStrToInt("1443"), 
				    nullChkAndStrToInt("1502"), nullChkAndStrToInt("1313"),
				    nullChkAndStrToInt("1491"), nullChkAndStrToInt("1517"),
				    nullChkAndStrToInt("1549"), nullChkAndStrToInt("1482"),
					nullChkAndStrToInt("1587"), nullChkAndStrToInt("1572"), 
					nullChkAndStrToInt("1596"), nullChkAndStrToInt("1642"), 
					nullChkAndStrToInt("1612"),nullChkAndStrToInt("1673")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Turkey = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("1209"), nullChkAndStrToInt("953"), 
				    nullChkAndStrToInt("876"), nullChkAndStrToInt("1366"),
				    nullChkAndStrToInt("1409"), nullChkAndStrToInt("1460"),
				    nullChkAndStrToInt("1444"), nullChkAndStrToInt("1365"),
					nullChkAndStrToInt("996"), nullChkAndStrToInt("975"), 
					nullChkAndStrToInt("1326"), nullChkAndStrToInt("1397"), 
					nullChkAndStrToInt("1732"),nullChkAndStrToInt("1694")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Italy = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("3291"), nullChkAndStrToInt("0"), 
				    nullChkAndStrToInt("3644"), nullChkAndStrToInt("7799"),
				    nullChkAndStrToInt("3651"), nullChkAndStrToInt("4177"),
				    nullChkAndStrToInt("3834"), nullChkAndStrToInt("3731"),
					nullChkAndStrToInt("3757"), nullChkAndStrToInt("3404"), 
					nullChkAndStrToInt("3946"), nullChkAndStrToInt("4755"), 
					nullChkAndStrToInt("5036"),nullChkAndStrToInt("4644")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Iraq = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("629"), nullChkAndStrToInt("1638"), 
				    nullChkAndStrToInt("1462"), nullChkAndStrToInt("1427"),
				    nullChkAndStrToInt("1561"), nullChkAndStrToInt("1555"),
				    nullChkAndStrToInt("709"), nullChkAndStrToInt("470"),
					nullChkAndStrToInt("1497"), nullChkAndStrToInt("1213"), 
					nullChkAndStrToInt("1396"), nullChkAndStrToInt("1429"), 
					nullChkAndStrToInt("1443"),nullChkAndStrToInt("775")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Germany = def_cnt;
				
			
				var def_cnt = [ nullChkAndStrToInt("4884"), nullChkAndStrToInt("2352"), 
				    nullChkAndStrToInt("4651"), nullChkAndStrToInt("2912"),
				    nullChkAndStrToInt("5197"), nullChkAndStrToInt("3220"),
				    nullChkAndStrToInt("3963"), nullChkAndStrToInt("3587"),
					nullChkAndStrToInt("4265"), nullChkAndStrToInt("3423"), 
					nullChkAndStrToInt("3445"), nullChkAndStrToInt("2176"), 
					nullChkAndStrToInt("1963"),nullChkAndStrToInt("3669")];
				
				 for(var i=0; i<def_cnt.length; i++){
					if(i==0){
						def_cnt[i] = nextValue(def_cnt, i)
					} else {
						def_cnt[i] = prevValue(def_cnt, i)
					}
				}
				
				 NPTD_data.Philippines = def_cnt;
				
			
			NPTB_data.date = ["08.24","08.25","08.26","08.27","08.28","08.29","08.30","08.31","09.01","09.02","09.03","09.04","09.05","09.06"];
			NPTD_data.date = ["08.24","08.25","08.26","08.27","08.28","08.29","08.30","08.31","09.01","09.02","09.03","09.04","09.05","09.06"];
			
			NPTBChart();
			NPTDChart();
			tabCommon('.mcs_tab');
			//NPTDChart();
		});
		
		function prevValue(def_cnt, i) {
			if(i == 0)
				return def_cnt[i];
			
			if(def_cnt[i] == 0){
				return prevValue(def_cnt, i-1);
			}
			return def_cnt[i];
		}
		
		function nextValue(def_cnt, i) {
			if(i == (def_cnt.length-1))
				return def_cnt[i];
			
			if(def_cnt[i] == 0){
				return nextValue(def_cnt, i+1);
			}
			return def_cnt[i];
		}
		
		
		function nullChkAndStrToInt(val) {
			if(val == "" || val == null){
				val = 0;
			} else {
				val = parseInt(val);
			}
			return val;
		}
		
		function NPTBChart() {
		    new Chart(document.getElementById("national_patient_trend_B"), {
		        type: "bar", // bar 타입을 넣어야 Line Point가 중앙정렬 된다.
		        data: {
		            labels: NPTB_data.date,
		            datasets: [
					           
		                {
		                    type: "line",
		                    data: NPTB_data.UnitedStatesofAmerica,
		                    label: N_Data.UnitedStatesofAmerica.kr,
		                    pointStyle: N_Data.UnitedStatesofAmerica.pointStyle,
		                    pointBackgroundColor: N_Data.UnitedStatesofAmerica.backgroundColor,
		                    pointBorderColor: N_Data.UnitedStatesofAmerica.pointColor,
		                    borderColor: N_Data.UnitedStatesofAmerica.lineColor,
		                    borderDash: N_Data.UnitedStatesofAmerica.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Brazil,
		                    label: N_Data.Brazil.kr,
		                    pointStyle: N_Data.Brazil.pointStyle,
		                    pointBackgroundColor: N_Data.Brazil.backgroundColor,
		                    pointBorderColor: N_Data.Brazil.pointColor,
		                    borderColor: N_Data.Brazil.lineColor,
		                    borderDash: N_Data.Brazil.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.India,
		                    label: N_Data.India.kr,
		                    pointStyle: N_Data.India.pointStyle,
		                    pointBackgroundColor: N_Data.India.backgroundColor,
		                    pointBorderColor: N_Data.India.pointColor,
		                    borderColor: N_Data.India.lineColor,
		                    borderDash: N_Data.India.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Russia,
		                    label: N_Data.Russia.kr,
		                    pointStyle: N_Data.Russia.pointStyle,
		                    pointBackgroundColor: N_Data.Russia.backgroundColor,
		                    pointBorderColor: N_Data.Russia.pointColor,
		                    borderColor: N_Data.Russia.lineColor,
		                    borderDash: N_Data.Russia.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Peru,
		                    label: N_Data.Peru.kr,
		                    pointStyle: N_Data.Peru.pointStyle,
		                    pointBackgroundColor: N_Data.Peru.backgroundColor,
		                    pointBorderColor: N_Data.Peru.pointColor,
		                    borderColor: N_Data.Peru.lineColor,
		                    borderDash: N_Data.Peru.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Columbia,
		                    label: N_Data.Columbia.kr,
		                    pointStyle: N_Data.Columbia.pointStyle,
		                    pointBackgroundColor: N_Data.Columbia.backgroundColor,
		                    pointBorderColor: N_Data.Columbia.pointColor,
		                    borderColor: N_Data.Columbia.lineColor,
		                    borderDash: N_Data.Columbia.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.RepublicofSouthAfrica,
		                    label: N_Data.RepublicofSouthAfrica.kr,
		                    pointStyle: N_Data.RepublicofSouthAfrica.pointStyle,
		                    pointBackgroundColor: N_Data.RepublicofSouthAfrica.backgroundColor,
		                    pointBorderColor: N_Data.RepublicofSouthAfrica.pointColor,
		                    borderColor: N_Data.RepublicofSouthAfrica.lineColor,
		                    borderDash: N_Data.RepublicofSouthAfrica.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Mexico,
		                    label: N_Data.Mexico.kr,
		                    pointStyle: N_Data.Mexico.pointStyle,
		                    pointBackgroundColor: N_Data.Mexico.backgroundColor,
		                    pointBorderColor: N_Data.Mexico.pointColor,
		                    borderColor: N_Data.Mexico.lineColor,
		                    borderDash: N_Data.Mexico.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Spain,
		                    label: N_Data.Spain.kr,
		                    pointStyle: N_Data.Spain.pointStyle,
		                    pointBackgroundColor: N_Data.Spain.backgroundColor,
		                    pointBorderColor: N_Data.Spain.pointColor,
		                    borderColor: N_Data.Spain.lineColor,
		                    borderDash: N_Data.Spain.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Argentina,
		                    label: N_Data.Argentina.kr,
		                    pointStyle: N_Data.Argentina.pointStyle,
		                    pointBackgroundColor: N_Data.Argentina.backgroundColor,
		                    pointBorderColor: N_Data.Argentina.pointColor,
		                    borderColor: N_Data.Argentina.lineColor,
		                    borderDash: N_Data.Argentina.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Chile,
		                    label: N_Data.Chile.kr,
		                    pointStyle: N_Data.Chile.pointStyle,
		                    pointBackgroundColor: N_Data.Chile.backgroundColor,
		                    pointBorderColor: N_Data.Chile.pointColor,
		                    borderColor: N_Data.Chile.lineColor,
		                    borderDash: N_Data.Chile.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Iran,
		                    label: N_Data.Iran.kr,
		                    pointStyle: N_Data.Iran.pointStyle,
		                    pointBackgroundColor: N_Data.Iran.backgroundColor,
		                    pointBorderColor: N_Data.Iran.pointColor,
		                    borderColor: N_Data.Iran.lineColor,
		                    borderDash: N_Data.Iran.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.UnitedKingdom,
		                    label: N_Data.UnitedKingdom.kr,
		                    pointStyle: N_Data.UnitedKingdom.pointStyle,
		                    pointBackgroundColor: N_Data.UnitedKingdom.backgroundColor,
		                    pointBorderColor: N_Data.UnitedKingdom.pointColor,
		                    borderColor: N_Data.UnitedKingdom.lineColor,
		                    borderDash: N_Data.UnitedKingdom.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Bangladesh,
		                    label: N_Data.Bangladesh.kr,
		                    pointStyle: N_Data.Bangladesh.pointStyle,
		                    pointBackgroundColor: N_Data.Bangladesh.backgroundColor,
		                    pointBorderColor: N_Data.Bangladesh.pointColor,
		                    borderColor: N_Data.Bangladesh.lineColor,
		                    borderDash: N_Data.Bangladesh.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.SaudiArabia,
		                    label: N_Data.SaudiArabia.kr,
		                    pointStyle: N_Data.SaudiArabia.pointStyle,
		                    pointBackgroundColor: N_Data.SaudiArabia.backgroundColor,
		                    pointBorderColor: N_Data.SaudiArabia.pointColor,
		                    borderColor: N_Data.SaudiArabia.lineColor,
		                    borderDash: N_Data.SaudiArabia.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.France,
		                    label: N_Data.France.kr,
		                    pointStyle: N_Data.France.pointStyle,
		                    pointBackgroundColor: N_Data.France.backgroundColor,
		                    pointBorderColor: N_Data.France.pointColor,
		                    borderColor: N_Data.France.lineColor,
		                    borderDash: N_Data.France.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Pakistan,
		                    label: N_Data.Pakistan.kr,
		                    pointStyle: N_Data.Pakistan.pointStyle,
		                    pointBackgroundColor: N_Data.Pakistan.backgroundColor,
		                    pointBorderColor: N_Data.Pakistan.pointColor,
		                    borderColor: N_Data.Pakistan.lineColor,
		                    borderDash: N_Data.Pakistan.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Turkey,
		                    label: N_Data.Turkey.kr,
		                    pointStyle: N_Data.Turkey.pointStyle,
		                    pointBackgroundColor: N_Data.Turkey.backgroundColor,
		                    pointBorderColor: N_Data.Turkey.pointColor,
		                    borderColor: N_Data.Turkey.lineColor,
		                    borderDash: N_Data.Turkey.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Italy,
		                    label: N_Data.Italy.kr,
		                    pointStyle: N_Data.Italy.pointStyle,
		                    pointBackgroundColor: N_Data.Italy.backgroundColor,
		                    pointBorderColor: N_Data.Italy.pointColor,
		                    borderColor: N_Data.Italy.lineColor,
		                    borderDash: N_Data.Italy.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Iraq,
		                    label: N_Data.Iraq.kr,
		                    pointStyle: N_Data.Iraq.pointStyle,
		                    pointBackgroundColor: N_Data.Iraq.backgroundColor,
		                    pointBorderColor: N_Data.Iraq.pointColor,
		                    borderColor: N_Data.Iraq.lineColor,
		                    borderDash: N_Data.Iraq.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Germany,
		                    label: N_Data.Germany.kr,
		                    pointStyle: N_Data.Germany.pointStyle,
		                    pointBackgroundColor: N_Data.Germany.backgroundColor,
		                    pointBorderColor: N_Data.Germany.pointColor,
		                    borderColor: N_Data.Germany.lineColor,
		                    borderDash: N_Data.Germany.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTB_data.Philippines,
		                    label: N_Data.Philippines.kr,
		                    pointStyle: N_Data.Philippines.pointStyle,
		                    pointBackgroundColor: N_Data.Philippines.backgroundColor,
		                    pointBorderColor: N_Data.Philippines.pointColor,
		                    borderColor: N_Data.Philippines.lineColor,
		                    borderDash: N_Data.Philippines.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                  
		                ]
		        },
		        options: {
		            maintainAspectRatio: false,
		            title: { display: false },
		            legend: { display: true, position: "bottom", labels: { usePointStyle: true, boxWidth: 6, fontFamily: "Lato", fontSize: 11 } },
		            tooltips: {
		                enabled: true,
		                titleFontFamily: "'Lato'",
		                bodyFontFamily: "'Lato'",
		                bodyFontSize: 11,
		                callbacks: {
		                    label: function(a, b) {
		                        return Number(a.value).toLocaleString();
		                    }
		                }
		            },
		            hover: { mode: null },
		            layout: {
		                padding: {
		                    left: 0,
		                    right: 60,
		                    top: 0,
		                    bottom: 0
		                }
		            },
		            scales: {
		                yAxes: [
		                    {
		                        display: true,
		                        ticks: {
		                            beginAtZero: true,
		                            fontColor: "#666",
		                            fontSize: 10,
		                            fontFamily: "'Lato'"
		                        },
		                        gridLines: {
		                            display: true,
		                            zeroLineColor: "#000"
		                        }
		                    }
		                ],
		                xAxes: [
		                    {
		                        display: true,
		                        ticks: {
		                            fontColor: "#333",
		                            fontSize: 10,
		                            fontFamily: "'Lato'"
		                        },
		                        gridLines: {
		                            display: false
		                        }
		                    }
		                ]
		            },
		            plugins: {
		                datalabels: {
		                    display: function(a) {
		                        if (a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return true;
		                        } else {
		                            return false;
		                        }
		                    },
		                    align: "right",
		                    anchor: "center",
		                    textAlign: "left",
		                    offset: 8,
		                    font: {
		                        family: "Lato",
		                        size: 11,
		                        weight: "bold"
		                    },
		                  /*  color: function(a) {
		                        if (a.datasetIndex === 0) {
		                            return N_Data.USA.fontColor;
		                        } else if (a.datasetIndex === 1) {
		                            return N_Data.Brazil.fontColor;
		                        } else if (a.datasetIndex === 2) {
		                            return N_Data.Russia.fontColor;
		                        } else if (a.datasetIndex === 3) {
		                            return N_Data.UK.fontColor;
		                        } else if (a.datasetIndex === 4) {
		                            return N_Data.Spain.fontColor;
		                        } else if (a.datasetIndex === 5) {
		                            return N_Data.Italy.fontColor;
		                        } else if (a.datasetIndex === 6) {
		                            return N_Data.India.fontColor;
		                        } else if (a.datasetIndex === 7) {
		                            return N_Data.Germany.fontColor;
		                        } else if (a.datasetIndex === 8) {
		                            return N_Data.Peru.fontColor;
		                        } else if (a.datasetIndex === 9) {
		                            return N_Data.Turkey.fontColor;
		                        } else if (a.datasetIndex === 10) {
		                            return N_Data.Iran.fontColor;
		                        } else if (a.datasetIndex === 11) {
		                            return N_Data.France.fontColor;
		                        }
		                    }, */
		                    formatter: function(a, b) {
		                        return a.toLocaleString();
		                    }
		                }
		            }
		        }
		    });
		}
		
		function NPTDChart() {
		    new Chart(document.getElementById("national_patient_trend_daily"), {
		        type: "bar", // bar 타입을 넣어야 Line Point가 중앙정렬 된다.
		        data: {
		            labels: NPTD_data.date,
		            datasets: [
					           
		                {
		                    type: "line",
		                    data: NPTD_data.UnitedStatesofAmerica,
		                    label: N_Data.UnitedStatesofAmerica.kr,
		                    pointStyle: N_Data.UnitedStatesofAmerica.pointStyle,
		                    pointBackgroundColor: N_Data.UnitedStatesofAmerica.backgroundColor,
		                    pointBorderColor: N_Data.UnitedStatesofAmerica.pointColor,
		                    borderColor: N_Data.UnitedStatesofAmerica.lineColor,
		                    borderDash: N_Data.UnitedStatesofAmerica.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Brazil,
		                    label: N_Data.Brazil.kr,
		                    pointStyle: N_Data.Brazil.pointStyle,
		                    pointBackgroundColor: N_Data.Brazil.backgroundColor,
		                    pointBorderColor: N_Data.Brazil.pointColor,
		                    borderColor: N_Data.Brazil.lineColor,
		                    borderDash: N_Data.Brazil.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.India,
		                    label: N_Data.India.kr,
		                    pointStyle: N_Data.India.pointStyle,
		                    pointBackgroundColor: N_Data.India.backgroundColor,
		                    pointBorderColor: N_Data.India.pointColor,
		                    borderColor: N_Data.India.lineColor,
		                    borderDash: N_Data.India.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Russia,
		                    label: N_Data.Russia.kr,
		                    pointStyle: N_Data.Russia.pointStyle,
		                    pointBackgroundColor: N_Data.Russia.backgroundColor,
		                    pointBorderColor: N_Data.Russia.pointColor,
		                    borderColor: N_Data.Russia.lineColor,
		                    borderDash: N_Data.Russia.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Peru,
		                    label: N_Data.Peru.kr,
		                    pointStyle: N_Data.Peru.pointStyle,
		                    pointBackgroundColor: N_Data.Peru.backgroundColor,
		                    pointBorderColor: N_Data.Peru.pointColor,
		                    borderColor: N_Data.Peru.lineColor,
		                    borderDash: N_Data.Peru.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Columbia,
		                    label: N_Data.Columbia.kr,
		                    pointStyle: N_Data.Columbia.pointStyle,
		                    pointBackgroundColor: N_Data.Columbia.backgroundColor,
		                    pointBorderColor: N_Data.Columbia.pointColor,
		                    borderColor: N_Data.Columbia.lineColor,
		                    borderDash: N_Data.Columbia.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.RepublicofSouthAfrica,
		                    label: N_Data.RepublicofSouthAfrica.kr,
		                    pointStyle: N_Data.RepublicofSouthAfrica.pointStyle,
		                    pointBackgroundColor: N_Data.RepublicofSouthAfrica.backgroundColor,
		                    pointBorderColor: N_Data.RepublicofSouthAfrica.pointColor,
		                    borderColor: N_Data.RepublicofSouthAfrica.lineColor,
		                    borderDash: N_Data.RepublicofSouthAfrica.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Mexico,
		                    label: N_Data.Mexico.kr,
		                    pointStyle: N_Data.Mexico.pointStyle,
		                    pointBackgroundColor: N_Data.Mexico.backgroundColor,
		                    pointBorderColor: N_Data.Mexico.pointColor,
		                    borderColor: N_Data.Mexico.lineColor,
		                    borderDash: N_Data.Mexico.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Spain,
		                    label: N_Data.Spain.kr,
		                    pointStyle: N_Data.Spain.pointStyle,
		                    pointBackgroundColor: N_Data.Spain.backgroundColor,
		                    pointBorderColor: N_Data.Spain.pointColor,
		                    borderColor: N_Data.Spain.lineColor,
		                    borderDash: N_Data.Spain.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Argentina,
		                    label: N_Data.Argentina.kr,
		                    pointStyle: N_Data.Argentina.pointStyle,
		                    pointBackgroundColor: N_Data.Argentina.backgroundColor,
		                    pointBorderColor: N_Data.Argentina.pointColor,
		                    borderColor: N_Data.Argentina.lineColor,
		                    borderDash: N_Data.Argentina.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Chile,
		                    label: N_Data.Chile.kr,
		                    pointStyle: N_Data.Chile.pointStyle,
		                    pointBackgroundColor: N_Data.Chile.backgroundColor,
		                    pointBorderColor: N_Data.Chile.pointColor,
		                    borderColor: N_Data.Chile.lineColor,
		                    borderDash: N_Data.Chile.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Iran,
		                    label: N_Data.Iran.kr,
		                    pointStyle: N_Data.Iran.pointStyle,
		                    pointBackgroundColor: N_Data.Iran.backgroundColor,
		                    pointBorderColor: N_Data.Iran.pointColor,
		                    borderColor: N_Data.Iran.lineColor,
		                    borderDash: N_Data.Iran.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.UnitedKingdom,
		                    label: N_Data.UnitedKingdom.kr,
		                    pointStyle: N_Data.UnitedKingdom.pointStyle,
		                    pointBackgroundColor: N_Data.UnitedKingdom.backgroundColor,
		                    pointBorderColor: N_Data.UnitedKingdom.pointColor,
		                    borderColor: N_Data.UnitedKingdom.lineColor,
		                    borderDash: N_Data.UnitedKingdom.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Bangladesh,
		                    label: N_Data.Bangladesh.kr,
		                    pointStyle: N_Data.Bangladesh.pointStyle,
		                    pointBackgroundColor: N_Data.Bangladesh.backgroundColor,
		                    pointBorderColor: N_Data.Bangladesh.pointColor,
		                    borderColor: N_Data.Bangladesh.lineColor,
		                    borderDash: N_Data.Bangladesh.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.SaudiArabia,
		                    label: N_Data.SaudiArabia.kr,
		                    pointStyle: N_Data.SaudiArabia.pointStyle,
		                    pointBackgroundColor: N_Data.SaudiArabia.backgroundColor,
		                    pointBorderColor: N_Data.SaudiArabia.pointColor,
		                    borderColor: N_Data.SaudiArabia.lineColor,
		                    borderDash: N_Data.SaudiArabia.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.France,
		                    label: N_Data.France.kr,
		                    pointStyle: N_Data.France.pointStyle,
		                    pointBackgroundColor: N_Data.France.backgroundColor,
		                    pointBorderColor: N_Data.France.pointColor,
		                    borderColor: N_Data.France.lineColor,
		                    borderDash: N_Data.France.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Pakistan,
		                    label: N_Data.Pakistan.kr,
		                    pointStyle: N_Data.Pakistan.pointStyle,
		                    pointBackgroundColor: N_Data.Pakistan.backgroundColor,
		                    pointBorderColor: N_Data.Pakistan.pointColor,
		                    borderColor: N_Data.Pakistan.lineColor,
		                    borderDash: N_Data.Pakistan.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Turkey,
		                    label: N_Data.Turkey.kr,
		                    pointStyle: N_Data.Turkey.pointStyle,
		                    pointBackgroundColor: N_Data.Turkey.backgroundColor,
		                    pointBorderColor: N_Data.Turkey.pointColor,
		                    borderColor: N_Data.Turkey.lineColor,
		                    borderDash: N_Data.Turkey.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Italy,
		                    label: N_Data.Italy.kr,
		                    pointStyle: N_Data.Italy.pointStyle,
		                    pointBackgroundColor: N_Data.Italy.backgroundColor,
		                    pointBorderColor: N_Data.Italy.pointColor,
		                    borderColor: N_Data.Italy.lineColor,
		                    borderDash: N_Data.Italy.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Iraq,
		                    label: N_Data.Iraq.kr,
		                    pointStyle: N_Data.Iraq.pointStyle,
		                    pointBackgroundColor: N_Data.Iraq.backgroundColor,
		                    pointBorderColor: N_Data.Iraq.pointColor,
		                    borderColor: N_Data.Iraq.lineColor,
		                    borderDash: N_Data.Iraq.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Germany,
		                    label: N_Data.Germany.kr,
		                    pointStyle: N_Data.Germany.pointStyle,
		                    pointBackgroundColor: N_Data.Germany.backgroundColor,
		                    pointBorderColor: N_Data.Germany.pointColor,
		                    borderColor: N_Data.Germany.lineColor,
		                    borderDash: N_Data.Germany.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                           
		                {
		                    type: "line",
		                    data: NPTD_data.Philippines,
		                    label: N_Data.Philippines.kr,
		                    pointStyle: N_Data.Philippines.pointStyle,
		                    pointBackgroundColor: N_Data.Philippines.backgroundColor,
		                    pointBorderColor: N_Data.Philippines.pointColor,
		                    borderColor: N_Data.Philippines.lineColor,
		                    borderDash: N_Data.Philippines.borderDash,
		                    borderWidth: 2,
		                    fill: false,
		                    pointRadius: function(a) {
		                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return "4";
		                        } else {
		                            return "0";
		                        }
		                    }
		                },
                        
		                ]
		        },
		        options: {
		            maintainAspectRatio: false,
		            title: { display: false },
		            legend: { display: true, position: "bottom", labels: { usePointStyle: true, boxWidth: 6, fontFamily: "Lato", fontSize: 11 } },
		            tooltips: {
		                enabled: true,
		                titleFontFamily: "'Lato'",
		                bodyFontFamily: "'Lato'",
		                bodyFontSize: 11,
		                callbacks: {
		                    label: function(a, b) {
		                        return Number(a.value).toLocaleString();
		                    }
		                }
		            },
		            hover: { mode: null },
		            layout: {
		                padding: {
		                    left: 0,
		                    right: 40,
		                    top: 0,
		                    bottom: 0
		                }
		            },
		            scales: {
		                yAxes: [
		                    {
		                        display: true,
		                        ticks: {
		                            beginAtZero: true,
		                            fontColor: "#666",
		                            fontSize: 10,
		                            fontFamily: "'Lato'"
		                        },
		                        gridLines: {
		                            display: true,
		                            zeroLineColor: "#000"
		                        }
		                    }
		                ],
		                xAxes: [
		                    {
		                        display: true,
		                        ticks: {
		                            fontColor: "#333",
		                            fontSize: 10,
		                            fontFamily: "'Lato'"
		                        },
		                        gridLines: {
		                            display: false
		                        }
		                    }
		                ]
		            },
		            plugins: {
		                datalabels: {
		                    display: function(a) {
		                        if (a.dataIndex === a.chart.config.data.labels.length - 1) {
		                            return true;
		                        } else {
		                            return false;
		                        }
		                    },
		                    align: "right",
		                    anchor: "center",
		                    textAlign: "left",
		                    offset: 8,
		                    font: {
		                        family: "Lato",
		                        size: 11,
		                        weight: "bold"
		                    },
		                    /* color: function(a) {
		                        if (a.datasetIndex === 0) {
		                            return N_Data.USA.fontColor;
		                        } else if (a.datasetIndex === 1) {
		                            return N_Data.Brazil.fontColor;
		                        } else if (a.datasetIndex === 2) {
		                            return N_Data.Russia.fontColor;
		                        } else if (a.datasetIndex === 3) {
		                            return N_Data.UK.fontColor;
		                        } else if (a.datasetIndex === 4) {
		                            return N_Data.Spain.fontColor;
		                        } else if (a.datasetIndex === 5) {
		                            return N_Data.Italy.fontColor;
		                        } else if (a.datasetIndex === 6) {
		                            return N_Data.India.fontColor;
		                        } else if (a.datasetIndex === 7) {
		                            return N_Data.Germany.fontColor;
		                        } else if (a.datasetIndex === 8) {
		                            return N_Data.Peru.fontColor;
		                        } else if (a.datasetIndex === 9) {
		                            return N_Data.Turkey.fontColor;
		                        } else if (a.datasetIndex === 10) {
		                            return N_Data.Iran.fontColor;
		                        } else if (a.datasetIndex === 11) {
		                            return N_Data.France.fontColor;
		                        }
		                    }, */
		                    formatter: function(a, b) {
		                        return a.toLocaleString();
		                    }
		                }
		            }
		        }
		    });
		}
	</script>

<jsp:include page="/footer.do"/>