public struct Caculate {
    public private(set) var text = "Hello, World!"
    private var basic: Basic!
    
    public init(isOn: Bool) {
        if isOn {
            basic = Basic()
        } else {
            fatalError("caculate isOff, please open it")
        }
    }
    
    func add(numLeft:Int, numRight:Int) -> Int {
        return basic.add(numLeft: numLeft, numRight: numRight)
    }
    
    func sub(numLeft:Int, numRight:Int) -> Int {
        return basic.add(numLeft: numLeft, numRight: numRight)
    }
}
