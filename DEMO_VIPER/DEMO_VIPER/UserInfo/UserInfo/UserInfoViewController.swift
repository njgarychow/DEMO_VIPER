import UIKit

class UserInfoViewController: UIViewController, VIPERView {
    
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var retriveUserInfoDetailsButton: UIButton!
    
    typealias Presenter = UserInfoPresenter
    var presenter: UserInfoPresenter!

    func statusDidChanged() {
        userInfoLabel.text = presenter.userInfoDescription
    }
    
    override func viewDidLoad() {
        statusDidChanged()
        
        retriveUserInfoDetailsButton.addTarget(self, action: #selector(retriveUserInfoDetailsButtonClicked), for: .touchUpInside)
    }
    
    @objc func retriveUserInfoDetailsButtonClicked() {
        presenter.retriveUserInfoDetails()
    }
}

