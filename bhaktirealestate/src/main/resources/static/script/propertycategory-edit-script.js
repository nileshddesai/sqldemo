$(document).ready(function(){
	
	$("#propertycategory_edit_form").formValidation({
		framework : 'bootstrap',
		live:'disabled',
		excluded : ":disabled",
		button:{
			selector : "#updatepropertycategory",
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
	
	$("#editpropertycategory").click(function() {
		$('#propertycategory_edit_form').data('formValidation').validate();
	});
	
	$('#property_category_edit_modal').on('shown.bs.modal', function() {
		$("#updatePropertyCategoryName").focus();
	});
	
});

function editPropertyCategory(id) {
	
	$('#propertycategory_edit_form').formValidation('resetForm', true);	

	$('#updatePropertyCategoryName').val($("#propertyCategoryName" + id).val());
	$('#propertyCategoryId').val(id);

	$('#property_category_edit_modal').modal('show');
}