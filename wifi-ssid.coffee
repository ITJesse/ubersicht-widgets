command: "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep SSID | grep -v BSSID | awk '{split($0, a, \":\"); print a[2]}'"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="ssid">
    <span class="icon"></span>
    &nbsp;
    <span class="fa"></span>
  </div>
  """

update: (output, el) ->
    $(".ssid span:nth-child(2)", el).text("#{output}")
    $icon = $(".ssid span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output)}")

icon: (ssid) =>
    return if ssid
        "fa-wifi"
    else
        ""

style: """
  -webkit-font-smoothing: antialiased
  white-space: nowrap
  text-align: right
  color: #d5c4a1
  font: 12px Input
  height: 16px
  right: 480px
  top: 6px
  overflow: hidden
  width: auto
  max-width: 140px
"""
