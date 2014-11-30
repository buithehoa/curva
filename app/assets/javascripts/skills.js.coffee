# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready page:load", ->
  skillTagList = $('#skillTagList');

  if skillTagList.length
    skillTagList.tokenInput "/tags/search",
      theme: "facebook",
      tokenValue: "name"

    if skillTagList.attr('value')
      tags = skillTagList.attr('value').split(', ')

      tags.forEach (tag) ->
        skillTagList.tokenInput "add", { id: 0, name: tag }

