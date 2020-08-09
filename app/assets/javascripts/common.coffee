@controllerSpecific = (controller, action, callback) ->
  $(document).on 'turbolinks:load', ->
    if $('body').data('controller') == controller
      if action
        return unless $('body').data('action') == action
      callback()
    return

  # If page has a body with data-controller set then controller specific JS is loaded on demand and turbolinks:load event already fired
  # Check for this particular case
  if $('body').data('controller') == controller
    if action
      return unless $('body').data('action') == action
    callback()