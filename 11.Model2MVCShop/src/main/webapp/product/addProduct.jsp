<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	
	<style>
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
    </style>   
	<script type="text/javascript">
	
	 $(function() {
		 
		 	$( "#button1" ).on("click" , function() {
				
				//$(window.parent.frames["rightFrame"].document.location).attr("href","/product/addProductView");
				self.location = "/product/addProductView.jsp";
			});
			
		 	$( "#button2").on("click" , function() {
				
				//$(window.parent.frames["rightFrame"].document.location).attr("href","/product/listProduct?menu=manage");
				self.location = "/product/listProduct?menu=manage";
			});
			
	 });
	 
</script>

</head>
<body >


<jsp:include page="/layout/toolbar.jsp" />

<div class="container">

<div class="page-header">
	       <h3 class=" text-info">��� ��ǰ ��ȸ</h3>
	       <h5 class="text-muted">���Ӱ� <strong class="text-danger">����Ͻ� ��ǰ</strong>�Դϴ�.</h5>
	    </div>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>��ǰ��</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodName}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>��ǰ ������</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodDetail}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>��������</strong></div>
			<div class="col-xs-8 col-md-4">${product.manuDate}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>����</strong></div>
			<div class="col-xs-8 col-md-4">${product.price}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>��ǰ�̹���</strong></div>
			<div class="col-xs-8 col-md-4">${product.fileName}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" id="button1" class="btn btn-primary">�߰����</button>
	  		</div>
		</div>
		
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" id="button2" class="btn btn-primary">Ȯ��</button>
	  		</div>
		</div>
		<br/>
		
 	</div>

</body>
</html>






<!-- <table width="100%" height="37" border="0" cellpadding="0" cellspacing="0"> -->
<!-- 	<tr> -->
<!-- 		<td width="15" height="37"> -->
<!-- 			<img src="/images/ct_ttl_img01.gif" 	width="15" height="37"/> -->
<!-- 		</td> -->
<!-- 		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;"> -->
<!-- 			<table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 				<tr> -->
<!-- 					<td width="93%" class="ct_ttl01">��ǰ���</td> -->
<!-- 					<td width="20%" align="right">&nbsp;</td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
<!-- 		</td> -->
<!-- 		<td width="12" height="37"> -->
<!-- 			<img src="/images/ct_ttl_img03.gif" width="12" height="37"/> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- </table> -->

<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 13px;"> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write"> -->
<!-- 			��ǰ�� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/> -->
<!-- 		</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<!-- 		<td class="ct_write01"> -->
<!-- 			<table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 				<tr> -->
<%-- 					<td width="105">${product.prodName }</td> --%>
<!-- 					<td></td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->

<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write"> -->
<!-- 			��ǰ������ <img  src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/> -->
<!-- 		</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<%-- 		<td class="ct_write01">${product.prodDetail }</td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->

<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write"> -->
<!-- 			��������<img	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/> -->
<!-- 		</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<%-- 		<td class="ct_write01">${product.manuDate }</td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write"> -->
<!-- 			����<img 	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/> -->
<!-- 		</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<%-- 		<td class="ct_write01">${product.price }</td> --%>
<!-- 	</tr> -->

<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td width="104" class="ct_write">��ǰ�̹���</td> -->
<!-- 		<td bgcolor="D6D6D6" width="1"></td> -->
<%-- 		<td class="ct_write01">${product.fileName }</td> --%>



<!-- 			<!-- ���̺� ���� --> 
<!-- 			<table border="0" cellspacing="0" cellpadding="0"> -->
<!-- 				<tr> -->
<!-- 					<td height="26"> -->
<!-- 						<img src="/images/uploadFiles/../../images/empty.GIF"/> -->
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td height="1" colspan="3" bgcolor="D6D6D6"></td> -->
<!-- 	</tr> -->
<!-- </table> -->

<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;"> -->
<!-- 	<tr> -->
<!-- 		<td width="53%"></td> -->
<!-- 		<td align="right"> -->
<!-- 			<table border="0" cellspacing="0" cellpadding="0"> -->
<!-- 				<tr>					 -->
<!-- 					<td width="17" height="23"> -->
<!-- 						<img src="/images/ct_btnbg01.gif" width="17" height="23"/> -->
<!-- 					</td> -->
<!-- 					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"> -->
<!-- 						Ȯ�� -->
<!-- 					</td> -->
<!-- 					<td width="14" height="23"> -->
<!-- 						<img src="/images/ct_btnbg03.gif" width="14" height="23"/> -->
<!-- 					</td> -->
<!-- 					<td width="17" height="23"> -->
<!-- 						<img src="/images/ct_btnbg01.gif" width="17" height="23"/> -->
<!-- 					</td> -->
<!-- 					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;"> -->
<!-- 					�߰���� -->
<!-- 					</td> -->
<!-- 					<td width="14" height="23"> -->
<!-- 						<img src="/images/ct_btnbg03.gif" width="14" height="23"/> -->
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- </table> -->
