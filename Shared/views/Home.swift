//
//  Home.swift
//  CardView
//
//  Created by Ali Raza on 14/01/2022.
//

import SwiftUI

struct Home: View {
    @State var email:String
    @State var password:String
    @State var maxCircleHeight:CGFloat = 0
    var body: some View {
        VStack{
            GeometryReader{proxy -> AnyView in
                let height = proxy.frame(in:.global).height
                DispatchQueue.main.async {
                    if maxCircleHeight == 0{
                        maxCircleHeight = height
                    }
                }
                return AnyView(
                    ZStack{
                        Circle()
                            .fill(Color.black).offset(x:getRect().width/2,y:-height/1.3)
                        Circle()
                            .fill(Color.black).offset(x:getRect().width/2,y:-height/1.5)
                        Circle()
                            .fill(Color.blue).offset(y: -height/1.3)
                            .rotationEffect(.init(degrees: -5))
                    }
                )
            }.frame(maxHeight: getRect().width)
            VStack {
                Text("Sign In")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .kerning(1.9)
                    .frame(maxWidth: .infinity ,alignment:.leading)
                VStack(alignment:.leading,spacing:8,content:{
                    Text("User Name")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    TextField("john@gmail.com",text: $email)
                        .font(.system(size:20,weight:.semibold))
                        .foregroundColor(.black)
                        .padding(.top,5)
                    Divider()
                })
                    .padding(.top,25)
                
                VStack(alignment:.leading,spacing:8,content:{
                    Text("Password")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    SecureField("password",text: $password)
                        .font(.system(size:20,weight:.semibold))
                        .foregroundColor(.black)
                        .padding(.top,5)
                    Divider()
                })
                    .padding(.top,20)
     
                Button(action: {}, label: {
                    Text("Forgetpassword?")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                })
                    .frame(maxWidth:.infinity,alignment:.trailing)
                    .padding(.top,10)
                
                
                Button(action: {}, label: {
                    Image(systemName:"arrow.right")
                        .font(.system(size:24,weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .clipShape(Circle())
                        .shadow(color: Color("lightBlue").opacity(0.6), radius: 5, x: 0, y: 0)
                    
                }).frame(maxWidth:.infinity,alignment:.leading).padding(.top,10)
                
                
                
                
            }.padding(.top,-maxCircleHeight/1.6)
                .padding(.leading,10)
                .padding(.trailing,10)
                .frame(maxHeight: .infinity,alignment: .top)
        }
        .overlay(
        
            HStack{
                Text("Already Member")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                Button(action: {},label: {
                    Text("sign in")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                })
            },alignment: .bottom
        ).background(
//            HStack{
//                Circle().fill(Color.blue)
//                    .frame(width: 70, height: 70)
//                Spacer(minLength: 0)
//                Circle().fill(Color.blue)
//                    .frame(width: 110  , height: 110)
//
//            },alignment: .bottom
        )
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(email: "john@gmail.com", password: "abcd")
    }
}
extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
