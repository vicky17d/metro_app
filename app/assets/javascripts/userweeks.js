$(document).ready(function() {
  $('.edit_userweek input[type=checkbox]').click(function() {
	$(this).parent().parent('form').submit();
  });
 });