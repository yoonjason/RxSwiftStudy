import UIKit
import RxSwift

let disposBag = DisposeBag()

let countArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

/**
 Filter
 */
Observable
    .from(countArr)
    .filter {
    $0 % 2 == 0
}
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
    .disposed(by: disposBag)




