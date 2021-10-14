import UIKit
import SwiftUI
import Foundation
import PlaygroundSupport

struct IslandView: View {
    let image: UIImage
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .cornerRadius(10)
            .scaledToFit()
            .padding(.all)
        
    }
}

struct CircleImage: View {
    
    @Binding var displayText: Bool
    
    init(displayText: Binding<Bool>){
        self._displayText = displayText
    }
    
    var body: some View {
        //        Button(action: {
        //            print("Button was tapped")
        //        }) {
        //
        //        }
        
        Image(uiImage: UIImage(named: "Pino.png")!)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
        //
        //                .foregroundColor(Color.gray)
        
            .shadow(radius: 7)
            .frame(width: 100, height: 250)
            .onTapGesture{
                displayText = true
            }
    }
}

struct ContentView: View {
    @State private var image = UIImage(named: "City.jpg")!
    @State var value = 0.0
    @State public var displayText: Bool = false
    
    var body: some View {

        
        VStack {
            Spacer()
            IslandView(image: image)
            //MapView()
            
            //                .ignoresSafeArea(edges: .top)
            
                .frame(height:300.0)
                .scaledToFill()
                .padding(.bottom, 130.0)
            CircleImage(displayText: $displayText)
            //                .padding(.bottom, -130.0)
            .frame(width: 0.0)
            .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: -240)
            VStack(alignment: .leading) {
                Text("Pino-The Pineapple")
                    .font(.title)
                HStack {
                    Text("Click on the Pineapple to read his story!")
                    Spacer()
                        .font(.subheadline)
                    Text("")
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                
                
                
                    .font(.title2)
                
                if(displayText){
                    Text("Once upon a time, in a city of Pineapples, there was a Pineapple called Pino. It was a day normal day, he thought. He was in the kitchen, cooking, unaware of what was about to happen to him next...")
                    //                .opacity(1.0)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20).strokeBorder(lineWidth: 1))
                        .background(Color.blue)
                    
                    //                .background(Color.white).cornerRadius(10)
                    //                .foregroundColor(.green)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    //                               .background(Color.blue)
                    
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                }
                
            }
            .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y:-240)
            .padding()
            
            
        }
        .frame(width: 400, height: 920)
    }
}
PlaygroundPage.current.setLiveView(ContentView())
//: [Next](@next)
