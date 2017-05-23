import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/**
 * @author Shiyun Huang
 * Parse CSV file to tab seperate file
 * Reference: https://www.mkyong.com/java/how-to-write-to-file-in-java-bufferedwriter-example/
 */
public class CSVParser {
    static BufferedReader br = null;
    static FileReader fr = null;
    private static BufferedReader readFile() throws IOException {

        try {
            fr = new FileReader("all.csv");
            br = new BufferedReader(fr);

            return br;

        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        BufferedWriter bw = null;
        FileWriter fw = null;
        try {
            fw = new FileWriter("formattedOutput");
            bw = new BufferedWriter(fw);

            BufferedReader br = readFile();
            br.readLine(); //skip first line
            String line;
            while ((line = br.readLine()) != null) {
                line = line.replaceAll(";", "\t");
                line = line.replaceAll("\"", "");
                bw.write(line + "\n");
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }  finally {
            try {
                if (bw != null)
                    bw.close();
                if (fw != null)
                    fw.close();

                if (br != null)
                    br.close();
                if (fr != null)
                    fr.close();
            } catch (IOException ex) {
                ex.printStackTrace();
            }

        }
    }

}
