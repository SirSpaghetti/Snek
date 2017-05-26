import java.io.*;

StringList readFile;
BufferedReader reader;
PrintWriter output;
String line;

void leaderboard() {
  readFile = new StringList();
  reader = createReader("leaderboard.txt");
  getFile();
  output = createWriter("leaderboard.txt");
  writeFile();
  output.close();
}

void displayLeaderboard(){
  

}

void getFile() {
  for (int i = 0; i < 10; i++) {
    try {
      line = reader.readLine();
    } 
    catch (IOException e) {
      e.printStackTrace();
      line = null;
    }

    if (line == null) {
      noLoop();
    } else {
      readFile.append(line);
    }
  }
}

void writeFile(){
  for(int i = 0; i < readFile.size(); i++){
     output.println(readFile.get(i));
  }
  readFile.clear();
}