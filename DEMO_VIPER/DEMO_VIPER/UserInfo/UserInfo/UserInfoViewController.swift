import UIKit

class UserInfoViewController: UIViewController, VIPERView {
    
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var retriveUserInfoDetailsButton: UIButton!
    
    typealias Presenter = UserInfoPresenter
    var presenter: UserInfoPresenter!

    func statusDidChanged() {
        userInfoLabel.text = presenter.userInfoDescription
        
        switch presenter.loadingStatus {
        case .Starting:
            print("starting")
        case .Stopping:
            print("stopping")
        case .None:
            break
        }
    }
    
    override func viewDidLoad() {
        statusDidChanged()
        
        retriveUserInfoDetailsButton.addTarget(self, action: #selector(retriveUserInfoDetailsButtonClicked), for: .touchUpInside)
    }
    
    @objc func retriveUserInfoDetailsButtonClicked() {
        presenter.retriveUserInfoDetails()
    }
}

