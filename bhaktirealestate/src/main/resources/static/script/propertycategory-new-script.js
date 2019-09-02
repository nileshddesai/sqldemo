$(document).ready(function(){
	
	$("#propertycategory_new_form").formValidation({
		framework : 'bootstrap',
		live:'disabled',
		excluded : ":disabled",
		button:{
			selector : "#savepropertycategory",
			disabled : "disabled",
		},
		icon : null,
		fields : {
			propertyCategoryName:{
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
			}
		}
	});
	
	$('#property_category_new_modal').on('show.bs.modal', function() {
		$("#savepropertycategory").attr("disabled",false);
		$('#propertycategory_new_form').formValidation('resetForm', true);
	});
	$('#property_category_new_modal').on('shown.bs.modal', function() {
		$("#propertyCategoryName").focus();
	});
	$("#savepropertycategory").click(function() {
		$('#propertycategory_new_form').data('formValidation').validate();
	});
});