import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let userInfoRouter = UserInfoRouter(entrance: self)
        userInfoRouter.presentUserInfo()
    }
    
}
