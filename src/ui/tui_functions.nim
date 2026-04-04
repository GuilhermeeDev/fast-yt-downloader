import illwill, strutils

proc startFastTUI*() =
  illwillInit(fullscreen = true)
  defer: illwillDeinit()

  hideCursor()
  defer: showCursor()

  var running = true
  var selected = 0
  let options = ["Fechar"]

  var w = terminalWidth()
  var h = terminalHeight()
  var tb = newTerminalBuffer(w, h)

  let title = "FAST YT DOWNLOADER"
  let underline = repeat("=", title.len + 2)

  proc draw() =
    tb.clear()
    let titleX = (w div 2) - (title.len div 2)

    tb.write(titleX, 2, title, fgCyan, styleBright)
    tb.write(titleX, 3, underline, fgCyan)

    for i, opt in options:
      let text = if i == selected: "> " & opt else: "  " & opt
      let x = (w div 2) - (text.len div 2)

      if i == selected:
        tb.write(x, 6 + i, text, fgGreen, styleBright)
      else:
        tb.write(x, 6 + i, text)

    tb.display()

  draw()
  while running:
    let key = getKey()

    case key
    of Key.Up:
      selected = (selected - 1 + options.len) mod options.len
      draw() # redraw só quando muda estado

    of Key.Down:
      selected = (selected + 1) mod options.len
      draw()

    of Key.Enter:
      if options[selected] == "Fechar":
        running = false

    of Key.Escape:
      running = false

    else:
      discard