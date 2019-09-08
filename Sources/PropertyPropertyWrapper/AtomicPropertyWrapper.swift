import ReactiveSwift

@propertyWrapper public struct Atomic<Value> {

    let atomic: ReactiveSwift.Atomic<Value>

    public var wrappedValue: Value {
        set {
            atomic.value = newValue
        }
        get {
            return atomic.value
        }
    }

    public var projectedValue: Self {
      get { self }
      set { self = newValue }
    }

    public init(wrappedValue: Value) {
        atomic = ReactiveSwift.Atomic<Value>(wrappedValue)
    }
}
