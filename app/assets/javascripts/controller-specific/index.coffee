controllerSpecific 'todos', 'index', ->
  $("input[type='checkbox'][data-todo-completed]").click (e) ->
    updateTodoCompleted({
      completed: e.target.checked,
      path: e.target.dataset.path,
      success: (response) ->
        nameNode = $(e.target).closest(".item")
        if response.completed
          nameNode.addClass("completed")
        else
          nameNode.removeClass("completed")
    })
    return

  $(".grid-controls a").click (e) ->
    console.log(e.target)
    $("#wrapper").removeClass()
    grid = $(e.target).closest("a").data("grid")
    $("#wrapper").addClass(grid)

  updateTodoCompleted = (opts) ->
    $.ajax
      url: opts.path
      type: 'PATCH'
      dataType: 'json'
      beforeSend: (xhr) ->
        xhr.setRequestHeader 'X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')
        return
      data: {
        todo: {
          completed: opts.completed
        }
      }
      success: (response) ->
        opts.success(response)
    return

