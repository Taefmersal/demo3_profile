import SwiftUI

struct pagofquiz: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                // Top bar with cancel button
                HStack {
                    Spacer()
                    Button(action: {
                        // Action to dismiss the view or any other action
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "x.circle")
                            .font(.title)
                            .foregroundColor(.teal)
                    }
                    .padding(.trailing)
                }
                .padding(.top, geometry.safeAreaInsets.top)
                
                // Custom Progress Bar with Emoji
                HStack {
                    ProgressView(value:1, total: 9)
                        .progressViewStyle(LinearProgressViewStyle(tint: Color.red))
                        .frame(width: geometry.size.width * 0.6) // Adjust width to screen size
                    Text("🍥") // Emoji
                        .font(.title)
                        .padding(.leading, -15)
                }
                .padding()
                
                // Progress counter (1/9)
                Text("1/9")
                    .padding(.bottom)
                
                // Square with image and text inside
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .shadow(radius: 5)
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8) // Square size adjusts to screen width
                    
                    VStack {
                        Text("早上好")
                            .font(.largeTitle)
                            .padding(.bottom, 10)
                        
                        Image(systemName: "sun.max.fill")
                            .font(.system(size: geometry.size.width * 0.2)) // Dynamic size for the icon
                            .foregroundColor(.yellow)
                    }
                }
                .padding(.bottom, 20)
                
                // Arabic pronunciation and translation
                Text("(زاو شانغ هاو)")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .padding(.bottom, 2)
                
                Text("صباح الخير")
                    .font(.title)
                    .padding(.bottom, 30)
                
                // Speaker button for audio with custom color
                Button(action: {
                    // Action for sound playback
                }) {
                    Image(systemName: "speaker.wave.2.fill")
                        .font(.largeTitle)
                        .foregroundColor(.white)  // Changing color of the sound symbol
                        .padding()
                        .background(Color.teal)
                        .cornerRadius(180)
                }
                .padding(.bottom, 20)
                
                // Navigation buttons with custom text color
                HStack {
                    Button(action: {
                        // Previous button action
                    }) {
                        Text("السابق")
                            .font(.title2)
                            .padding()
                            .foregroundColor(.teal)  // Changing color of the previous text
                            .frame(minWidth: geometry.size.width * 0.3)  // Dynamic button width
                            .background(Color.clear)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.teal, lineWidth: 3) // Adding a border with color
                            )
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Next button action
                    }) {
                        Text("التالي")
                            .font(.title2)
                            .padding()
                            .foregroundColor(.white)  // Changing color of the next text
                            .frame(minWidth: geometry.size.width * 0.3)  // Dynamic button width
                            .background(Color.teal)  // Change button background color if needed
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, geometry.size.width * 0.1) // Dynamic padding for better fit
            }
            .padding()
            .edgesIgnoringSafeArea(.all) // To handle safe area insets on iPhones with notches
        }
    }
}

struct pagofquiz_Previews: PreviewProvider {
    static var previews: some View {
        pagofquiz()
            .previewDevice("iPhone 15 Pro") // Adjusts the preview to iPhone 15 Pro in the preview canvas
    }
}

