//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
var json = JSON.stringify(JSON.parse($(".nowrap").html()), null, 2);
$(".nowrap").html(json);
prettyPrint();
