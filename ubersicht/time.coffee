command: "echo Hello World"

refreshFrequency: 10000 # ms

render: -> """
    <div class="time"></div>
"""

style: """
  -webkit-font-smoothing: antialiased
  text-align: center
  color: #d8d8d8
  font: 11px Iosevka Term
  overflow: hidden
  text-overflow: ellipsis
  width: 50%
  left: 25%
  bottom: 8px
"""

# Update function.
update: (output, domEl) ->

  # Fetch the current hour.
  d = new Date()
  hour = d.getHours()
  minutes = d.getMinutes()

  if hour > 12
    hour = hour - 12

  time = hour + ':' + minutes

  # DOM manipulation.
  $(domEl).find('.time').text("#{time}")
