//
//  Shapes.swift
//  Bullseye
//
//  Created by Shavkat Khoshimov on 24/11/21.
//

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    
    var body: some View {
        VStack {
            if !wideShapes {
                Circle()
                    .strokeBorder(Color.blue, lineWidth: 20.0)
                    .frame(width: 200, height: 100.0)
                    .transition(.scale)
            }
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
                .animation(.easeInOut)
            
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            
            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            
            Button(action: {
                withAnimation {
                    wideShapes.toggle()
                }
            }) {
                Text("Press!")
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
            }
        }
        .background(Color.green)
        
        
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
