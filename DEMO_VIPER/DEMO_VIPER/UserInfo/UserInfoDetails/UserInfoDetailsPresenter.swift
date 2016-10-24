class UserInfoDetailsPresenter: VIPERPresenter {
    
    private let router: UserInfoRouter
    private let interactor: UserInfoDetailsInteractor
    
    init(interactor: UserInfoDetailsInteractor, router: UserInfoRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    convenience init(entity: UserInfoDetailsEntity, router: UserInfoRouter) {
        let interactor = UserInfoDetailsInteractor(userInfoDetailsEntity: entity)
        self.init(interactor: interactor, router: router)
    }
    
    var userInfo: String {
        return "name: \(interactor.userName)\nage: \(interactor.userAge)\nphone number: \(interactor.userPhone)\naddress: \(interactor.userAddress)"
    }
}
