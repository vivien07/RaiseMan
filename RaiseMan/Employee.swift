import Foundation


class Employee: NSObject {
    
    @objc dynamic var name: String? = "employee"
    @objc dynamic var raise: Float = 0.00
    
    override func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws {
        
        let raiseNumber = ioValue.pointee
        if inKey == "raise" && raiseNumber == nil {
            let domain = "UserInputValidationErrorDomain"
            let code = 0
            let userInfo = [NSLocalizedDescriptionKey : "An employee's raise must be a number."]
            throw NSError(domain: domain, code: code, userInfo: userInfo)
        }
        
    }
        
}
