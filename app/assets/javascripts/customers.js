// Function Fetch Customer Results
function fetchCustomerResult() {
	$.get( '/customers/' + $('.customer select').val() + '/my_pet_schedule', function( data ) {
	  $( ".customer-result" ).html( data );
	});
}

// On Load functions
$(function(){
	$('.customer select').change(fetchCustomerResult);
	fetchCustomerResult();
});