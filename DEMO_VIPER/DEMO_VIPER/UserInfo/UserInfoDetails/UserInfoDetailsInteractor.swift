class UserInfoDetailsInteractor {
    private let userInfoDetailsEntity: UserInfoDetailsEntity
    
    init(userInfoDetailsEntity: UserInfoDetailsEntity) {
        self.userInfoDetailsEntity = userInfoDetailsEntity
    }
    
    var userName: String {
        return userInfoDetailsEntity.name
    }
    
    var userAge: UInt {
        return userInfoDetailsEntity.age
    }
    
    var userPhone: String {
        return userInfoDetailsEntity.phoneNumber
    }
    
    var userAddress: String {
        return userInfoDetailsEntity.address
    }
}
