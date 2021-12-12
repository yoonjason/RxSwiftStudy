import UIKit
import RxSwift



/**
 combineLatest
 
 */

let disposeBag = DisposeBag()

enum MyError: Error {
    case error
}

let greetings = PublishSubject<String>()
let languages = PublishSubject<String>()

Observable
    .combineLatest(greetings, languages) { lhs, rhs -> String in
    return "\(lhs), \(rhs)"
}
    .subscribe(
    onNext: {
        print($0)
    }
)
    .disposed(by: disposeBag)

greetings.onNext("Hello")
languages.onNext("RxSwift")

//둘 중 하나만 값이 들어가면 안된다.





