import UIKit

class UserInfoViewController: UIViewController, VIPERView {
    
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var retriveUserInfoDetailsButton: UIButton!
    @IBOutlet weak var loadingStatusLabel: UILabel!
    
    typealias Presenter = UserInfoPresenter
    var presenter: UserInfoPresenter!

    func statusDidChanged() {
        userInfoLabel.text = presenter.userInfoDescription
        
        switch presenter.loadingStatus {
        case .Starting:
            loadingStatusLabel.text = "starting loading"
        case .Stopping:
            loadingStatusLabel.text = "stopping loading"
        case .None:
            loadingStatusLabel.text = ""
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

