import Cocoa


class Document: NSDocument {


    @objc dynamic var employees: [Employee] = []
    
    override init() {
        super.init()
    }
    

    override class var autosavesInPlace: Bool {
        return true
    }
    

    override var windowNibName: NSNib.Name? {
        return NSNib.Name("Document")
    }

    
    override func data(ofType typeName: String) throws -> Data {
        throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
    }

   

}

