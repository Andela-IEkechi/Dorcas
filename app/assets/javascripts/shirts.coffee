# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.button-collapse').sideNav
    menuWidth: 300
    edge: 'right'
    closeOnClick: true
  return
  $('.collapsible').collapsible accordion: false
  return