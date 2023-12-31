<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" type="text/css" href="https://t1.daumcdn.net/top/tiller-pc/h/production/20230801_150342/common.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/form.css">
<style type="text/css">
	/*
	1.tag selector
	*/
	/*
	body {
		background-color: pink;
		font-size: 17pt;
		margin: 0px;
	}
	h3{
		text-align: center;
	}
	form{
		background-color: mistyrose;
		width: 700px;
		border: 1px solid blue;
		
		margin: 10px auto 0px auto;
		padding: 20px;
	}
	th{
		background: #eeeeee;
		font-size: 8pt;
		color: #222;
	}
	*/
	/*
	2.class selector
	*/
	/*
	.TXTFLD{
		border: 1px solid black;
		color: blue;
	}
	.TXTFLD1{
		border: 1px dotted red;
		color: red;
	}
	*/
	/*
	3. id selector
	*/	
	/*
	#jointbl{
		background-color: tomato;
		width: 600px;
	}
	#first-tr{
		background-color:gold;
	}
	*/
	/*
	4. attribute selector
	*/	
	/*
	input[type=submit]{
		background-color:blue; 
		color:yellow;
		font-weight: 900;
	}
	input[type=submit]:hover{
		background-color:yellow; 
		color:blue;
		width:100px;			
		height:100px;			
	}
	*/
</style>

</head>
<body>
	<h3>◆◆◆ 회원가입 ◆◆◆</h3>
	<form  name="join" method="post" action="join.do"
		onsubmit="return checkForm(document.join);">
		<table id="jointbl">
			<tr id="first-tr">
				<th>아이디</th>
				<td><input type="text" size="10" name="id"
					class="TXTFLD"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td ><input type="password" size="10" name="pass"
					class="TXTFLD1"></td>
			</tr>
			<tr>
				<th>비밀번호확인</th>
				<td ><input type="password" size="10" name="repass"
					class="TXTFLD"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td ><input type="text" size="10" name="name"
					class="TXTFLD"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td ><input type="text" size="30" name="addr"
					class="TXTFLD"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td ><input type="radio" name="gender" value="남자">남자
				<input type="radio" name="gender" value="여자"
					checked="checked">여자</td>
			</tr>
			<tr>
				<th>직업</th>
				<td ><select name="job" size="1">
						<option value="직업을선택하세요">직업을선택하세요</option>
						<option value="학생">학생</option>
						<option value="주부">주부</option>
						<option value="회사원">회사원</option>
						<option value="기타">기타</option>
				</select></td>
			</tr>
			<tr>
				<th>취미</th>
				<td ><input type="checkbox" name="hobby" value="컴퓨터"
					checked>컴퓨터 <input type="checkbox" name="hobby" value="낮잠">낮잠
					<input type="checkbox" name="hobby" value="연애">연애 <input
					type="checkbox" name="hobby" value="운동">운동 <input
					type="checkbox" name="hobby" value="기타">기타</td>
			</tr>
			<tr>
				<td><input type="submit" value="가입"></td>
				<td><input type="reset" value="취소"></td>
			</tr>

		</table>
	</form>
</body>
</html>
