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
function customer_insert(){
	
    if(! document.writeform.customer_phone.value == /^01[0179][0-9]{8}$/.test(document.writeform.customer_phone.value) || document.writeform.customer_phone.value==""){
       alert("전화번호를 형식에 맞춰 입력해 주세요.");
       return false;
    }else if(! document.writeform.customer_birth.value== /([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))/g.test(document.writeform.customer_birth.value) || document.writeform.customer_birth.value==""){
       alert("생년월일을 형식에 맞춰 입력해 주세요.");
       return false;
    }else if(document.writeform.customer_gender.value==""){
	      alert("고객 성별을 체크해주세요");
	      return false;
    }else if(! document.writeform.customer_pwd.value== /^[A-Za-z0-9]{6,12}$/.test(document.writeform.customer_pwd.value) || document.writeform.customer_pwd.value==""){
       alert("비밀번호를 형식에 맞춰 입력해 주세요.");
       return false;
    }

}

function addEmp(){
	var nameP = /^[가-힣]{2,4}$/;
	var phoneP = /^01[0179][0-9]{8}$/;
	var bankP = /^[가-힣]{2,6}$/;
	var bankaddP= /^[0-9]*$/g;
	var juminP= /[0-9]{2}(0[1-9]|1[012])(0[1-9]|1[0-9]|2[0-9]|3[01])[012349][0-9]{6}/;
	
	if (!document.addEmpForm.employee_name.value ==nameP.test(document.addEmpForm.employee_name.value)) {
		alert("이름을 확인해주세요");	
		return false; 
	}else if (!document.addEmpForm.employee_jumin.value == juminP.test(document.addEmpForm.employee_jumin.value)) {
		alert("주민번호를 확인하세요");
		return false; 
	} else if (!document.addEmpForm.employee_phone.value == phoneP.test(document.addEmpForm.employee_phone.value)) {
		alert("핸드폰번호를 확인하세요");
		return false; 
	}else if (!document.addEmpForm.employee_bank.value == bankP.test(document.addEmpForm.employee_bank.value)) {
		alert("은행명을 확인하세요");
		return false; 
	}else if (!document.addEmpForm.employee_bankaddress.value == bankaddP.test(document.addEmpForm.employee_bankaddress.value)) {
		alert("계좌번호를 확인하세요");
		return false; 
	}
	
}
function addJob(){
	var nameP = /^[가-힣]{2,4}$/;
	var tpayP = /^[0-9]*$/g;
	var mpayP = /^[0-9]*$/g;
	
	if (!document.addJobForm.job_name.value == nameP.test(document.addJobForm.job_name.value)) {
		alert("직급을 확인하세요");
		return false; 		
	} else if (!document.addJobForm.job_tpay.value == tpayP.test(document.addJobForm.job_tpay.value)) {
		alert("시급을 확인하세요");
		return false; 		
	}else if (!document.addJobForm.job_mpay.value == mpayP.test(document.addJobForm.job_mpay.value)) {
		alert("월급을 확인하세요");
		return false; 
	}
}


function addSalary(){
	var timeP= /^\d{2}$/;
	var timeP= /^\d{1,2}$/;

	 if (!document.addSalaryForm.salary_date.value == timeP.test(document.addSalaryForm.salary_date.value)) {
		alert("월급지급일을 확인해주세요");
		alert("월급지급일을 1~30까지만 입력해주세요" );
		return false; 
	}
}
