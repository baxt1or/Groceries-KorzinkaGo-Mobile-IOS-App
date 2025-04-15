import SwiftUI


struct MainView : View {
    
    var body : some View {
        
        ZStack {
            
            Color.primaryApp
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Image("app_logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                    VStack(alignment: .leading){
                        Text("KorzinkaGo")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                        Text("Ваши онлайн-продукты")
                            .font(.system(size: 18, weight: .light))
                            .foregroundColor(.white.opacity(0.7))
                    }
                }
            }
            
        }
       
        
    }
}



#Preview {
    MainView()
}
