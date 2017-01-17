command: './istats.widget/istats'

refreshFrequency: 3000

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <link rel="stylesheet" href="./assets/iconfont/iconfont.css" />
  <div class="istats">
    <span class="fa fa-thermometer-half"></span>
    <span class="temp fa"></span>
    &nbsp;&nbsp;
    <span class="iconfont icon-fan"></span>
    <span class="fan fa"></span>
  </div>
  """

update: (output, el) ->
    data = JSON.parse(output)
    fan = Math.floor((data.FAN0 + data.FAN1) / 2);
    temp = Math.floor(data.TC0P)
    $(".istats .fan", el).text(" #{fan}")
    $(".istats .temp", el).text(" #{temp}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Input
  right: 322px
  top: 5px
  width: 85px
  white-space: nowrap
  overflow: hidden
"""
