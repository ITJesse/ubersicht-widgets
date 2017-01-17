command: "date +\"%H:%M\""

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="time">
    <span class="icon fa fa-clock-o"></span>
    &nbsp;
    <span class="fa"></span>
  </div>
  """

update: (output, el) ->
    $(".time span:nth-child(2)", el).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  text-align: right
  color: #d5c4a1
  font: 12px Input
  right: 10px
  top: 6px
"""
