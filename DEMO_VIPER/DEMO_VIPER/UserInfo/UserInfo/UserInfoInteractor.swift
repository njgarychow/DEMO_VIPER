import Foundation

class UserInfoInteractor {
    private let user: UserInfoEntity = UserInfoEntity(name: "jqzhou", age: 18)
    
    var userName: String {
        return user.name
    }
    
    var userAge: UInt {
        return user.age
    }
    
    func retriveUserInfoDetails(callback: ((UserInfoDetailsEntity) -> Void)?) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let entity = UserInfoDetailsEntity(name: "jqzhou", age: 18, phoneNumber: "1561234567890", address: "Sichuan chengdu")
            callback?(entity)
        }
    }
}
