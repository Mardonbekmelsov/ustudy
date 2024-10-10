# UStudy App

UStudy is a Flutter-based educational app designed to help students prepare for various exams such as the UNT (Unified National Testing), as well as provide information about courses, contact details, and more.

## Project Structure

The project follows the MVC (Model-View-Controller) pattern. Below is a description of the project's folder structure:

### 1. `models`
Contains the data models used in the app. The models represent the structure of data and how it is managed.

- **`course_model.dart`**: Defines the `CourseModel` class, which includes the structure for courses, services offered, required subjects, profile subjects, and language subjects.
- **`test_model.dart`**: Contains data structure and model representation related to tests.

### 2. `services`
Contains service classes that handle the backend communication and data processing logic.

### 3. `ui/screens`
This folder contains all the UI screens that are displayed to the user. Screens are organized based on the features of the app.

- **contact**:
  - `contacts_screen.dart`: Displays the contact details (phone, address, email, social media links).
  
- **courses**:
  - `course_detail_screen.dart`: Displays detailed information about the selected course.
  - `courses_screen.dart`: Displays the list of available courses.
  - `data_entry_screen.dart`: Handles data input by the user such as personal information.
  - `language_subjects_screen.dart`: Displays language subject options.
  - `profile_selection_screen.dart`: Displays a list of profile subjects that the user can select.
  
- **main**:
  - `main_screen.dart`: The main navigation screen with the bottom bar navigation implemented.
  
- **tests**:
  - `city_selection_screen.dart`: Allows the user to select their city.
  - `filial_selection_screen.dart`: Allows the user to select the filial for test-taking.
  - `test_screen.dart`: Displays test options available for the user.
  - `test_selection_screen.dart`: Allows the user to select the specific test.
  - `time_selection_screen.dart`: Allows the user to select the time for a test.

### 4. `ui/widgets`
This folder contains reusable widgets used across multiple screens.

- `course_button.dart`: A Container widget specifically designed for course selection.
- `profile_subjects_selection.dart`: A widget to display the selectable profile subjects.
- `request_dialog.dart`: An Alert dialog that helps to know if user's request was successful
- `test_button.dart`: A Container widget for tests.

### 5. `utils`
Contains utility files and constants that are used across the app.

- **`app_constants.dart`**: Stores app-wide constants such as URLs, API keys, etc.
- **`cities.dart`**: Contains a list of cities in Kazakhstan.
- **`courses.dart`**: Holds a list of courses offered by UStudy.
- **`filials.dart`**: Contains data about different filial offices.
- **`tests.dart`**: Stores information related to test offerings.


### 6. `main.dart`
- **`main.dart`**: Entry point of the app.

## Key Features
- **Course Management**: Users can view and select various courses offered by UStudy.
- **Test Scheduling**: Users can select cities, filials, and schedule tests for their exam preparation.
- **Contact Information**: The app provides detailed contact information including address, phone, and email.
- **Custom Widgets**: Reusable widgets for buttons, subject selection, and dialogs make the app modular and maintainable.

## External Packages Used
Here are some notable Flutter packages used in the project:

- **google_maps_flutter**: For embedding Google Maps in the app.
- **flutter_svg**: To handle SVG images within the app.
- **intl**: To format dates, times, and other localized content.

## How to Run the Project
1. Ensure you have [Flutter](https://flutter.dev) installed and configured on your machine.
2. Clone this repository: 
   ```bash
   git clone https://github.com/your-repo/ustudy.git
