class UserInfoDetailsPresenter: VIPERPresenter {
    private let interactor: UserInfoInteractor
    
    init(interactor: UserInfoInteractor) {
        self.interactor = interactor
    }
}
