//
//  Untitled.swift
//  demo3_profile
//
//  Created by GHADAH ALENEZI on 26/03/1446 AH.
//

import SwiftUI

struct ghadah: View {
    var body: some View {
        VStack() {
            
            
            
            
            
            
            Image("Software Developers Isometric Illustration")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
            
         
            Text("GHADAH ALENEZI")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.pink)
              
            Text("Ghadah Alenezi is a skilled and innovative professional with expertise in software development and data analytics. Her leadership and passion for technology drive her success in solving complex challenges and contributing to impactful projects. ")
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding(.horizontal,30)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ghadah()
    }
}
