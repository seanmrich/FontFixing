import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet var window: NSWindow!
    @IBOutlet var textView: NSTextView!


    override func awakeFromNib() {
        textView.string = "tes⌘ting"
        textView.font = systemFont
    }
    
    @IBAction func makeItalic(sender: Any) {
        let italicFont = NSFontManager.shared.convert(systemFont, toHaveTrait: .italicFontMask)
        let commandRange = NSRange(location: 3, length: 1)
        textView.textStorage?.addAttribute(.font, value: italicFont, range: commandRange)
    }
    
    var systemFont: NSFont {
//        NSFont(name: "SFMono-Regular", size: 18)!
        .monospacedSystemFont(ofSize: 18, weight: .regular)
    }
}

