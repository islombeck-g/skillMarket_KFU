import SwiftUI

struct CustomTextField: View {
    let isSecureField: Bool
    let placeHolder:String
    @Binding var result:String
    var body: some View {
        VStack {
            Text("sdf")
            if self.isSecureField {
                SecureField(self.placeHolder, text: self.$result)
            }else {
                TextField(self.placeHolder, text: self.$result)
            }
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(isSecureField: false, placeHolder: "Логин", result: .constant(""))
    }
}
