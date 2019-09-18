# frozen_string_literal: true

step 'I visit the page :path' do |path|
  visit path
end

step 'I click the button :button' do |button|
  click_button button
end

step 'I :whether_to see :text' do |positive, text|
  expectation = positive ? :to : :not_to
  expect(page.body).send expectation, eq(text)
end

placeholder :whether_to do
  match /should not/ do
    false
  end

  match /should/ do
    true
  end
end
