$(document).on 'turbolinks:load', ->
  $("form span.dot[data-todo-color]").click (e) ->
    currentDot = $(e.target).closest("span.dot[data-todo-color]")
    colorDots = $("form span.dot[data-todo-color]")
    chosenColor = if currentDot.hasClass("chosen") then null else currentDot.data("todoColor")
    colorDots.removeClass("chosen")
    colorDots.filter("[data-todo-color='" + chosenColor + "']").addClass("chosen")
    $("#todo_color").val(chosenColor)
