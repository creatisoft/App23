//
//  ContentView.swift
//  App23
//
//  Created by Christopher on 1/23/22.
//

import SwiftUI

struct ContentView: View {

    @State var someText = ""
    @State var yourAge = 0;
    var body: some View {

        VStack {

            

            Text("Age Calculator")
                .padding(.all)
            TextField("Enter your age", text: $someText )
                .padding(.all)
            Button(action: ageCalculator) {
                Text("Calculate")
            }
            .padding(.all)
            
            Text(String(yourAge))
                .padding(.all)
            
        }.frame(width: 350, height: 250, alignment: .center)

    }

    func ageCalculator(){
        
        yourAge = (2022 - Int(someText)!)

        //someText = yourAge
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
    
        ContentView()
    
    }

}

