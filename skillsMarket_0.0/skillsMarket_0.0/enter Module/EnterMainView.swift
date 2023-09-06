import SwiftUI

struct EnterMainView: View {
    @State private var loginView = false
    @State private var registerView = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    Text("Здравствуйте!")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(height: 9)
                    Text("Биржа талантов - возможность получить любимую работу!")
                        .font(.system(size: 20))
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(height: 33)
                    Button {
                        self.loginView.toggle()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: UIScreen.main.bounds.width - 32, height: 46)
                                .foregroundColor(.white)
                            Text ("Вход")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                    }
                    Button {
                        self.registerView.toggle()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.white, lineWidth: 2)
                                .frame(width: UIScreen.main.bounds.width - 32, height: 46)
                                .foregroundColor(.black)
                            Text("Регистрация")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                    }
                    .navigationDestination(
                        isPresented: self.$loginView){
                            LoginView()
                        }
                        .navigationDestination(
                            isPresented: self.$registerView){
                                RegistrationView()
                            }
                    
                }
                
            }
        }
        
    }
}

struct EnterMainView_Previews: PreviewProvider {
    static var previews: some View {
        EnterMainView()
    }
}
