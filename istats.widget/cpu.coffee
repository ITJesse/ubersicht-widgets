command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="cpu">
    <span class="icon"></span>
    <span class="fa"></span>
  </div>
  """

update: (output, el) ->
    cpu = Math.floor(output);
    if cpu > 100
      cpu = 100 
    $(".cpu span:nth-child(2)", el).text(" #{cpu}")
    $icon = $(".cpu span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bar-chart")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Input
  overflow: hidden
  right: 245px
  top: 6px
  width: 60px
  white-space: nowrap
"""
