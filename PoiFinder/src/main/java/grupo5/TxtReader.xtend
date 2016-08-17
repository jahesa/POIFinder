package grupo5

//import java.io.FileWriter
//import java.io.PrintWriter
import java.io.IOException
import java.io.FileReader
import java.io.BufferedReader


class TxtReader {

//Solo queria probar cosas
//	def write(){
//		try{
//			 var FileWriter fw = new FileWriter("localsUpdate.txt")
//			 var PrintWriter pw = new PrintWriter(fw)
//			 
//			 pw.println("hola")
//			 pw.close()
//		}catch(IOException error){
//			System.out.println("error")
//		}
//	}
	
	def String[]  read(String lookingFor){
	
			var String[] temp =#["null"]
		try{
			var FileReader fr = new FileReader("localsUpdate.txt")
			var BufferedReader br = new BufferedReader(fr)
			var String line
			
			while((line=br.readLine)!=null && !temp.get(0).equals(lookingFor)){
					temp=line.split(";")
				}
			br.close()		
			
		}catch(IOException error){
			System.out.println("error")
		}
		if(temp.get(0).equals(lookingFor))
			return temp = temp.get(1).split(" ")
		else
			return temp=#[]
	}
	
}