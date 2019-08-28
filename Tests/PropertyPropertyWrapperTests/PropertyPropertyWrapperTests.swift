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

        accountRepository.$isPro

    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
