$(document).ready(function(){
	
	$("#holder_new_form").formValidation({
		framework : 'bootstrap',
		live:'disabled',
		excluded : ":disabled",
		button:{
			selector : "#saveholder",
			disabled : "disabled",
		},
		icon : null,
		fields : {
			holderName:{
				verbose : false,
				validators: {
					notEmpty: {
						message: 'The Name is required. '
					},
					/* remote : {
						message : 'This Name is already exist. ',
						url : "/department/department/verify",
						type : 'POST',
						async: true
					} */
				}
			},
			mobileNo:{
				verbose : false,
				validators: {
					notEmpty: {
						message: 'The Mobile no. is required. '
					},
					stringLength : {
						max : 10,
						min : 10,
						message : 'The Mobile no. must be 10 digit long. '
					},
					regexp : {
						regexp : /^[0-9+]+$/,
						message : 'The Mobile no. can only consist numerical value. '
					}
				}
			},
			
			propertySize:{
				verbose : false,
				validators: {
					notEmpty: {
						message: 'The Property Size is required. '
					},
				}
			},
			propertyPrice:{
				verbose : false,
				validators: {
					notEmpty: {
						message: 'The Property Price is required. '
					},
				}
			},
		}
	});
	
	$('#holder_new_modal').on('show.bs.modal', function() {
		$('#holder_new_form').formValidation('resetForm', true);
	});
	$('#holder_new_modal').on('shown.bs.modal', function() {
		$("#holderName").focus();
	});
	$("#saveholder").click(function() {
		$('#holder_new_form').data('formValidation').validate();
	});
	
	var timer = null;
	$('#searchBox').keyup(function(e){
		clearTimeout(timer); 
		var searchKey = $(this).val().toLowerCase();
		
		timer = setTimeout(function () {
	       $holders = $("#holder-container").find(".holder-item");
	       $(".holder-item").removeClass("kt-hide");
	       
	       $.each($holders, function () {
	    	   $item = $(this);
	    	   
	    	   var addressLine1 = $item.find("[data-address-line1]").text().trim().toLowerCase();;
	    	   var addressLine2 = $item.find("[data-address-line2]").text().trim().toLowerCase();;
	    	   
	    	   if(!addressLine1.includes(searchKey) && !addressLine2.includes(searchKey)) {
	    		   $item.addClass("kt-hide");
	    	   }
	       });
	       
       }, 500);
	});
});