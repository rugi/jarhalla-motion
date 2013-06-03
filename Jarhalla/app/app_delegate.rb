class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless

    @text_search = NSTextField.alloc.initWithFrame(NSMakeRect(20, 318, 341, 22))
    @text_search.stringValue = "xcode crash"
    @text_search.autoresizingMask = NSViewMinXMargin|NSViewMinYMargin|NSViewWidthSizable
    @mainWindow.contentView.addSubview(@text_search)

    button = NSButton.alloc.initWithFrame(NSMakeRect(384, 310, 82, 32))
    button.title = "Search"
    #button.action = :"search:"
    button.target = self
    button.bezelStyle = NSRoundedBezelStyle
    button.autoresizingMask = NSViewMinXMargin|NSViewMinYMargin
    @mainWindow.contentView.addSubview(button)    
  end
end
