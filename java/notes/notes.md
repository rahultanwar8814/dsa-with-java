Install Java (OpenJDK) Linux (or in GitHub Codespaces):

Run these commands in your terminal:

Step-1 :-
sudo apt-get update
sudo apt-get install openjdk-21-jdk -y

Step-2 :-
java -version

Step-3 :-
echo 'public class main {
  public static void main(String[] args) {
    System.out.println("Hello from Java!");
  }
}' > main.java

Step-4 :-
javac main.java


Step-5 :-
java main
