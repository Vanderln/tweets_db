$(document).ready(function() {
  $('#shiny_red_tweet_button').click(function(event){
    event.preventDefault();
    $('.container').find('form')[0].reset()
    $('.container p').text("");

    $('.container').append('<p id="spinner">Please wait while we figure out what went wrong.</p>');
    var data = $('input[name=tweet]').val();
    $.post('/tweet', {"tweet" : data} , function(response){
      $('#spinner').remove();
      $('.container').append('<p>' + response + '</p>');

    });
  });
});


//once submitted, show "processing"
//wait for response, show response success
