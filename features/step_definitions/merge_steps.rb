Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes
end


Then /^the article "(.*?)" should have the body "(.*?)"$/ do |article1, body|
  Article.find_by_title(article1).body.should eq body
end
