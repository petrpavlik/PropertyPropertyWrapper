# PropertyPropertyWrapper

Property wrapper providing more convenient syntax for `ReactiveSwift` `Property`.

## Before

```swift
import ReactiveSwift

class AccountRepository {
    private(set) lazy var isPro = Property<Bool>(mutableIsPro)
	  private let mutableIsPro = MutableProperty<Bool>(false)
}

let accountRepository = AccountRepository()

let isPro: Bool = accountRepository.isPro.value

accountRepository.isPro.signal.observeValues { value in
  // ...
}
```


## Now

```swift
import ReactiveSwift

class AccountRepository {
    @Observable private(set) var isPro: Bool = false
}

let accountRepository = AccountRepository()

let isPro: Bool = accountRepository.isPro

accountRepository.$isPro.signal.observeValues { value in
  // ...
}
```
