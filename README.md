# Athkary

A Flutter-based mobile application that helps users track their daily Athkar (remembrance of Allah) and Doaas (prayers) from the book "حصن المسلم" (Hisn al-Muslim) with features to keep count and manage them effectively.

## Features

- Track Athkar and Doaas: Users can view and track a variety of Athkar and Doaas from authentic sources.
  
- Count Tracker: For each Doaa, the user can track the number of times they’ve recited it.
  
- Responsive UI: The app layout adapts to different screen sizes, providing a seamless experience on mobile and tablet devices.
  
- Data Storage: Save user data locally (internal and external storage) for persistent usage.
  
- Customizable Settings: Users can easily update and manage their own Athkar and Doaas lists.

## Technologies Used

- Flutter: A powerful UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.

- Dart: The programming language used to write the app.

- Material Design: Provides a clean and modern interface based on Google's Material Design guidelines.

## Usage

- View Athkar: Open the app, and you will see a list of Athkar and Doaas. You can view each prayer and its count.
  
- Track Counts: Tap on the counter icon to decrease the count of recitations. Once the count reaches 0, it will be removed from the list.
  
- Responsive Layout: The app provides a flexible layout for small and large screens, ensuring a good user experience on mobile phones, tablets, and more.


Example Format for doaa.txt
Each line in doaa.txt should contain an Athkar or Doaa and its count in the following format:

  سبحانك اللهم وبحمدك، اللهم اغفر لي-3
اللهم إني أعوذ بك من العجز والكسل، والجبن والهرم والبخل ، وأعوذ بك من عذاب القبر ومن فتنة المحيا والممات-7
اللهم لك الحمد كما ينبغي لجلال وجهك وعظيم سلطانك-5

Athkar and Doaas are followed by a dash (-) and a number representing the recitation count.


## Contributing

Fork the repository.

Create your feature branch (git checkout -b feature-name).

Commit your changes (git commit -m 'Add new feature').

Push to the branch (git push origin feature-name).

Open a pull request.


