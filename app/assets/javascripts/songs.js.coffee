# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQery ->
  $('#song_artist_tokens').tokenInput 'artists.json'
  theme: 'facebook'
  prePopulate: $('#song_artist_tokens').data('load')
