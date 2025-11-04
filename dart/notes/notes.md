Install Dart SDK Linux (or in GitHub Codespaces):

Run these commands in your terminal:

Step-1 :-
sudo apt-get update
sudo apt-get install apt-transport-https wget -y
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt-get update
sudo apt-get install dart -y

Step-2 :-
echo 'void main() { print("Hello from Dart!"); }' > main.dart

Step-3 :-
dart run main.dart