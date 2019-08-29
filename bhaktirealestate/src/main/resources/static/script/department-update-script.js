/**
 * This File is For Department Update Modal
 * Department Ajax Insert
 * Department Validation
 */

$(document).ready(function(){
	
	//----------Department------------
	$("#department_update_form").formValidation({
		framework : 'bootstrap',
		live:'disabled',
		excluded : ":disabled",
		button:{
			selector : "#updatedepartment",
			disabled : "disabled",
		},
		icon : null,
		fields : {
			departmentName:{
				validators: {
					notEmpty: {
						message: 'The Name is required. '
					},
					remote : {
						message : 'This Name is already exist. ',
						url :"/department/department/verify",
						type : 'POST',
						/*data: {
                            
							departmentId : $('#updateDepartmentId').val(),
                            
                        }*/
						data: function(validator, $field, value) {
	                            return {
	                            	departmentId : $('#updateDepartmentId').val()
	                            };
	                        }
					}
				}
			}
		}
	}).on('success.form.fv', function(e) {
		 e.preventDefault();//stop the from action methods
		 $("#updatedepartment").attr("disabled",true);
		 $.post("/department/update", {
			 name: $('#updateDepartmentName').val(),
			 id:$('#updateDepartmentId').val()
		 }, function( data,status ) {
			
			 toastr["success"]("Record Updated....");
			 
			 $('#department_update_modal').modal('toggle');
			 
			 location.reload(true);
			
		 });
	});
	
	$("#updatedepartment").click(function() {
		$('#department_update_form').data('formValidation').validate();
	});
	//----------End Department------------
	
});

//----------Department Function------------
function updateDepartment(row,id)
{  	
	$("#updatedepartment").attr("disabled",false);
	$('#department_update_form').formValidation('resetForm', true);
	
	var crow=$(row).closest('tr');		
	var name=$(crow).find('td:eq(1)').text();

	$('#updateDepartmentName').val(name);
	$('#updateDepartmentId').val(id);
	
}
//----------End Department Function------------

