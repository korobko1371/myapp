// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require jquery_ujs
//= require rails-ujs

$(document).ready(function() {
	var new_todo = document.getElementById('new_todo');
	new_todo.style.display = "none";
	new_todo.style.visibility = "hidden";
	
	$("#add_todo").click(function(){
		new_todo.style.visibility = "visible";
		new_todo.style.display = "block";
	});
	$("#hide_button").click(function(){
	new_todo.style.display = "none";
	new_todo.style.visibility = "hidden";

	});
	$("#submit_button").click(function(event){
		event.preventDefault();
		$("form#new_todo").submit();
	});
	$("#hide_button").click(function(event){
		window.location.href = "";
	});

});