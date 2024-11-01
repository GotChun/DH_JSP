package MVCprac.Service;

import java.util.List;

public interface Service<T> {

	void add(T entity);
	
	void update(T entity);

	void delete(int id);

	T select(int id);

	List<T> selectAll();
}
