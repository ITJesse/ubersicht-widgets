command: """
    network.widget/lib/network.sh
"""
refreshFrequency: 2000

render: -> """
    <div class="container">
        <span class="fa fa-upload"></span>
        <span class="fa up"></span>
        &nbsp;&nbsp;
        <span class="fa fa-download"></span>
        <span class="fa down"></span>
    </div>
"""

update: (output, domEl) ->
    usage = (bytes) ->
        kb = bytes / 1024
        usageFormat kb

    usageFormat = (kb) ->
        if kb > 1024
            mb = kb / 1024
            " #{parseFloat(mb.toFixed(1))} MB/s"
        else
            " #{parseFloat(kb.toFixed(2))} KB/s"

    updateStat = (sel, currBytes, totalBytes) ->
        percent = (currBytes / totalBytes * 100).toFixed(1) + "%"
        $(domEl).find(".#{sel}").text usage(currBytes)

    args = output.split "^"

    downBytes = (Number) args[0]
    upBytes = (Number) args[1]

    totalBytes = downBytes + upBytes

    updateStat 'down', downBytes, totalBytes
    updateStat 'up', upBytes, totalBytes

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Input
  left: 50%
  transform: translateX(-50%)
  top: 5px
  width: auto
  white-space: nowrap
"""