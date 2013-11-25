

$(document).ready(function () {
  $('#phone').formatter({
    'pattern': '({{999}}) {{999}}-{{9999}}',
    'persistent': false
  });


  $('.form-signin').validate({
      rules: {
        'user[payee_phone]': {
          required: true,
          minlength: 14 /* to play nice with formatter function */
        },
        'user[payer_phone]': {
          required: true,
          minlength: 14 /* to play nice with formatter function */
        },
        'payment[description]': {
          required: true,
          maxlength: 160
        },
        'user[email]' : {
          required: true,
          maxlength: 100
        }
      },
      showErrors: function(errorMap, errorList) {
           /* Overides default error messages */
      }
  });

    $('.form-signin').on('change keyup', function() {
        if($(this).validate().checkForm()) {
            $('#submit-button').removeClass('disabled');
        } else {
            $('#submit-button').addClass('disabled');
        }
    });

  $('#submit-button').addClass('disabled')

  // var submitField = {};

  // $('#submit_button').on('click', function(e) {
  //   e.preventDefault();

  //   // $.each($('#duck-form input'), function(i, formObj) {
  //   //     var name = formObj.name;
  //   //     var val = formObj.value;
  //   //     if (name != "commit") {
  //   //       submitField[name] = val;
  //   //     }
  //   // });

  //  //  $.ajax({
  //  //    url: '/messages',
  //  //    type: "POST",
  //  //    data: submitField,
  //  //    success: function(data) {
  //  //      $('#duck-form').trigger("reset");
  //  //      $('.bubble').animate({ opacity: 1 }, 100, function() {
  //  //        setTimeout(function() {
  //  //          $('.bubble').animate({ opacity: 0 }, 200);
  //  //            }, 1500);
  //  //       });
  //  //      $('#submit_button').addClass('disabled').attr('disabled', true);
  //  //     } /* success */
  //  // });/* $.ajax */
  // }); /* #submit_button click */

});

