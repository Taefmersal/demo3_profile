//
//  Untitled.swift
//  demo3_profile
//
//  Created by Zainab Alatwi  on 26/03/1446 AH.
//



import SwiftUI

struct secound: View {
    var body: some View {
        
            
        Image("zainab")
                .resizable()
                .cornerRadius(180)
                .frame(width:190, height: 200 ,alignment: .center)
            
                .overlay(Circle().stroke( Color.gray,lineWidth:10))
                    
        VStack{
                    
                    Text(" Zainab Suliman 👩🏻‍💻 🧡")
                
                        .font(.title)
                        .foregroundColor(Color.orange)
                        .multilineTextAlignment(.center)
                        .padding(.trailing)
                        .bold()
            
            
            
            
            Text("I'm a Information Technology Graduate.Interested in technology and everything that revolves around it👩🏻‍💻.")
                .font(.title2)
                
            
            
            
            
                    
                    
                }
                         
                         
                         
                         
            
        
        
        
    }
}

#Preview {
    secound()
}
