
public abstract class Manufacturing {

	public final void makePart () {
		operation1();
		
		if(executeOp2) {
			operation2();
		}
	}
	
	public void operation1() {
		System.out.println("Operation 1 is running...");
	}
	
	public abstract void operation2();
	
	boolean executeOp2 = true;
}
