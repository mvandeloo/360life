// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require z-sanburst-d3
//= require_tree .
//= modals

$(function() {
	$( "#accordion" ).accordion()
	// $("#accordion").click(function(){
	// 	document.getElementById("accordion").setAttribute('style','background-color:black;')
	// 	$('#accordion').css('background-color','black')
	// });

	$('input:radio').on('change', function(){
		var answerCount = $(this).closest('.question-section').find('input:checked').length

		if(answerCount == 4) {
			$(this).closest('.question-section').prev('h3').find('.section-status').addClass('done');
		}
	});
});

// function(){
// for (i=0;i=<7;i++)
// {
// 	'#ui-accordion-accordion-header-' + i +' img)'+'.hide()';
// }


//    personal_growth=$('#'+$('#ui-accordion-accordion-header-0').attr('aria-controls')+' input:checked').length
//    health_nutrition=$('#'+$('#ui-accordion-accordion-header-1').attr('aria-controls')+' input:checked').length
//    money_finances=$('#'+$('#ui-accordion-accordion-header-2').attr('aria-controls')+' input:checked').length
//    work_career=$('#'+$('#ui-accordion-accordion-header-3').attr('aria-controls')+' input:checked').length
//    home_environment=$('#'+$('#ui-accordion-accordion-header-4').attr('aria-controls')+' input:checked').length
//    partner_relationships=$('#'+$('#ui-accordion-accordion-header-5').attr('aria-controls')+' input:checked').length
//    family_friends=$('#'+$('#ui-accordion-accordion-header-6').attr('aria-controls')+' input:checked').length
//    fun_relaxation=$('#'+$('#ui-accordion-accordion-header-7').attr('aria-controls')+' input:checked').length
//    if(personal_growth >= 4){
// 		$('#ui-accordion-accordion-header-0 img').show();
// };