
SEX_RAND = 'sex-#{rand(2)}'
EXPERIENCE_RAND = 'exp-#{rand(7)}'

Given(/^i can access the toolsqa practice automation form$/) do
  visit('/automation-practice-form')
end

When(/^i fill in the fields in the form with expected types of data$/) do
  
  fill_in 'firstname', with: 'Ollie'
  fill_in 'lastname', with: 'Holden'
  fill_in 'datepicker', with: Date.today


  # radio button selection
  # choose "#{SEX_RAND}"
  # choose "#{EXPERIENCE_RAND}"


  # find element by css selector
  find("#profession-#{rand(2)}").click
  find('#tool-2').click

  # find a option in a dropdown 
  select 'Europe', from: 'continents'
  select 'Wait Commands', from: 'selenium_commands'




end

Then(/^they appear on the page correctly$/) do
  expect(find('firstname').value).to eql('Ollie')
  expect(find('lastname').value).to eql('Holden')
  expect(find('datepicker').value).to eql(Date.today)
  # expect(find('SEX_RAND').selected?).to be true
  # expect(find('EXPERIENCE_RAND').selected?).to be true
  # expect(find('').value).to eql()
  # expect(find('').value).to eql()
  # expect(find('').value).to eql()
  # expect(find('').value).to eql()
end
