import UIKit

class UserInfoDetailsViewController: UIViewController, VIPERView {
    typealias Presenter = UserInfoDetailsPresenter
    var presenter: UserInfoDetailsPresenter!
    
    func statusDidChanged() {
        
    }
    
    override func viewDidLoad() {
        self.binding(presenter: presenter)
    }
}
