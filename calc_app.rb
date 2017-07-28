require 'sinatra'
require_relative 'calc_func.rb'

get '/' do
	erb :radio_buttons
end

post '/radio_buttons' do
	radio_buttons = params[:radio_buttons]
	redirect '/numbers?radio_buttons=' + '&radio_buttons=' + radio_buttons
end

get '/numbers' do
	radio_buttons = params[:radio_buttons]
	erb :numbers, :locals=> {:radio_buttons=>radio_buttons}
end

post '/numbers' do
	radio_buttons = params[:radio_buttons]
	num1 = params[:num1]
	num2 = params[:num2]
	calculation = calculator(radio_buttons,num1.to_i,num2.to_i)
	redirect '/answer_page?radio_buttons=' + radio_buttons + '&num1=' + num1 + '&num2=' + num2 + '&calculation=' + calculation
end

get '/answer_page' do
	radio_buttons = params[:radio_buttons]
	num1 = params[:num1]
	num2 = params[:num2]
	calculation = params[:calculation]
	erb :answer_page, :locals=> {:radio_buttons=>radio_buttons, :num1=>num1, :num2=>num2, :calculation=>calculation}
end