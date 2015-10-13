
$(document).ready(function(){
        //add base class to each input */
	$(':input').addClass("input-base");
	
	$(':submit').addClass("button");
        
        /*toggle focus*/
        $( "#email_form" ).delegate( "*", "focus blur", function( event ) {
		var elem = $( this );
		setTimeout(function() {
		elem.toggleClass( "selected", elem.is( ":focus" ) );
		}, 0);
	});
});
