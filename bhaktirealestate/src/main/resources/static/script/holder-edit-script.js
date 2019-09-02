$(document).ready(function(){
	
	$("#holder_edi_form").formValidation({
		framework : 'bootstrap',
		live:'disabled',
		excluded : ":disabled",
		button:{
			selector : "#updateholder",
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
	
	$(".holder-item").click(function () {
		
		$('#holder_new_form').formValidation('resetForm', true);
		var id = $(this).attr("data-id");
		
		$("#holderId").val(id);
		$("#updateHolderName").val($("#holderName" + id).val());
		$("#updateAddressLine1").val($("#addressLine1" + id).val());
		$("#updateAddressLine2").val($("#addressLine2" + id).val());
		$("#updateMobileNo").val($("#mobileNo" + id).val());
		$("#updatePropertySize").val($("#propertySize" + id).val());
		$("#updatePropertyPrice").val($("#propertyPrice" + id).val());
		$("#updateNote").val($("#note" + id).val());
		
		$('#holder_edit_modal').modal('show');
	});
	
	$('#delete_holder').click(function(e) {
        swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!'
        }).then(function(result) {
            if (result.value) {
                window.location.href = "/holder/" + $("#holderId").val() + "/delete"
            }
        });
    });
	
	$('#holder_edit_modal').on('shown.bs.modal', function() {
		$("#updateHolderName").focus();
	});
	$("#updateholder").click(function() {
		$('#holder_edit_form').data('formValidation').validate();
	});
	
	
});