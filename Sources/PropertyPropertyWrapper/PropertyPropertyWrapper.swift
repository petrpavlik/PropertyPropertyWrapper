import ReactiveSwift

@propertyWrapper
public struct Propertyx<Value> {

    private let mutableProperty: ReactiveSwift.MutableProperty<Value>
    public let property: ReactiveSwift.Property<Value>

    public var wrappedValue: Value {
        set {
            mutableProperty.value = newValue
        }
        get {
            return mutableProperty.value
        }
    }

    public init(wrappedValue: Value) {
        self.mutableProperty = ReactiveSwift.MutableProperty<Value>(wrappedValue)
        self.property =  ReactiveSwift.Property<Value>(mutableProperty)
    }
}
