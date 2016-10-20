class UserInfoInteractor {
    private let user: UserInfoEntity = UserInfoEntity(name: "jqzhou", age: 18)
    
    var userName: String {
        return user.name
    }
    
    var userAge: UInt {
        return user.age
    }
}
