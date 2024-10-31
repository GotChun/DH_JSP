package CH35;

public class Marine extends Unit{
	
	public int damageVal;
	public Gun myGun;
	
	Marine(){
		myGun = new Rifle();
	}
	public void  setMyGun(Gun gun){
		this.myGun=gun;
	}
	
	
	@Override
	void move() {
		// TODO Auto-generated method stub
		
	}

	@Override
	void underAttack(int damage) {
		// TODO Auto-generated method stub	
	}
	void attack(Unit unit) {
		
	}

}
