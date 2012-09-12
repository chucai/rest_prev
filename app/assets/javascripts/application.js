//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
if($(".nowrap").size() != 0 ){
	var json = JSON.stringify(JSON.parse($(".nowrap").html()), null, 2);
	$(".nowrap").html(json);
	prettyPrint();
}
$(function(){
	$("textarea").elastic();
});
