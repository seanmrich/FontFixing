import AppKit

final class Storage: NSTextStorage {
    private var store = NSTextStorage()
}


extension Storage {
    override var string: String {
        store.string
    }
    
    override func attributes(at location: Int, effectiveRange range: NSRangePointer?) -> [NSAttributedString.Key : Any] {
        store.attributes(at: location, effectiveRange: range)
    }
    
    override func replaceCharacters(in range: NSRange, with replacement: String) {
        beginEditing()
        store.replaceCharacters(in: range, with: replacement)
        edited(.editedCharacters, range: range, changeInLength: (replacement as NSString).length - range.length)
        endEditing()
    }
    
    override func setAttributes(_ attrs: [NSAttributedString.Key : Any]?, range: NSRange) {
        beginEditing()
        store.setAttributes(attrs, range: range)
        edited(.editedAttributes, range: range, changeInLength: 0)
        endEditing()
    }
}
