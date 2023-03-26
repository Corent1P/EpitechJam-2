//
//  register.swift
//  JAM-2
//
//  Created by Mathis Borlet on 25/03/2023.
//

import SwiftUI

let lightGrayColor = Color(red: 219.0/255.0, green: 213.0/255.0, blue: 214.0/255.0)

struct register: View {
    
    @State var pseudo: String = ""
    @State var rules: Bool = false
    @EnvironmentObject var Infos:infos
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                userImage()
                type_name()
                pseudoName(pseudo: $Infos.nameplayerSolo)
                
                Button {
                    if (!Infos.nameplayerSolo.isEmpty) {
                        rules = true
                    }
                } label: {
                    Text("Enter Game")
                        .padding()
                        .font(.system(size: 30))
                        .shadow(radius: 6, x: -1, y: 1)
                        .frame(width: 320, height: 68)
                        .background(Color("Color_Button"))
                        .foregroundColor(.white)
                        .bold()
                }
                .cornerRadius(16)
                .shadow(radius: 6, x: -3, y: 3)
            }
            NavigationLink("", destination:  rule(), isActive: $rules)
        }
    }
}
    
    struct register_Previews: PreviewProvider {
        static var previews: some View {
            register()
        }
    }
    
    struct type_name: View {
        var body: some View {
            Text("Type your name")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
                .opacity(0.4)
        }
    }
    
    struct userImage: View {
        var body: some View {
            Image("illusion optique")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 75)
        }
    }
    
struct pseudoName: View {
    
    @Binding var pseudo:String
    
    var body: some View {
        TextField("Pseudo", text: $pseudo)
            .padding()
            .background(lightGrayColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            .frame(width: 280)
    }
}
