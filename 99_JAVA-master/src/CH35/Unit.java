package CH35;

public abstract class Unit {
	int hp;
	int amor;
	String type;
	abstract void move();
	abstract void underAttack(int damage);
}
