<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.shop.cart.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.shop.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
CartService cartService = new CartService();
List<Cart> cartList = cartService.getCartItemByUserId(sUserId);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>쇼핑몰 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">
<style type="text/css" media="screen">
</style>
<script type="text/javascript">
	/*
	 장바구니 비우기 [anchor 클릭시 cart 전체삭제요청 서버로전송]
	 */
	function cart_delete() {
		document.cart_view_form.method = 'POST';
		document.cart_view_form.action = 'cart_delete_action.jsp';
		document.cart_view_form.submit();
	}

	/*
	주문폼요청 [anchor클릭시 선택된 카트의제품을 주문하기위한 주문폼을보여주기]    
	 */
	function cart_view_form_select_order_submit() {
		var cart_item_checkbox_list = document
				.getElementsByName("cart_item_checkbox");
		var isChecked = false;
		for (var i = 0; i < cart_item_checkbox_list.length; i++) {
			if (cart_item_checkbox_list.item(i).checked === true) {
				isChecked = true;
				break;
			}
		}
		if (!isChecked) {
			alert('제품을선택해주세요');
			return;
		}
		document.cart_view_form.buyType.value = 'cart_select';
		document.cart_view_form.method = 'POST';
		document.cart_view_form.action = 'order_create_form.jsp';
		document.cart_view_form.submit();
	}
	/*
	카트아이템한개 선택,해제 체크박스변경시 
	  - 주문앵커 카트아이템카운트변경
	  - cart_view_form input type hidden 변경
	 */
	 function cart_item_checkbox_change() {
			var cart_item_checkbox_list = document
					.getElementsByName("cart_item_checkbox");
			var cart_item_checkbox_selected_count = 0;
			var tot_order_price = 0;

			document.cart_view_form.innerHTML = '';
			document.cart_view_form.innerHTML += "<input type='hidden' name='buyType'>";
			for (var i = 0; i < cart_item_checkbox_list.length; i++) {
				if (cart_item_checkbox_list.item(i).checked === true) {
					/************cart_view_form에 hidden추가***********************/
					document.cart_view_form.innerHTML += "<input type='hidden' name='cart_item_no' value='"
							+ cart_item_checkbox_list.item(i).value + "'>";
					/**************cart_update_form에 가격변경[UI]***************/
					var updateFormId = 'cart_update_form_'
							+ cart_item_checkbox_list.item(i).value;

					var cart_qty = document.getElementById(updateFormId).cart_qty.value;
					var cart_product_unit_price = document
							.getElementById(updateFormId).cart_product_unit_price.value;
					/***************카트 총가격,수량계산***************/
					tot_order_price+=cart_qty*cart_product_unit_price;
					cart_item_checkbox_selected_count++;
				}
			}
			/***************카트 총가격,수량변경[UI]***************/
			document.getElementById('cart_item_select_count').innerHTML = cart_item_checkbox_selected_count;
			document.getElementById('tot_order_price').innerHTML = tot_order_price
					.toLocaleString();

		}
</script>
</head>
<body  bgcolor=#FFFFFF text=#000000
	leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
	<!-- 선택된 cart 아이템을 주문폼으로 전송하기위한폼 -->
	<form name="cart_view_form" style="margin: 0">
		<input type="hidden" name="buyType">
	</form>

	<!-- container start-->

	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
			<!-- include_common_left.jsp start-->
			<jsp:include page="include_common_left.jsp" />
			<!-- include_common_left.jsp end-->
		</div>
		<!-- navigation end-->
		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->

			<!-- include_content.jsp start-->
			<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td height="22">&nbsp;&nbsp;<b>쇼핑몰 - 장바구니 보기</b></td>
								</tr>
							</table> <!--form--> <!-- 
							<form name="f" method="post">
							 -->
							<div id='f'>
								<table align=center width=80% border="0" cellpadding="0"
									cellspacing="1" bgcolor="BBBBBB">
									<tr>
										<td width=60 height=25 align="center" bgcolor="E6ECDE"
											class=t1><font>선택</font></td>
										<td width=40 height=25 align="center" bgcolor="E6ECDE"
											class=t1><font>이미지</font></td>
										<td width=210 height=25 align="center" bgcolor="E6ECDE"
											class=t1><font>강아지 이름</font></td>
										<td width=112 height=25 align="center" bgcolor="E6ECDE"
											class=t1><font>수 량</font></td>
										<td width=146 height=25 align="center" bgcolor="E6ECDE"
											class=t1><font>가 격</font></td>
										<td width=50 height=25 align="center" bgcolor="E6ECDE"
											class=t1><font>비 고</font></td>
									</tr>

									<!-- cart item start -->
									<%
									int tot_price = 0;
									for (Cart cart : cartList) {
										tot_price += cart.getProduct().getP_price() * cart.getCart_qty();
									%>
									<tr>
										<td width=60 height=26 align=center bgcolor="ffffff" class=t1>
											<input type="checkbox" name="cart_item_checkbox"
											onchange="cart_item_checkbox_change();"
											value="<%=cart.getCart_no()%>" checked="checked">
										</td>
										<td width=40 height=26 align=center bgcolor="ffffff" class=t1><img
											src='image/<%=cart.getProduct().getP_image()%>' width="34"
											height="28" /></td>
										<td width=210 height=26 align=center bgcolor="ffffff" class=t1><a
											href='product_detail.jsp?p_no=<%=cart.getProduct().getP_no()%>'><%=cart.getProduct().getP_name()%></a></td>
										<td width=112 height=26 align=center bgcolor="ffffff" class=t1>
											<%=cart.getCart_qty()%>
											<form  id="cart_update_form_<%=cart.getCart_no()%>">
												<input type="hidden" name="cart_no" value="<%=cart.getCart_no()%>"> 
												<input type="hidden" name="cart_qty" value="<%=cart.getCart_qty()%>">
												<input type="hidden" name="cart_product_unit_price" value="<%=cart.getProduct().getP_price()%>">
											</form>
										</td>
										<td width=146 height=26 align=center bgcolor="ffffff" class=t1><%=new DecimalFormat("#,##0").format(cart.getProduct().getP_price() * cart.getCart_qty())%></td>
										<td width=50 height=26 align=center bgcolor="ffffff" class=t1>
											<form action="cart_delete_item_action.jsp" method="post">
												<input type="hidden" name="cart_no"
													value="<%=cart.getCart_no()%>"> <input
													type="submit" value="삭제">
											</form>
										</td>
									</tr>
									<%
									}
									%>
									<!-- cart item end -->



									<tr>
										<td width=640 colspan=6 height=26 class=t1 bgcolor="ffffff">
											<p align=right>
												<br /> 
												<font color='red'>총주문금액 : <span id="tot_order_price"><%=new DecimalFormat("#,##0").format(tot_price)%></span> 원</font>
											</p>
										</td>
									</tr>
								</table>

							</div> <!-- 
							</form> 
							 --> <br />

							<table style="padding-left: 10px" border="0" cellpadding="0"
								cellspacing="1" width="590">
								<tr>
									<td align=center>&nbsp;&nbsp; <a href="product_list.jsp"
										class=m1>계속 구경하기</a>&nbsp;&nbsp; <%
 if (cartList.size() >= 1) {
 %> <a
										href="javascript:cart_view_form_select_order_submit();"
										class=m1> 총 <span style="font-weight: bold;"
											id="cart_item_select_count"></span>개 주문하기[주문폼]
									</a>&nbsp;&nbsp; <a href="javascript:cart_delete();" class=m1>장바구니
											비우기</a>&nbsp;&nbsp; <%
 }
 %>
									</td>
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp" />
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>