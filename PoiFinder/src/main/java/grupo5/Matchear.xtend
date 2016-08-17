package grupo5

import java.util.List
import java.util.ArrayList

class Matchear {
	List<Iop> listaPois=new ArrayList<Iop>
	
	def void agregarPoi(Iop iop){
		listaPois.add(iop)
	}
	
	def boolean matchearPoi(String name){
		listaPois.exists(lp|lp.matcherXNombre(name))
	}
}