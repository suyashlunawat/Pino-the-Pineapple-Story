//: [Previous](@previous)
import SwiftUI
import PlaygroundSupport
//import CoreFoundation

    
struct ContentView: View {
    @State var scale = 0.75
    @State var rotation = false
    @State var sfondo = "Kitchen.JPG"
    @State var valoreopacita = 0.0
    
    
var body: some View {
    ZStack{
        Image(uiImage: UIImage(named: sfondo)!)
            .resizable()
            .frame(width: 800, height: 600)
        VStack{
            Text("Hi, I'm Pino")
//                .background(RoundedRectangle(cornerRadius: 4).stroke())
                    .font(.body)
                    .fontWeight(.semibold)
                    .frame(width: 150, height: 50)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 2))
                    .background(Color.white).cornerRadius(10)
                    .position(x: 422, y: 124)
                    .opacity(valoreopacita)
                
        HStack{
        Image(uiImage: UIImage(named: "Pinoincucina.tiff")!)
            .resizable()
            .frame(width: 350, height: 350)
            .scaledToFill()
            .opacity(valoreopacita)
            .position(x: 400, y: 25)
        }
        }
    }
        
        Button {
            valoreopacita = 100.0
//            self.scale = 200
//            self.sfondo = "Cucina.jpg"
            
        } label: {
            Text("  Next\t")
                .padding(20)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(25)
                .position(x: 400, y: 0)
            
        }
        Spacer()
    }
}

PlaygroundPage.current.setLiveView(ContentView())
//: [Next](@next)
