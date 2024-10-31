package CH12;

public class Customer {
	int money;
	int count;
	
	void payment(Store store, int money) {
		count+=store.receive(money);
		
	}
}
