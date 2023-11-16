<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	/*
	 함수정의
	   - 윈도객체에소속된 함수가된다.
	 */
	let name="global 이순신"
	let msg='global 아직도 3척의 배가있습니다.';
	function head_function(){
		window.document.write("head_function() "+msg+"<br>");
		return;
	}
	function hello1(){
		let name ="local 이순신";
		let msg="local 아직도 3척의 배가있습니다.";
		document.write(name +"님 "+ msg+"[hello1]<br>");
		return;
	} 
	/************function argument **************/
	function hello2(msg){
		/*
		메쏘드 파라메타선언시 let키워드를 사용안함
		*/
		document.write(name+" 님"+msg+"[hello2(msg)]<br>");
	}
	function hello3(name,msg){
			document.write(name+" 님"+msg+"[hello3(name,msg)]<br>");
	} 
	
	function hello4(name,msg,count){
		if(count== undefined){
			count=1;
		}
		for(let i=0;i<count;i++){
			document.write(name+" 님"+msg+"[hello4(name,msg,count)]<br>");
		}
	}
	/************function return **************/
	function add(a,b){
		return a+b;
	}
	function sub(a,b){
		return a-b;
	}
	function div(a,b){
		return a/b;
	}
	function mul(a,b){
		return a*b;
	}
	function alert(msg){
		document.write("<i>내가만든경고함수"+msg+"</i><br>")
	}
</script>

</head>
<body>
<h1>자바스크립트함수</h1><hr>
<div>함수기반언어이다</div>
<script type="text/javascript">
	//함수호출
	window.head_function();
	/*
	ReferenceError: body_end_function is not defined
	body_end_function();
	*/
	hello1();
	hello2("뭐하세요~~~");
	hello2("안녕하세호~~~");
	hello3("제임스","안녕하세호~~~");
	hello3("이소라","뭐하세호~~~");
	hello4("준","여름휴가잘다녀왔어요!!!",6);
	hello4("호","여름휴가안가세요!!!");
	let result=add(1,2);
	document.write('add result:',result,"<br>");
	document.write('sub result:',sub(1,2),"<br>");
	document.write('mul result:',mul(1,2),"<br>");
	document.write('div result:',div(1,2),"<br>");
	window.alert('경고메세지');
</script>

<script type="text/javascript">
	function body_end_function(){
		document.write("body_end_function()<br>");	
	}
</script>
</body>
</html>