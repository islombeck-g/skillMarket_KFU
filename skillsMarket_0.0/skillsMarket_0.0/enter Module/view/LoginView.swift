import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    Button {} label: {
                        HStack{
                            Image(systemName: "chevron.left")
                            Text("Назад")
                            Spacer()
                        }
                        .font(.system(size: 19))
                        .fontWeight(.regular)
                    }.foregroundColor(.white)
                    
                    Spacer()
                        .frame(height: 37.5)
                    
                    LoginRoundedRectangle()
                    
                    HStack{
                        Text("Вход")
                            .foregroundColor(.white)
                            .font(.system(size: 34))
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    //enter with other methods
                    Group{
                        Text("Войти с помощью:")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 17))
                        Spacer()
                            .frame(height: 10)
                        Button {
                        //enter with vk
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.white)
                                    .frame(width: UIScreen.main.bounds.width-32, height: 46)
                                Image("vkIcon")
                                    
                            }
                        }
                    }
                   
                }
            }
            
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
