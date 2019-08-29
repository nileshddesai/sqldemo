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
	
	$('#property_category_edit_modal').on('show.bs.modal', function() {
		$("#updatepropertycategory").attr("disabled",false);
		$('#propertycategory_edit_form').formValidation('resetForm', true);
	});
	
	$("#editpropertycategory").click(function() {
		$('#department_edit_form').data('formValidation').validate();
	});
});

function editPropertyCategory(row, id) {
	
	$('#propertycategory_edit_form').formValidation('resetForm', true);

	var crow=$(row).closest('tr');		
	var name=$(crow).find('td:eq(1)').text();

	$('#updatePropertyCategoryName').val(name);
	$('#propertyCategoryId').val(id);

	$('#property_category_edit_modal').modal('show');
}