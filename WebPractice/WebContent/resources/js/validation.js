function productAddCheck(){
	// addProduct.jsp 파일에서 input 태그에 id값을 통해서 value값을 가져온다.
	// getElementById로 가져온 값은 value 값이 아니다. 명심 !!
	var id = document.getElementById("product_id");
	var name = document.getElementById("product_name");
	var price = document.getElementById("product_price");
	var stock = document.getElementById("product_stock");
	
	// 상품 ID(상품 코드) 검사
	if(!check(/^P[\d]{4,10}$/, id, "상품 ID 유효성 검사 실패 !")){
		return ;
	}
	// 상품명 검사
	if(name.value.length < 4 || name.value.length > 12){
		alert("상품명은 4글자 이상 12글자 이하입니다.");
		name.select();
		name.focus();
		return;
	}
	// 상품 가격 검사
	if(price.value==""  || isNaN(price.value)){
		alert("상품 가격을 입력해주세요.");
		price.select();
		price.focus();
		return ;
	}else if(price.value < 0){
		alert("상품 가격은 정수로 입력해주세요.");
		price.select();
		price.focus();
		return;
	}
	// 상품 재고 수량 검사
	if(stock.value == "" || isNaN(stock.value)){
		alert("상품 재고 수량을 입력해주세요.");
		stock.select();
		stock.focus();
		return;
	}else if (stock.value < 0){
		alert("상품 재고 수량을 0개 이상으로 입력해주세요.");
		stock.select();
		stock.focus();
		return ;
	}
	
	// check함수는 매개변수를 regExp(정규표현식), e (유효성 검사 대상 값), msg(오류메세지)로 받는다.
	// 즉, 매개변수에 해당하는 유효성 검사를 검증하는 함수이다.
	function check(regExp, e, msg){
		if (!regExp.test(e.value)){
			alert(msg);
			e.select();
			e.focus();
			return false;
			
		}else{
			return true;
		}
	}
	document.newProduct.submit();
}