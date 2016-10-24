import UIKit

class UserInfoDetailsViewController: UIViewController, VIPERView {
    typealias Presenter = UserInfoDetailsPresenter
    var presenter: UserInfoDetailsPresenter!
    
    @IBOutlet weak var userInfoLabel: UILabel!
    
    func statusDidChanged() {
        userInfoLabel.text = presenter.userInfo
    }
    
    override func viewDidLoad() {
        statusDidChanged()
    }
}
