require 'rubygems'
require 'watir'
require 'watir-webdriver'

site = "http://www.qa.shutterstock.mobi"
browser = Watir::Browser.new

Given(/^I am on the mobi site$/) do
	browser.goto site
end

When(/^I enter each "(.*?)" and search individually$/) do |sterms| 
	sterms = sterms.split(/, /)
	sterms.each do |eachSterm|
		browser.text_field(:name, "q").set "#{eachSterm}"
		browser.send_keys :enter
		sleep(1)
		puts "Results returned for #{eachSterm}" if browser.text.include? 'results' 
	end
end

Then(/^I verify results page$/) do
	puts "yay"
end
