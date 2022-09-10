import 'package:flutter/material.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/model/user.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/video/video.dart';

User currentUser = User("James",
    "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=740&t=st=1662027224~exp=1662027824~hmac=ff6f13babef75fe428ae7418aebab827748927f63e587370c5bb6ec3ec9ef057");
User currentUser1 = User("John",
    "https://img.freepik.com/free-photo/handsome-businessman-suit-glasses-cross-arms-chest-look_176420-21750.jpg?size=626&ext=jpg");
User currentUser2 = User("Robert",
    "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=740&t=st=1662035672~exp=1662036272~hmac=7ae51799e49900fc55c8dc482d1a226fbc83802efa0bb0d2f0126b18be8a760e");
User currentUser3 = User("Michel",
    "https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg?size=626&ext=jpg&ga=GA1.2.1665802502.1662027202");
User currentUser4 = User("David",
    "https://img.freepik.com/free-photo/smiling-man-white-shirt-typing-text-message-scrolling-feed-social-network-using-smartphone-gray_171337-634.jpg?w=740&t=st=1662035683~exp=1662036283~hmac=1b1e154ae3ddf893130f5ac993dd9caa9c14a5f81a39098b10225922e17c6c37");
User currentUser5 = User("Joseph",
    "https://img.freepik.com/free-photo/happy-bearded-young-man-looks-with-joyful-expression-has-friendly-smile-wears-yellow-sweater-red-hat_295783-1388.jpg?size=626&ext=jpg&ga=GA1.2.1665802502.1662027202");
User currentUser6 = User("Thomas",
    "https://img.freepik.com/premium-photo/portrait-handsome-businessman-outdoor_58466-7738.jpg?size=626&ext=jpg&ga=GA1.2.1665802502.1662027202");

final List<Video> videos = [
  Video("assets/videos/video2.mp4", currentUser, "App Developer",
      "This is my first videoshoot im very happy", "audioName", "12k", "525"),
  Video("assets/videos/video1.mp4", currentUser1, "web Developer",
      "This is my first videoshoot im very happy", "audioName", "16k", "652"),
  Video("assets/videos/video2.mp4", currentUser2, "Bank Manager",
      "This is my first videoshoot im very happy", "audioName", "52k", "651"),
  Video("assets/videos/video1.mp4", currentUser3, "Digital Marketar",
      "This is my first videoshoot im very happy", "audioName", "25k", "456"),
  Video("assets/videos/video2.mp4", currentUser4, "Python Developer",
      "This is my first videoshoot im very happy", "audioName", "13k", "203"),
  Video("assets/videos/video1.mp4", currentUser5, "App Developer",
      "This is my first videoshoot im very happy", "audioName", "10k", "852"),
  Video("assets/videos/video2.mp4", currentUser6, "Web Developer",
      "This is my first videoshoot im very happy", "audioName", "2k", "741"),
];
