import SwiftUI

struct LoginRoundedRectangle: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.white)
                .ignoresSafeArea()
            
            VStack{
                Text("Личные данные")
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                
                
            }
        }.frame(width: UIScreen.main.bounds.width - 32)
        
    }
}

struct LoginRoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        LoginRoundedRectangle()
    }
}
