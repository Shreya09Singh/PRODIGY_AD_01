Flutter Calculator App
Overview
This is a simple Calculator App developed using Flutter. It supports basic arithmetic operations such as addition, subtraction, multiplication, and division. The app features a clean and user-friendly interface that mimics a real calculator's layout, making it intuitive to use for performing quick calculations.

Features:
Basic Arithmetic Operations: Addition, Subtraction, Multiplication, and Division.
Clear and Delete functionality to manage inputs.
User-friendly, responsive UI.
Real-time calculation display.
Packages Used
Provider
The provider package is used for state management in this app. It helps manage and provide the state of the calculator's operations and results across different widgets in the application.

Function Tree
The function_tree package is used to evaluate mathematical expressions dynamically. It parses and computes the expressions entered by the user, allowing for real-time calculations.

How the Calculator Works
The calculator performs real-time calculations based on the user's input and updates the display accordingly. Here's a breakdown of the logic used:

Input Handling:

Users can input numbers and operators (e.g., +, -, *, /) by tapping buttons on the UI.
Input values are captured and concatenated into a string, which is displayed as the current equation.
Performing Calculations:

When the user taps the = button, the app uses the function_tree package to parse and evaluate the arithmetic expression.
The result is then displayed to the user.
State Management:

The provider package is used to manage the state of the calculator, including the current equation and result.
It helps ensure that state changes are efficiently reflected in the UI.
Clearing/Deleting:

The C (Clear) button resets the entire equation.
The Del button deletes the last entered character, allowing users to correct mistakes easily.
Error Handling:
Invalid expressions (e.g., dividing by zero) are caught, and an appropriate error message is shown to the user.

Project Structure
lib/main.dart: Contains the main logic for rendering the UI and handling user input.
lib/screens/: Contains UI pages for the application.
lib/provider/CalculatorProvider.dart: Manages the state of the calculator using the provider package.
lib/constants/: Holds constant values such as colors used throughout the app.
lib/widgets/: Contains reusable UI components, including buttons.
![calculator_App](https://github.com/user-attachments/assets/cc9ed4b7-84f2-4e5a-ae07-b185b381f2d3)
