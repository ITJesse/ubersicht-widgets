command: "./neteasemusic/music"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="cpu">
    <span class="fa"></span>
    &nbsp;
    <span class="fa"></span>
  </div>
  """

update: (output, el) ->
    if output.length > 0
        music = JSON.parse(output)
        $(".cpu span:nth-child(1)", el).addClass("fa-music")
        $(".cpu span:nth-child(2)", el).text("#{music.songName}")
    else
        $(".cpu span:nth-child(1)", el).removeClass("fa-music")
        $(".cpu span:nth-child(2)", el).text("")


style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Input
  overflow: hidden
  right: 640px
  top: 6px
  width: auto
  max-width: 180px
  white-space: nowrap
"""