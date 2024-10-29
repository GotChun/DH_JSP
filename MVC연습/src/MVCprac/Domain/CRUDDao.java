package MVCprac.Domain;

public interface CRUDDao<T> {

	T select(int id);

	void insert(T entity);

	void delete(int id);

	void update(T entity);

}
