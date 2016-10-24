enum LoadingStatus {
    case Starting
    case Stopping
    case None
}

class UserInfoPresenter: VIPERPresenter {
    
    private let interactor: UserInfoInteractor = UserInfoInteractor()
    private let router: UserInfoRouter
    private(set) var loadingStatus: LoadingStatus = .None
    
    init(router: UserInfoRouter) {
        self.router = router
    }
    
    var userInfoDescription: String {
        return "UserName: \(interactor.userName), Age: \(interactor.userAge)"
    }
    
    func retriveUserInfoDetails() {
        
        loadingStatus = .Starting
        statusDidChanged?()
        
        weak var weakSelf = self
        interactor.retriveUserInfoDetails { entity in
            if let strongSelf = weakSelf {
                strongSelf.loadingStatus = .Stopping
                strongSelf.statusDidChanged?()
                
                let presenter = UserInfoDetailsPresenter(entity: entity, router: strongSelf.router)
                strongSelf.router.presentUserInfoDetails(presenter: presenter)
            }
        }
    }
}
