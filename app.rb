# frozen_string_literal: true

require 'sinatra'
require 'oj'
require 'creatable'

require_relative 'lib/bullet_point.rb'
require_relative 'lib/employment.rb'
require_relative 'lib/links.rb'
require_relative 'lib/projects.rb'

Employment.initialize
Links.initialize
Projects.initialize

get '/' do
  erb :index, layout: :main_layout
end

get '/backend_web' do
  erb :backend_web, layout: :main_layout
end

get '/devops' do
  erb :devops, layout: :main_layout
end

get '/ruby' do
  erb :ruby, layout: :main_layout
end

get '/projects' do
  erb :projects, layout: :main_layout
end
