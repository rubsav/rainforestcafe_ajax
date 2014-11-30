$(document).ready(function() {

  $('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

    $.getScript('/products?search=' + searchValue);
  });

  $(window).scroll(function() {
    var url = $('.pagination span.next').children().attr('href');
    if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
      console.log(url);
      $('.pagination').text("Fetching more products...");
      return $.getScript(url);
    }
  });

  $('#new_review').on('ajax:beforeSend', function(){
    $('input[type=submit]').val;('Saving....').attr('disabled','disabled');
  });

  $('#new_review').on('ajax:complete', function(){
    $('input[type=submit]').val;('Create Review').removeAttr('disabled');
  });

});  