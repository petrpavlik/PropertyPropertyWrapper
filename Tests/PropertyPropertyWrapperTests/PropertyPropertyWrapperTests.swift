import XCTest
@testable import PropertyPropertyWrapper
import ReactiveSwift

class AccountRepository {

    @Propertyx var isPro: Bool = false

    func toggleIsPro() {
        isPro = !isPro
    }
}

final class PropertyPropertyWrapperTests: XCTestCase {
    func testExample() {

        let accountRepository = AccountRepository()
        let isProValue = accountRepository.isPro

        // error: Value of type 'AccountRepository' has no member '$isPro'
        accountRepository.$isPro

    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
