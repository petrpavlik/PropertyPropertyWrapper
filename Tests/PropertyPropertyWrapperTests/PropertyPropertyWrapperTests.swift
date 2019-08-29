import XCTest
@testable import PropertyPropertyWrapper
import ReactiveSwift

class AccountRepository {

    @Observable private(set) var isPro: Bool = false

    func toggleIsPro() {
        isPro = !isPro
    }
}

final class PropertyPropertyWrapperTests: XCTestCase {
    func testExample() {

        let accountRepository = AccountRepository()

        let isProValue: Bool = accountRepository.isPro

        accountRepository.$isPro.signal.observeValues { value in

        }

    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
