// Function Fetch Customer Results
function fetchCustomerResult() {
	$.get( '/customers/' + $('#mypet select').val() + '/my_pet_schedule', function( data ) {
	  $( ".customer-result" ).html( data );
	});
}

// On Load functions
$(function(){
	$('#mypet select').change(fetchCustomerResult);
	if ($('#mypet select').length)
		fetchCustomerResult();
});