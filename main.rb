$correctFirstName = "testFirstName"
$correctPassword = "p@sssword1234"

$i = 0

def auth_user (firstName, password)
  if password == $correctPassword && firstName == $correctFirstName
    print("You've succesfully signed in")
    return true
  else
    print("Wrong credentials provided")
    return false
  end
end 

while $i < 5
  print('Provide first name: ')
  firstName = gets.chomp

  print('Provide password: ')
  password = gets.chomp

  authenticated = auth_user(firstName, password)

  break if authenticated

  if $i === 4
    print("You've exceeded number of attemps")
  else
    print("Press n to continue or press m to leave")
    userAction = gets.chomp.downcase
    break if userAction == "m"
  end

  $i += 1
end

