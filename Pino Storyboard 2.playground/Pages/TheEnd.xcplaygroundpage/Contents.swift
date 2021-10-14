//: [Previous](@previous)
import SwiftUI
import PlaygroundSupport
import AVFoundation

var firstimage = true
struct ContentView: View {
    @State var scale = 0.75
    @State var audioPlayer1:AVAudioPlayer?
        @State var audioPlayer2:AVAudioPlayer?


    func startAudio1() {
            if let audioURL = Bundle.main.url(forResource: "door_knock",withExtension: "mp3") {
                do {

                    try audioPlayer1 = AVAudioPlayer(contentsOf: audioURL)  //make audio player
                    audioPlayer1?.numberOfLoops=0 //number of times to loop the  audio
                    audioPlayer1?.play()
                    audioPlayer1?.setVolume(0.3,fadeDuration: 0)
                    } catch {
                            print("Couldn't play audio.Error  (error)")
                    }/*else {
                        print("No audio file found ")
                    } */

                }
    }
   
var body: some View {
   
    
VStack {
    Text("He ended up in prison. Then came the day of trial and he was sentenced the most critical for any Ppineapple...")
        .font(.headline)
    .fontWeight(.black)
    .foregroundColor(Color.purple)
    .lineLimit(5)
    .padding()
    .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
    .accessibilityValue("20")
    
    Image(uiImage: UIImage(named: "prison.jpg")!)
.resizable()
.onTapGesture {
    startAudio1()
    PlaygroundPage.current.setLiveView(ContentView2())
}
.scaleEffect(scale)
            .onAppear {
                let baseAnimation = Animation.easeInOut(duration: 1)
                let repeated = baseAnimation.repeatForever(autoreverses: true)

                withAnimation(repeated) {
                    scale = 0.95
                }
            }
    

.aspectRatio(contentMode: .fit)
                              
                }
.frame(width: 600, height: 500, alignment: .center)

}
}

PlaygroundPage.current.setLiveView(ContentView())
    
struct ContentView2: View {
    @State var scale = 0.75
    @State var sfondo = "pizza.jpg"
    @State var valoreopacita = 1.0
    @State var repetition = true
    @State var cont = 0
    @State var immagini:[String]=["nuv.png", "nuv1.png", "nuv2.png"]
    @State var lacrime:[String] = ["tears1.png", "tears2.png"]
    @State var tearsimage = "tears1.png"
var body: some View {

VStack {
    Text("...He landed on pizza!!")
        .font(.headline)
    .fontWeight(.black)
    .foregroundColor(Color.purple)
    .lineLimit(5)
    .padding()
    .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
    .accessibilityValue("20")
  
    ZStack {
        Image(uiImage: UIImage(named: "pizza.jpg")!)
            .resizable()
.aspectRatio(contentMode: .fit)
        
        Image(uiImage: UIImage(named: sfondo)!)
    .resizable()
    .aspectRatio(contentMode: .fit)
        
        Image(uiImage: UIImage(named: tearsimage)!)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
        Text ("Tap on the screen")
            .foregroundColor(Color.blue)
            .opacity(valoreopacita)
            .position(x: 310, y: 5)
            .shadow(radius: 5)
            .font(.title)
    }
    
.frame(width: 600, height: 500, alignment: .center)
.onTapGesture {
    valoreopacita=0.0
    var contloop = 100
    let timerlacrime = Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true){
        timerlacrime in
        if(contloop>0){
           
            tearsimage=lacrime[contloop%2]
            contloop = contloop - 1;
        }else{
            timerlacrime.invalidate()
        }
        
    }
    
    
                   let timer  = Timer.scheduledTimer(withTimeInterval: 0.4, repeats: repetition) { timer in
                       if(cont<=2){
                          
                           sfondo=immagini[cont]
                           cont=cont+1;
                       }else{
                           timer.invalidate()
                       }
                       
                   }
    
}
    

}
}
}

//: [Next](@next)


