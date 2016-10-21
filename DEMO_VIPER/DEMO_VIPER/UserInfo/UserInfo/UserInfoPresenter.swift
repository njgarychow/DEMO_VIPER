class UserInfoPresenter: VIPERPresenter {
    
    let interactor: UserInfoInteractor = UserInfoInteractor()
    private let router: UserInfoRouter
    
    init(router: UserInfoRouter) {
        self.router = router
    }
    
    var userInfoDescription: String {
        return "UserName: \(interactor.userName), Age: \(interactor.userAge)"
    }
    
    func retriveUserInfoDetails() {
        weak var weakSelf = self
        interactor.retriveUserInfoDetails { entity in
            if let strongSelf = weakSelf {
                strongSelf.statusDidChanged?()
                let presenter = UserInfoDetailsPresenter(entity: entity, router: strongSelf.router)
                strongSelf.router.presentUserInfoDetails(presenter: presenter)
            }
        }
    }
}
