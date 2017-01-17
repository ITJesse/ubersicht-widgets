command: "date +\"%b %d %a\""

refreshFrequency: 10000

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="cal">
    <span class="icon fa fa-calendar"></span>
    &nbsp;
    <span class="fa"></span>
  </div>
  """

update: (output, el) ->
    $(".cal span:nth-child(2)", el).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Input
  right: 80px
  top: 6px
"""
