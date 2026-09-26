import Playgrounds
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            
            Color("background")
                .ignoresSafeArea()
            ZStack {
                //身體
                RoundedRectangle(cornerRadius: 200)
                    .frame(width: 300, height: 250)
                    .offset(y: 180)
                    .foregroundStyle(.bodyblue)
                //肚子
                Circle()
                    .frame(width: 200, height: 200)
                    .offset(y: 180)
                    .foregroundStyle(.facewhite)
                //左手臂
                Capsule()
                    .frame(width: 50, height: 120)
                    .offset(x: -10, y: 200)
                    .foregroundStyle(.bodyblue)
                    .rotationEffect(.degrees(40))
                //右手臂
                Capsule()
                    .frame(width: 50, height: 120)
                    .offset(x: 10, y: 200)
                    .foregroundStyle(.bodyblue)
                    .rotationEffect(.degrees(-40))
                //左手
                Rectangle()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 30, height: 10)
                    .offset(x: -260, y: 12)
                    .rotationEffect(.degrees(-41))
                    .foregroundStyle(.white)
                Rectangle()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 30, height: 10)
                    .offset(x: -260, y: 16)
                    .rotationEffect(.degrees(-43))
                    .foregroundStyle(.white)
                Rectangle()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 30, height: 10)
                    .offset(x: -260, y: 20)
                    .rotationEffect(.degrees(-45))
                    .foregroundStyle(.white)
                //右手
                Rectangle()
                    .trim(from: 0.5, to: 1)
                    .frame(width: 30, height: 10)
                    .offset(x: 262, y: 14)
                    .rotationEffect(.degrees(41))
                    .foregroundStyle(.white)
                Rectangle()
                    .trim(from: 0.5, to: 1)
                    .frame(width: 30, height: 10)
                    .offset(x: 262, y: 18)
                    .rotationEffect(.degrees(43))
                    .foregroundStyle(.white)
                Rectangle()
                    .trim(from: 0.5, to: 1)
                    .frame(width: 30, height: 10)
                    .offset(x: 262, y: 22)
                    .rotationEffect(.degrees(45))
                    .foregroundStyle(.white)

            }
            ZStack {
                //左腳
                Circle()
                    .frame(width: 100, height: 100)
                    .offset(x: -70, y: 280)
                    .foregroundStyle(.facewhite)
                //左腳掌
                Circle()
                    .frame(width: 50, height: 50)
                    .offset(x: -70, y: 280)
                    .foregroundStyle(.leg)
                //右腳
                Circle()
                    .frame(width: 100, height: 100)
                    .offset(x: 70, y: 280)
                    .foregroundStyle(.facewhite)
                //右腳掌
                Circle()
                    .frame(width: 50, height: 50)
                    .offset(x: 70, y: 280)
                    .foregroundStyle(.leg)
            }
            ZStack {
                //頭
                RoundedRectangle(cornerRadius: 1000)
                    .frame(width: 250, height: 220)
                    .foregroundStyle(.bodyblue)
                //臉
                RoundedRectangle(cornerRadius: 2000)
                    .frame(width: 200, height: 185)
                    .foregroundStyle(.facewhite)
                    .offset(y: 20)
                //左眼
                RoundedRectangle(cornerRadius: 2000)
                    .frame(width: 40, height: 5)
                    .foregroundStyle(.black)
                    .offset(x: -40, y: 5)
                //右眼
                RoundedRectangle(cornerRadius: 2000)
                    .frame(width: 40, height: 5)
                    .foregroundStyle(.black)
                    .offset(x: 40, y: 5)
                //嘴巴
                RoundedRectangle(cornerRadius: 2000)
                    .frame(width: 80, height: 5)
                    .foregroundStyle(.black)
                    .offset(y: 60)
                //左牙齒
                Rectangle()
                    .trim(from: 0.25, to: 0.75)
                    .frame(width: 20, height: 20)
                    .offset(x: 25, y: 62)
                    .rotationEffect(.degrees(45))
                    .foregroundStyle(.white)
                //右牙齒
                Rectangle()
                    .trim(from: 0.25, to: 0.75)
                    .frame(width: 20, height: 20)
                    .offset(x: 65, y: 24)
                    .rotationEffect(.degrees(45))
                    .foregroundStyle(.white)
                //左手臂
                Rectangle()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 55, height: 55)
                    .offset(x: 85, y: -70)
                    .rotationEffect(.degrees(-10))
                    .foregroundStyle(.bodyblue)
                //右手臂
                Rectangle()
                    .trim(from: 0.5, to: 1)
                    .frame(width: 55, height: 55)
                    .offset(x: -68, y: 90)
                    .rotationEffect(.degrees(100))
                    .foregroundStyle(.bodyblue)
                //額頭
                Rectangle()
                    .trim(from: 0.25, to: 0.75)
                    .frame(width: 35, height: 35)
                    .offset(x: -52, y: -52)
                    .rotationEffect(.degrees(45))
                    .foregroundStyle(.bodyblue)
            }
            //文字
            Text("卡比獸")
                .offset(y:-250)
                .font(.system(size: 64, weight: .black, design: .rounded))
                .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        Color(red: 44/255, green: 110/255, blue: 125/255), // 卡比獸主體藍
                                        Color.blue.opacity(0.8)
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            
                            // 3. 加上文字陰影創造立體感
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 3, y: 5)
                            
                            
        }

    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
