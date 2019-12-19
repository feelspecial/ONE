$('.b-left__body__box__image').click(function () {
  $('#full-screen-image').addClass('isFullScreen');
  $('#full-screen-image').css('background-image');
});
$('#full-screen-image').click(function () {
  $(this).removeClass('isFullScreen');
});