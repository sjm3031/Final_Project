function addCafeProduct(){
	var fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf)$/;
	if(! document.addCafeProductModal.cafe_product_img_upload.value== /(\.gif|\.png|\.jpg|\.jpeg)$/i.test(document.addCafeProductModal.cafe_product_img_upload.value)){
		alert('이미지 파일을 넣어주세요.');
		return false;
	}
}
   
function stock_insert(){
	
	 if(! document.stockinsert.stock_price.value== /^[0-9]*$/g.test(document.stockinsert.stock_price.value)){
		alert("금액(원) 입력란에 숫자만 입력해주세요");
		return false;
	}
	else if(! document.stockinsert.stock_upimage.value== /(\.gif|\.png|\.jpg|\.jpeg)$/i.test(document.stockinsert.stock_upimage.value)){
		alert("이미지 형식의 파일을 선택해주세요");
		return false;
	}

}
	
function account_insert(){
	
	if(! document.accountinsert.account_number.value == 
		/^[0-9]*$/g.test(document.accountinsert.account_number.value)){
		alert("사업자 번호 입력란에 숫자만 입력해주세요");
		return false;
	}
	else if(! document.accountinsert.account_email.value == 
		/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i.test(document.accountinsert.account_email.value))
	{
		alert("email입력 란에 email형식으로 입력해주세요");
		return false;
	}

}
