import UIKit

class UserInfoViewController: UIViewController, VIPERView {
    
    typealias Presenter = UserInfoPresenter
    var presenter: UserInfoPresenter! = UserInfoPresenter()

    func statusDidChanged() {
        
    }
    
    override func viewDidLoad() {
        self.binding(presenter: presenter)
    }
    
}

