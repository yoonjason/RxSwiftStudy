import UIKit
import RxSwift

var greeting = "Hello, playground"

let observable = Observable.of(1, 2, 3)
let disposeBag = DisposeBag()

observable.subscribe { element in
    print(element)
} onError: { error in
    print(error)
} onCompleted: {
    print("onCompleted")
}
    .disposed(by: disposeBag)

let apple = "apple"
let banana = "banana"
let orange = "orange"

Observable
    .of(apple, banana, orange)
    .subscribe (
    onNext: { element in
        print(element)
    },
    onError: { error in
        print(error)
    },
    onCompleted: {
        print("onCompleted")
    }
)
    .disposed(by: disposeBag)

let fruitArr = ["apple", "banana", "orange"]

Observable
    .from(fruitArr)
    .subscribe(
    onNext: { element in
        print(element)
    },
    onError: { error in
        print(error)
    },
    onCompleted: {
        print("onCompleted")
    }
)
    .disposed(by: disposeBag)



