Stripe.api_key = 'sk_test_j90XXs22tm69jODJ9TXfjkHo'
STRIPE_PUBLIC_KEY = 'pk_test_XuqOrywu7nSxd6kuDyQbEsTO'
# Rails.configuration.stripe do |config|

#   config.publishable_key = ENV['pk_test_XuqOrywu7nSxd6kuDyQbEsTO'] ||= Rails.application.secrets.stripe_public_key 
#   config.secret_key = ENV['sk_test_j90XXs22tm69jODJ9TXfjkHo'] ||= Rails.application.secrets.stripe_private_key

# end

# Stripe.api_key = Rails.configuration.stripe.secret_key