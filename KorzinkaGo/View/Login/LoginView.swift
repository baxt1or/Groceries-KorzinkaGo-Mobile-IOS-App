import SwiftUI


struct LoginView : View {
    
    @State var textPhone : String = ""
    
    var body : some View {
        ZStack {
            
            Color.white.opacity(0.2)
            
            VStack {
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 420)
                
                Spacer()
        
            }
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    Text("Получайте свои\nпродукты с KorzinkaGo")
                        .font(.system(size: 26, weight: .bold))
                        .foregroundColor(.black.opacity(0.7))
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 24)
                    
                    
                    
                    
                    HStack{
                        
                        Image(systemName: "phone")
                        
                        Button {
                            
                        } label: {
                            Text("+998")
                                .font(.system(size: 17, weight: .medium))
                                .foregroundColor(.primaryText)
                        }
                        
                        TextField("Enter phone", text: $textPhone)
                            .frame(minWidth: 60, maxWidth: .infinity)
                            
                    }
                    
                    
                    Divider()
                        .padding(.bottom, 25)
                    
                    Text("или войдите через социальные сети")
                        .font(.system(size: 17, weight: .light))
                        .foregroundColor(.textTitle)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(.bottom, 50)
                    
                  
                    Button {
                                          
                    } label: {
                                           
                    Image("google_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                                           
                    Text("Continue with Google")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    }
                    .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                    .background( Color(hex: "5383EC"))
                    .cornerRadius(20)
                    .padding(.bottom, 8 )
                    
                    
                    Button {
                        
                    } label: {
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text("Continue with Facebook")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "4A66AC"))
                    .cornerRadius(20)
                    .padding(.bottom, 8)
                    
                    
                    
                }
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, 350)
                
                
            }
            
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .top)
    }
}



#Preview {
    LoginView()
}
