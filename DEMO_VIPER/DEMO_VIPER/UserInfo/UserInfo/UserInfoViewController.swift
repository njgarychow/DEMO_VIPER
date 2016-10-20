import UIKit

class UserInfoViewController: UIViewController, VIPERView {
    
    @IBOutlet weak var userInfoLabel: UILabel!
    
    typealias Presenter = UserInfoPresenter
    var presenter: UserInfoPresenter! = UserInfoPresenter()

    func statusDidChanged() {
        userInfoLabel.text = presenter.userInfoDescription
    }
    
    override func viewDidLoad() {
        self.binding(presenter: presenter)
        
        statusDidChanged()
    }
    
}

