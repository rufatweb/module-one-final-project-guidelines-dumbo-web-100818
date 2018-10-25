require_relative '../config/environment'
$user = nil


def home_screen
  system 'clear'
  puts "                  ================================"
  puts "                  |    Welcome to Trade0verf0w   |"
  puts "                  ================================"

  prompt = TTY::Prompt.new
  resp = prompt.select("Please select from one of the following?", ["Create Account", "Sign In"])
  case resp
  when "Create Account"
    system 'clear'
    sign_up
  when "Sign In"
    system 'clear'
    sign_in
  end
end

home_screen
