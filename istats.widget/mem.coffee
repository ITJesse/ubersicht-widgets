command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="mem">
    <span></span>
    <span class="icon fa fa-hdd-o"></span>
  </div>
  """

update: (output, el) ->
    $(".mem span:nth-child(2)", el).text(" #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Input
  right: 220px
  top: 6px
"""
