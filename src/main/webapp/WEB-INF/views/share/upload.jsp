
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<jsp:include page="/header.do" />
<style>
table>tbody>tr>th:nth-child(1) {width:200px !important;}
.data_table > table> tbody > tr:nth-child(5) >td {padding:5px;}

#imgmir{
width:210px;
height: 210px;
}
#imgmir > img{
width:200px; 
 height:200px; 
 }


</style>
<script type="text/javascript"
 src="/resources/se4/js/HuskyEZCreator.js" charset="utf-8"></script>
 
 <script type="text/javascript">
function submitContents(elClickedObj){
	
	oEditors.getById["detailcontent"].exec("UPDATE_CONTENTS_FIELD",[]);
	
	try {
		elClickedObj.form.submit();
	} catch (e) {

	}
}

</script>
<script type="text/javascript">
$(document).ready(function() {
	
	//작성버튼 동작
	$("#btnWrite").click(function() {
		
		//스마트에디터의 내용을 <textarea>에 적용하는 함수를 호출한다
		submitContents($("#sub"));
		
		//실제 <form>의 submit 수행
		$("form").submit();
	});
	
	$("#addproduct").click(function(){
		
		$("#protable").append("<tr>"+$("#product").html()+"</tr>");
		
	});
});
</script>
<script type="text/javascript">

</script>
	
	
<form action="/share/boardup.do" method="post" enctype="multipart/form-data">
<div class="container gothic" style="background:white !important"><!-- main_container -->
<div>
	<div id="content" class="content">
		<div>

                     <div class="sub_top">
                         <div class="st_navigation">
                             <ul>
                                 <li><a href="/main.do"><span class="hdn">홈</span></a></li>
                                <li><a href="javascript:void(0);" onclick="">공동구매</a></li>
                                 <li><a href="javascript:void(0);" onclick="">공동구매 등록</a></li>
                             </ul>
                         </div>
                         <div class="st_title">
                             <div class="fl_l"style="font-weight:bold">
                                 <h3><strong>공동구매 란?</strong></h3>
                             </div>
                         </div>
                     </div>
                     
			<!-- s: content -->
			<div class="data_table">
				<table>
					<tbody class="protable">						
					
						<tr>
							<th scope="row">프로젝트분야</th>
							<td class="ta_l">
							<select name = "shareField">
							<option value="li">리빙</option>

							<option value="re">지역재생</option>
							<option value="fo">푸드</option>
							<option value="te">테크</option>
							
							</select></td>
						</tr>
						
						<tr>
							<th scope="row">프로젝트명</th>
							<td class="ta_l"><input type ="text" name = "shareName"></td>
						</tr>
						
						<tr>
							<th scope="row">대표사진</th>
							<td class="ta_l">
								<input type="file" name = "file" id= "imgInput">
								<div id ="imgmir">
								  <img id="image_section" src="#" alt="your image"/>
								  </div>
							</td>
						</tr>
						
						<tr>
							<th scope="row">프로젝트 간략소개</th>
							<td class="ta_l"><input type="text" name="simpleInfo"/></td>
						</tr>
						<tr>
							<th scope="row">프로젝트 내용</th>
							<td class="ta_l">
							<textarea id = "detailcontent" name="shareContent"></textarea>
							</td>
						</tr>
						
						<tr>
							<th scope="row">프로젝트 만료날짜</th>
							<td class="ta_l">
							<input type = "date" name="shareDate"/>
							</td>
						</tr>
						
						<tr>
							<th scope="row">프로젝트 달성금액</th>
							<td class="ta_l">
							<input type = "text" name = "sharemoney"/>
							</td>
						</tr>
						<tr>
							<th scope="row">상품입력창</th>
							<td class="ta_1">
							<button id = "addproduct" type="button">추가</button>
							<button id = "deleteproduct" type="button">삭제</button>
							</td>
						</tr>

								</tbody>
							</table>
							<br>
							<br>
							<div class="sub_top">
						 <div class="st_title">
                             <div class="fl_l"style="font-weight:bold">
                                 <h3><strong>상품입력</strong></h3>
                             </div>
                         </div>
                         <br>
                         <br>
							<table id="protable">
						
						<tr id="product">
							<th scope="row">상품입력</th>
							<td class="ta_l">
							<input type = "text" name = "goodsName" placeholder="상품이름" style="text-align: center;"/>
							<input type = "text" name = "price" placeholder="상품가격" style="text-align: center;"/>
							<input type = "text" name = "goodsStock" placeholder="상품수량" style="text-align: center;"/>
							</td>
						</tr>

						</table>
						</div>
						</div>   
						</div>
						</div>
						</div>
						</div>
					<input type="submit" id="btnWrite" value = "전송">
						
</form>
<div id="pro">

</div>

	<script type="text/javascript">
	
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "detailcontent", //에디터가 적용되는 <textarea>의 id를 입력
	sSkinURI: "/resources/se4/SmartEditor2Skin.html",
	fCreator: "createSEditor2"
})

</script>
<script type="text/javascript">
function readURL(input) {
	 if (input.files && input.files[0]) {
	  var reader = new FileReader();
	  
	  reader.onload = function (e) {
	   $('#image_section').attr('src', e.target.result);  
	  }
	  
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	 
	// 이벤트를 바인딩해서 input에 파일이 올라올때 위의 함수를 this context로 실행합니다.
	$("#imgInput").change(function(){
	   readURL(this);
	});
</script>


<jsp:include page="/footer.do"/>



