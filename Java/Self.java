// cerner_2^5_2017

import java.io.*;

public class Self{
	public static void main(String []args) throws IOException{
        File f = new File("Self.sh");
        f.createNewFile();
        FileWriter writer = new FileWriter(f);
        writer.write("echo 'import java.io.*;public class Self{public static void main(String []args){new PrintStream(new FileOutputStream(FileDescriptor.out)).println(s(FileDescriptor.class,0,2)+s(RandomAccessFile.class,0,1)+s(FileInputStream.class,9,11)+s(Flushable.class,4,6)+s(RandomAccessFile.class,2,4));}private static String s(Class a, int b, int c){return a.getSimpleName().substring(b,c);}}' > Self.java");
        writer.close();
	}
}