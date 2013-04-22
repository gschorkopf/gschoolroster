$(document).ready(function() {
  $('.thumbnail').on('mouseenter', function() { 
    $(this).css('border-color', 'blue');
    $(this).find('.profile-details').animate({'opacity': '1'}, 300);
  });
  $('.thumbnail').on('mouseleave', function() {
    $(this).css('border-color', '#ddd');
    $(this).find('.profile-details').animate({'opacity': '0'}, 300);
  });
});