import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    @IBOutlet var textView: NSTextView!


    override func awakeFromNib() {
        textView.layoutManager?.replaceTextStorage(Storage())
        textView.string = "tes⌘ting"
        textView.font = systemFont
    }
    
    @IBAction func makeItalic(sender: Any) {
        let italicFont = NSFontManager.shared.convert(systemFont, toHaveTrait: .italicFontMask)
        textView.textStorage?.addAttribute(.font, value: italicFont, range: NSRange(location: 3, length: 1))
    }
    
    var systemFont: NSFont {
//        NSFont(name: "SFMono-Regular", size: 18)!
        .monospacedSystemFont(ofSize: 18, weight: .regular)
    }
}

