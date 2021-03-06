<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="EUC-KR"%>



<html lang="ko">


<head>
<meta charset="EUC-KR">


<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <meta name="description" content=""> -->
<!-- 	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<title>상품등록</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"> </script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

	<style>
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
    </style>
    
<script type="text/javascript">


function fncAddProduct(){
	//Form 유효성 검증
 	//var name = document.detailForm.prodName.value;
	//var detail = document.detailForm.prodDetail.value;
	//var manuDate = document.detailForm.manuDate.value;
	//var price = document.detailForm.price.value;
	
	var name = $("input[name='prodName']").val();
	var detail = $("input[name='prodDetail']").val();
	var manuDate = $("input[name='manuDate']").val();
	var price = $("input[name='price']").val();
	
	
	if(name == null || name.length<1){
		alert("상품명은 반드시 입력하여야 합니다.");
		return;
	}
	if(detail == null || detail.length<1){
		alert("상품상세정보는 반드시 입력하여야 합니다.");
		return;
	}
	if(manuDate == null || manuDate.length<1){
		alert("제조일자는 반드시 입력하셔야 합니다.");
		return;
	}
	if(price == null || price.length<1){
		alert("가격은 반드시 입력하셔야 합니다.");
		return;
		
  
	}
	
	$("form").attr("method" , "POST").attr("action" ,"/product/addProduct").attr('enctype','multipart/form-data').submit();
}

	$(function() {
		
		console.log("hihi");
		
		$("#datePicker").datepicker({		
			  showOn: "button",
			  dateFormat: 'yy-mm-dd',
		      buttonImage: "../images/ct_icon_date.gif",
		      buttonImageOnly: true,
		      buttonText: "Select date"
		 });
	
			
		$( "button.btn.btn-primary" ).on("click" , function() {
			
			fncAddProduct();
		});
		 
		$("a[href='#' ]").on("click" , function() {
		
				$("form")[0].reset();
		});
	 });
	
	
</script>
</head>

<body >

	<div class="navbar  navbar-default">
        <div class="container">
        	<a class="navbar-brand" href="/index.jsp">몽돌샵</a>
   		</div>
   	</div>
<div class="container">
	
		<h1 class="bg-primary text-center">상품 등록</h1>   
		
	<form class="form-horizontal">
	
	 <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상품명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="상품이름을 입력하시오">		     
		    </div>	
		  </div>
		  
	  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상품 상세정보</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="상품정보를 입력하시오">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">제조 일자</label>
		    <div class="col-sm-4">
		      <input type="text" name ="manuDate" id="datePicker" class="form-control" placeholder="제조일자를 입력하시오">
		    </div>
		  </div>
		  
		  
		  	  <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">가격</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="가격을 입력하시오" >&nbsp;원
		    </div>
		  </div>
		  
		    <div class="form-group">
		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">상품 이미지</label>
		    <div class="col-sm-4">
		      <input type="file" class="form-control" id="fileName" name="proImage" ><img src=""/>
		    </div>
		  </div>
		  
<!--   <div class="form-group"> -->
<!-- 		<br/><br/> -->
<!-- 		<h3>파일 업로드</h3> -->
<!-- 		<form action="/product/addProduct" method="post" enctype="multipart/form-data"> -->
<!-- 		  <table> -->
<!-- 		    <tr> -->
<!-- 		      <td>Select File</td> -->
<!-- 		      <td><input type="file" name="uploadFile" /></td> -->
<!-- 		      <td> -->
<!-- 		        <button type="submit">Upload</button> -->
<!-- 		      </td> -->
<!-- 		    </tr> -->
<!-- 		  </table> -->
<!-- 		</form> -->
<!-- 	</div> -->
		  
		   <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >등&nbsp;록</button>
			  <a class="btn btn-primary btn" href="#" role="button">취&nbsp;소</a>
		    </div>
		  </div>		 		  
</form>	

	
</div>
</body>
</html>
   	
<!-- <form name="detailForm" enctype="multipart/from-data"> -->

<!-- <table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0"> -->
<!-- 	<tr> -->
<!-- 		<td width="15" height="37"> -->
<!-- 			<img src="/images/ct_ttl_img01.gif" width="15" height="37"/> -->
<!-- 		</td> -->
<!-- 		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;"> -->
<!-- 			<table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 				<tr> -->
<!-- 					<td width="93%" class="ct_ttl01">상품등록</td> -->
<!-- 					<td width="20%" align="right">&nbsp;</td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
<!-- 		</td> -->
<!-- 		<td width="12" height="37"> -->
<!-- 			<img src="/images/ct_ttl_img03.gif"	width="12" height="37"/> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- </table> -->

<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 13px;"> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write"> -->
<!-- 			상품명 <imgsrc="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"> -->
<!-- 		</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<!-- 		<td class="ct_write01"> -->
<!-- 			<table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 				<tr> -->
<!-- 					<td width="105"> -->
<!-- 						<input type="text" name="prodName" class="ct_input_g"  -->
<!-- 									style="width: 100px; height: 19px" maxLength="20"> -->
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write"> -->
<!-- 			상품상세정보 <img	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/> -->
<!-- 		</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<!-- 		<td class="ct_write01"> -->
<!-- 			<input type="text" name="prodDetail" class="ct_input_g"  -->
<!-- 						style="width: 100px; height: 19px" maxLength="10" minLength="6"/> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write"> -->
<!-- 			제조일자 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/> -->
			
			
			
<!-- 		</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<!-- 		<td class="ct_write01">		 -->
		 
<!-- 			<input type="text" name ="manuDate" id="datePicker" class="ct_input_g"   -->
<!-- 						style="width: 100px; height: 19px" maxLength="10" minLength="6"/>  -->
						
<!-- 						
<!-- 							&nbsp;<img src="../images/ct_icon_date.gif" width="15" height="15" />  </p> -->
				
<!-- 								onclick="show_calendar('document.detailForm.manuDate', document.detailForm.manuDate.value)"/> -->
<!-- 								--> 
<!-- 		</td>  -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write"> -->
<!-- 			가격 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/> -->
<!-- 		</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<!-- 		<td class="ct_write01"> -->
<!-- 			<input type="text" name="price" 	class="ct_input_g"  -->
<!-- 						style="width: 100px; height: 19px" maxLength="10">&nbsp;원 -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write">상품이미지</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<!-- 		<td class="ct_write01"> -->
<!-- 			<input		type="file" name="fileName" class="ct_input_g"  -->
<!-- 							style="width: 200px; height: 19px" maxLength="13"/> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- </table> -->

<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;"> -->
<!-- 	<tr> -->
<!-- 		<td width="53%"></td> -->
<!-- 		<td align="right"> -->
<!-- 		<table border="0" cellspacing="0" cellpadding="0"> -->
<!-- 			<tr> -->
<!-- 				<td width="17" height="23"> -->
<!-- 					<img src="/images/ct_btnbg01.gif" width="17" height="23"/> -->
<!-- 				</td> -->
<!-- 				<td background="/images/ct_btnbg02.gif" class="ct_btn01"  style="padding-top: 3px;"> -->
<!-- 					등록 -->
					
<!-- 				</td> -->
<!-- 				<td width="14" height="23"> -->
<!-- 					<img src="/images/ct_btnbg03.gif" width="14" height="23"/> -->
<!-- 				</td> -->
<!-- 				<td width="30"></td> -->
<!-- 				<td width="17" height="23"> -->
<!-- 					<img src="/images/ct_btnbg01.gif" width="17" height="23"/> -->
<!-- 				</td> -->
<!-- 				<td background="/images/ct_btnbg02.gif" class="ct_btn01"	 style="padding-top: 3px;"> -->
<!-- 					취소 -->
					
<!-- 				</td> -->
<!-- 				<td width="14" height="23"> -->
<!-- 					<img src="/images/ct_btnbg03.gif" width="14" height="23"/> -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- </table> -->

<!-- </form> -->