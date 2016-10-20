import Foundation
import ObjectiveC

protocol VIPERView: class {
    associatedtype Presenter: VIPERPresenter
    var presenter: Presenter! { get set }
    
    func statusDidChanged()
}

extension VIPERView {
    
    func binding(presenter: Presenter) {
        self.presenter = presenter
        self.presenter.statusDidChanged = statusDidChanged
    }
}
