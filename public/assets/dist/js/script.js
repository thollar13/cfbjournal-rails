(function($, window){


	var wb = {
		setup : {
			test : function() {
				return true;
			},
			run : function() {
				$(document).on('touchstart click', '.mobile-nav-trigger', function() {
					$('nav').addClass('show-mobile');
					$('header').css('position', 'absolute');
				});
			}
		},
		setupStripe : {
		  test : function() {
		    return true;
		  },
		  run : function() {
		      $('#new_payment').submit(function(event) {
		        var $form = $(this);

		        // Disable the submit button to prevent repeated clicks
		        $form.find('button').prop('disabled', true);

		        Stripe.card.createToken($form, stripeResponseHandler);

		        // Prevent the form from submitting with the default action
		        return false;
		      });
		      function stripeResponseHandler(status, response) {
		          var $form = $('#new_payment');
		          if (response.error) {
		            // Show the errors on the form
		            $form.find('.payment-errors').text(response.error.message);
		            $form.find('button').prop('disabled', false);
		          } else {
		            // response contains id and card, which contains additional card details
		            var token = response.id;
		            // Insert the token into the form so it gets submitted to the server
		            $form.append($('<input type="hidden" name="stripeToken" />').val(token));
		            // and submit
		            $form.get(0).submit();
		          }
		        };
		  }
		},
		slickJs : {
			test : function() {
				return true;
			},
			run : function() {
				$('.picks-slider').slick({
					
				});
			}
		},
		selectTeams : {
			test : function() {
				return true;
			},
			run : function() {
				$(document).on('touchstart click', '.team', function() {
					var team, team_id
					team = $(this).html();
					team_id = $(this).data('id');
					$(this).addClass('active-team').siblings().removeClass('active-team');
					$('#pick_acc_champ').val(team_id);
					$(this).parent().siblings().find('.champion').html(team);
				});
			}
		}
	};

	for (var key in wb){
		if (wb[key].test()){
			wb[key].run();
		}
	}

}(jQuery, window));
