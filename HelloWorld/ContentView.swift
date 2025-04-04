//
//  ContentView.swift
//  HelloWorld
//
//  Created by Efraín Arenas on 04/04/25.
//

import SwiftUI

struct ContentView: View {
    @State var counter:Int = 0
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .rotationEffect(.degrees(Double(counter)))
                .imageScale(.large)
                .foregroundStyle(.cyan)
            Text("Pinga!")
                //.padding(.bottom,Double(counter))
            Text("\(counter)")
			Text("Aumentar")
				.onTapGesture(perform: incrementWhenPressed)
				.background(.blue)
            Button(action: incrementWhenPressed){
                Text("Aumentar")
					
            }.background(.blue)
            Button(action: restart){
                Text("Reiniciar")
            }.background(.red)
        }
        .padding()
		.onAppear{
			incrementWhenPressed()
		}
		
    }
    
    func increment()->Int{
        
        return counter + 100;
    }
    
    func incrementWhenPressed(){
        withAnimation {
            counter = increment()
        }
        
    }
    
    func restart(){
        withAnimation{
            counter = 0
        }
    }
}

#Preview {
    ContentView()
}
