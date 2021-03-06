require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
require 'pry'
also_reload 'lib/**/*.rb'

get('/') do
  redirect to('/words')
end

get('/words') do
  @words = Word.all
  erb(:words)
end

get('/words/new') do
  erb(:new_word)
end

post('/words') do
  name = params[:word_name]
  word = Word.new({name: name})
  word.save
  redirect to('/words')
end

get('/words/:id') do
  @word = Word.find(params[:id].to_i())
  erb(:word)
end

get('/words/:id/edit') do
  @word = Word.find(params[:id].to_i())
  erb(:edit_word)
end

patch('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.update(params[:name])
  redirect to('/words')
end

delete('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.delete
  redirect to('/words')
end

get('/words/:id/definitions/:definition_id') do
  @meaning = Definition.find(params[:definition_id].to_i())
  erb(:definition)
end

post('/words/:id/definitions') do
  @word = Word.find(params[:id].to_i())
  meaning = Definition.new({meaning: params[:meaning], word_id: @word.id})
  meaning.save
  erb(:word)
end

patch('/words/:id/definitions/:definition_id') do
  @word = Word.find(params[:id].to_i())
  meaning = Definition.find(params[:definition_id].to_i())
  meaning.update(params[:definition], @word.id)
  erb(:word)
end

delete('/words/:id/definitions/:definition_id') do
  meaning = Definition.find(params[:definition_id].to_i())
  meaning.delete
  @word = Word.find(params[:id].to_i())
  erb(:word)
end
