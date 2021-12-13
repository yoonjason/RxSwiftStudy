import UIKit
import RxSwift


let disposeBag = DisposeBag()

Observable
    .from([0, 1, 2, 3, 4, 5, 6])
    .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
    .map { n in
        print("백그라운드에서 스케쥴러 실행")
    }
    .observe(on: MainScheduler.instance)
    .map{
        print("메인 스케쥴러에서 실행")
    }
    


