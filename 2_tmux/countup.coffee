$ ->
  updateSince()

updateSince = ->
  startTime = new Date(2005,12,06)
  endTime = new Date()
  timeDiff = endTime - startTime
  timeDiff /= 1000
  seconds = Math.round(timeDiff % 60)
  timeDiff /= 60
  minutes = Math.round(timeDiff % 60)
  timeDiff /= 60
  hours = Math.round(timeDiff % 24)
  timeDiff /= 24
  days = Math.round(timeDiff % 365)
  timeDiff /= 365
  years = Math.round(timeDiff)
  x = '<span id="years">' + years + " Years</span>, " + days + " Days," + hours + " Hours, " + minutes + " Minutes and " + seconds + " Seconds"
  $("#since").html x
  setTimeout updateSince, 1000
