def sign_in_and_play 
  visit("/")
  name1 = "Gawain"
  name2 = "Kieran"
  fill_in :name1 , with: name1
  fill_in :name2 , with: name2
  click_button "Submit"
end
