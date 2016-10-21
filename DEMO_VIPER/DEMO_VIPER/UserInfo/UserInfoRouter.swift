import UIKit

class UserInfoRouter {
    
    private let entrance: UIViewController
    private var current: UIViewController
    
    init(entrance: UIViewController) {
        self.entrance = entrance
        self.current = entrance
    }
    
    func presentUserInfo() {
        
        let destination = UserInfoViewController()
        let presenter = UserInfoPresenter()
        destination.binding(presenter: presenter)
        
        showViewController(destinationViewController: destination)
    }
    
    func presentUserInfoDetails(presenter: UserInfoDetailsPresenter) {
        
        let destination = UserInfoDetailsViewController()
        destination.binding(presenter: presenter)
        
        showViewController(destinationViewController: destination)
    }
    
    
    private func showViewController(destinationViewController: UIViewController) {
        current.show(destinationViewController, sender: nil)
        current = destinationViewController
    }
}
