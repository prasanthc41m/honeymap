config =
  markersMaxVisible: 150
  colors:
    src: { stroke: 'darkred', fill: 'red' }
    dst: { stroke: '#383F47', fill: '#F8E23B' }
    scale: [ '#FFFFFF', '#0071A4' ]

jQuery(document).ready ->
  log = new Log(config)
  honeymap = new Honeymap(config)

  jQuery(window).resize ->
    honeymap.fitSize()
    log.fitSize()

  log.add "<b>Welcome to Honeypot Network Project.</b>"
  log.add "Note that these are <b>all</b> honeypots of the Honeypot Network Project."
  log.add ""
  log.add "Built with &#128151; c41m"

  new Feed(honeymap, log, "geoloc.events")
