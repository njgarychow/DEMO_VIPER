class UserInfoPresenter: VIPERPresenter {
    
    let interactor: UserInfoInteractor = UserInfoInteractor()
    
    var userInfoDescription: String {
        return "UserName: \(interactor.userName), Age: \(interactor.userAge)"
    }
    
    func retriveUserInfoDetails() {
        weak var strongSelf = self
        interactor.retriveUserInfoDetails { 
            strongSelf?.statusDidChanged?()
        }
    }
}
