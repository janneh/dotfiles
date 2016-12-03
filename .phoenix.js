const spec = {
  toLeft: function () {
    const window = Window.focused()
    const screen = window.screen().flippedFrame()

    window.setFrame({
      x: screen.x,
      y: screen.y,
      width: screen.width * (4 / 9),
      height: screen.height
    })
  },

  toRight: function () {
    const window = Window.focused()
    const screen = window.screen().flippedFrame()

    window.setFrame({
      x: screen.width * (5 / 9),
      y: screen.y,
      width: screen.width * (5 / 9),
      height: screen.height
    })
  },

  fullscreen: function () {
    Window.focused().maximise()
  }
}

Key.on("space", ["shift", "alt"], spec.fullscren)
Key.on("h", ["shift", "alt"], spec.toLeft)
Key.on("l", ["shift", "alt"], spec.toRight)
