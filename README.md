# Harry Potter Trivia
HPTrivia is a SwiftUI-based iOS application designed for fans of the Harry Potter series. The app offers an engaging trivia game where players can test their knowledge of the Harry Potter books through a variety of questions, interactive gameplay, and in-app purchases to unlock additional content. The app features a visually appealing interface with animations, audio effects, and a user-friendly design.
## Features
1. Game Intro Screen

- A visually immersive welcome screen featuring the Hogwarts castle background and an animated Harry Potter logo.
Displays recent scores to track player progress.
Includes buttons for starting the game, viewing instructions, and accessing settings.

2. Gameplay Screen

- Players answer trivia questions from selected Harry Potter books.
Each question is worth 5 points, with a deduction of 1 point for incorrect answers or using hints.
Options to reveal a hint or the book associated with the question (each costs 1 point).
Correct answers trigger celebratory animations and sound effects, with points added to the total score.
Players can end the game at any time, saving their score to the recent scores list.

3. Game Logic

- Questions are loaded from a trivia.json file and organized by book.
The game randomly selects questions from active books, ensuring no repetition until all questions are answered.
Tracks answered questions and manages score calculations.

4. Audio

- Background music plays on the intro screen (magic-in-the-air.mp3) and during gameplay (randomly selected from four tracks: let-the-mystery-unfold, spellcraft, hiding-place-in-the-forest, deep-in-the-dell).
Sound effects for actions like flipping hints (page-flip.mp3), correct answers (magic-wand.mp3), and incorrect answers (negative-beeps.mp3).

5. Animation

- Smooth transitions and animations for UI elements, such as the game title, buttons, and question displays.
Celebratory animations when a correct answer is selected, including scaling effects and point transitions.
Animated background featuring the Hogwarts castle with a subtle scrolling effect.

6. In-App Purchases

- Players can unlock trivia questions for books 4–7 (Goblet of Fire, Order of the Phoenix, Half-Blood Prince, Deathly Hallows) via in-app purchases.
Each book unlock costs $0.99 (configured in HPConfig.storekit).
Purchases are managed using StoreKit, with transaction verification and persistent storage of purchased status.

7. Store

- A dedicated store view allows players to purchase additional books.
Displays purchased books as active and allows toggling book status (active/inactive).
Ensures at least one book is active before starting the game.

8. Instructions

- A clear, parchment-themed instructions screen explains gameplay mechanics, scoring, and hint usage.
Accessible from the intro screen via an info button.

9. Books

- Supports all seven Harry Potter books, with books 1 and 2 active by default and books 3–7 initially locked or inactive.
Players can toggle book status (active/inactive) in the settings view, with locked books requiring purchase.
Each book is represented by its cover image (hp1.jpeg to hp7.jpeg).

10. Persist Scores

- Saves the three most recent game scores to the device’s document directory (RecentScores).
Loads scores on app launch for display on the intro screen.

## Installation

- Clone the Repository:
git clone <repository-url>

## Open in Xcode:

- Open the HPTrivia.xcodeproj file in Xcode.
- Ensure you have Xcode 16 or later installed.

## Add Assets:

- Ensure all images (appicon.png, appiconwithradius.png, hogwarts.png, hp1.jpeg–hp7.jpeg, parchment.png) and audio files (magic-in-the-air.mp3, page-flip.mp3, negative-beeps.mp3, magic-wand.mp3, let-the-mystery-unfold.mp3, spellcraft.mp3, hiding-place-in-the-forest.mp3, deep-in-the-dell.mp3) are added to the Assets.xcassets and project bundle, respectively.

## Configure In-App Purchases:

- Set up an App Store Connect account and configure the in-app purchases as defined in HPConfig.storekit.- 
- Update the bundle identifier to match your App Store Connect settings.


## Build and Run:

- Select a simulator or connected iOS device in Xcode.
- Build and run the project (Cmd + R).



## Dependencies

- SwiftUI: For building the user interface.
- AVKit: For playing background music and sound effects.
- StoreKit: For handling in-app purchases.
- FileManager: For persisting book statuses and recent scores.

## Usage

- Launch the app to see the intro screen with the animated Hogwarts background and game title.
- View recent scores or tap the info button to read instructions.
- Tap the settings button to select which books to include in the game (purchase books 4–7 if needed).
- Tap the play button to start the game, answer questions, and use hints if necessary.
- End the game to save your score and return to the intro screen.

## Notes

- The app uses a custom font (PartyLetPlain) for titles and text, which must be included in the project and configured in the Info.plist.
- Ensure proper App Store Connect setup for in-app purchases to function correctly.
- The trivia.json file contains sample questions; additional questions can be added in the same format.
- Scores and book statuses are saved to the device’s document directory for persistence.

## Future Improvements

- Add more trivia questions to expand the question pool.
- Implement leaderboards for global score tracking.
- Add support for additional languages or localization.
- Enhance animations and sound effects for a more immersive experience.

## License
- This project is licensed under the MIT License. See the LICENSE file for details.

## ScreenShots
![IMG_9557](https://github.com/user-attachments/assets/8f267f41-387c-42a4-94ca-cd05f113099e)
![IMG_9556](https://github.com/user-attachments/assets/f772cf1c-b808-4f33-89d3-0b6dd35aab42)
![IMG_9555](https://github.com/user-attachments/assets/0f030f76-0d67-49df-b80c-8227e8e0ebbe)
![IMG_9554](https://github.com/user-attachments/assets/b9a81ac4-ff6a-4d08-906d-c44599f53088)
![IMG_9553](https://github.com/user-attachments/assets/9251e8c2-7a85-47b8-a0d8-096e68c26d0e)
![IMG_9552](https://github.com/user-attachments/assets/3aee1922-5a3e-421a-b5df-e4551fa269a7)

