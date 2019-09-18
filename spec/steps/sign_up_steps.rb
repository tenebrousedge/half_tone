# frozen_string_literal: true

step 'I enter the username/email :username and (the) password :password' do |username, password|
  @form_attributes = { username: username, password: password }

  within('sign-up-form') do
    fill_in 'Username or Email', with: username
    fill_in 'Password', with: password
  end
end

step 'I have created an account' do
  user = User.find_by(email: @form_attributes[:email])
  expect(user).to be_present
end
