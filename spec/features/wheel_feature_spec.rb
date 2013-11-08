require 'spec_helper'

  		describe 'wheel form' do
  			before(:each) do
    		load "#{Rails.root}/db/seeds.rb" 
  			end
			
			it 'should have a form for creating a wheel' do
				visit new_wheel_path
				expect(page).to have_content 'To create your personalized life'	
			end	


			it 'should show the wheel with click on "create wheel" button'  do
				visit new_wheel_path			
					page.all(:css, '.question').each do |q|
						within q do
							choose 'Strongly agree'
						end
					end
				
				page.find('.homeButton').click
				expect(page).to have_content 'Click on a sector of the wheel'	
			end	

			it 'should raise an error if the user has not selected an answer for every question'  do
				visit new_wheel_path			
				page.find('.homeButton').click
				expect(page).to have_content 'Please fill out all answers'	
			end	

		end

		describe 'individual wheel' do
			before(:each) do
    		load "#{Rails.root}/db/seeds.rb" 
  			end
			

			it 'should show the wheel with click on "create wheel" button'  do
				visit new_wheel_path			
					page.all(:css, '.question').each do |q|
						within q do
							choose 'Strongly agree'
						end
					end
				
				page.find('.homeButton').click
				expect(page).to have_content 'Click on a sector of the wheel'		
			end		
		end	