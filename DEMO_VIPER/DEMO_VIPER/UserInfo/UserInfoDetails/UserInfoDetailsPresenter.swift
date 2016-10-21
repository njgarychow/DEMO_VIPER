class UserInfoDetailsPresenter: VIPERPresenter {
    private let interactor: UserInfoDetailsInteractor
    
    init(interactor: UserInfoDetailsInteractor) {
        self.interactor = interactor
    }
    
    convenience init(entity: UserInfoDetailsEntity) {
        let interactor = UserInfoDetailsInteractor(userInfoDetailsEntity: entity)
        self.init(interactor: interactor)
    }
}
