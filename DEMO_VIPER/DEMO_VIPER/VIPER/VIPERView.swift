import Foundation
import ObjectiveC

protocol VIPERView: class {
    var viewModel: VIPERPresenter { get set }
    
    func statusDidChanged()
}

extension VIPERView {
    
    func binding(viewModel: VIPERPresenter) {
        self.viewModel = viewModel
        self.viewModel.statusDidChanged = statusDidChanged
    }
}
