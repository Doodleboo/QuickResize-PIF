function init(plugin)
  function QuickResize(scaleFactor)
    app.command.SpriteSize { ui=false, scale=scaleFactor, method="nearest" }
  end
  
  function QuickResizeAbs(size)
	app.command.SpriteSize { ui=false, width=96, height=96, method="nearest" }
  end

  plugin:newCommand{
    id="QuickResize_96",
    title="Quick Resize 96px",
    group="sprite_size",
    onclick=function() QuickResizeAbs(96) end
  }

  plugin:newCommand{
    id="QuickResize_Triple",
    title="Quick Resize 300%",
    group="sprite_size",
    onclick=function() QuickResize(3) end
  }

end
