import SwiftUI

struct WelcomeView : View {
    
    var body : some View {
        
        ZStack{
            Image("welcome_background")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                Text("Добро пожаловать в KorzinkaGO")
                    .font(.system(size: 38, weight: .medium))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 6)
                
                Text("Получите свои продукты всего за один час")
                    .font(.system(size: 17, weight: .medium))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                
                NavigationLink {
                    LoginView()
                } label: {
                    RoundedButton(title: "Начать")
                }
                
                
                Spacer()
                    .frame(height: 90)
            }
            .padding(.horizontal, 20)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}


#Preview {
    NavigationStack {
        WelcomeView()
    }
}
