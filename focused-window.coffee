command: "echo $(/usr/local/bin/kwmc query space active tag)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc">
    <span class="icon"></span>
    <span class="fa"></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:nth-child(2)", el).text("  #{output}")
    $icon = $(".foc span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Input
  height: 16px
  left: 10px
  overflow: hidden
  white-space: nowrap
  top: 6px
  width: 750px
"""
