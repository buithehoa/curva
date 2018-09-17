# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready page:load", ->
  curveTagList = $('#curveTagList')

  if curveTagList.length
    curveTagList.tokenInput "/tags/search",
      theme: "facebook",
      tokenValue: "name"

    if curveTagList.attr('value')
      tags = curveTagList.attr('value').split(', ')

      tags.forEach (tag) ->
        curveTagList.tokenInput "add", { id: 0, name: tag }

