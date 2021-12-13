import UIKit
import RxSwift

var greeting = "Hello, playground"
let disposeBag = DisposeBag()

Observable
    .just("Hello")
    .map { "\($0), RxSwift"
}
    .subscribe(onNext: {
    print($0)
}
)
    .disposed(by: disposeBag)

Observable
    .from(["with", "Kakao"])
    .map { $0.count }
    .subscribe(onNext: {
    print($0)
})
    .disposed(by: disposeBag)

Observable
    .just("800x600")
    .map { $0.replacingOccurrences(of: "x", with: "/") }
    .map { "https://picsum.photos/\($0)/?random" }
    .map { URL(string: $0) }
    .filter{ $0 != nil }
    .map { try Data(contentsOf: $0!) }
    .map { UIImage(data: $0) }
    .subscribe(
        onNext: { image in
            print(image)
        }
    )
    .disposed(by: disposeBag)


