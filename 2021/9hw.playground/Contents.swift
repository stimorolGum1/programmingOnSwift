//1
import UIKit

struct ButtonViewModel {
    let title: String
}

protocol delegateViewMock {
    func getButtonViewModel() -> ButtonViewModel
    func onButtonPressed(title: String)
}

class ViewMock {
    var buttonViewModel: ButtonViewModel?
    var delegate: delegateViewMock?

    init() {
        self.buttonViewModel = delegate?.getButtonViewModel()
    }

    func click() {
        delegate?.onButtonPressed(title: buttonViewModel?.title ?? "kek")
    }
    
    deinit {
         print("ViewMock deallocated")
     }

}


class ViewControllerMock: delegateViewMock {
    weak var viewMock: ViewMock?
    
    init(viewMock: ViewMock) {
        self.viewMock = viewMock
        setupViews()
    }

    func setupViews() {
        viewMock?.delegate = self
    }

    func getButtonViewModel() -> ButtonViewModel {
        return ButtonViewModel(title: "lol")
    }
    
    func onButtonPressed(title: String) {
        print("click \(title) button")
    }
    
    deinit {
        print("ViewControllerMock deallocated")
    }
}

var viewMock: ViewMock? = ViewMock()

var viewControllerMock: ViewControllerMock? = ViewControllerMock(viewMock: viewMock!)

viewMock?.click()

viewMock = nil

viewControllerMock = nil
