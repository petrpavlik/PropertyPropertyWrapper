import ReactiveSwift

@propertyWrapper
public struct Observable<Value> {

    private let mutableProperty: ReactiveSwift.MutableProperty<Value>
    public let property: ReactiveSwift.Property<Value>
    public var signal: Signal<Value, Never> {
        return property.signal
    }
    public var producer: SignalProducer<Value, Never> {
        return property.producer
    }

    public var wrappedValue: Value {
        set {
            mutableProperty.value = newValue
        }
        get {
            return mutableProperty.value
        }
    }

    public var projectedValue: Self {
      get { self }
      set { self = newValue }
    }

    public init(wrappedValue: Value) {
        self.mutableProperty = ReactiveSwift.MutableProperty<Value>(wrappedValue)
        self.property =  ReactiveSwift.Property<Value>(mutableProperty)
    }
}
