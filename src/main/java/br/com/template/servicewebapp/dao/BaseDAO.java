package br.com.template.servicewebapp.dao;

import java.util.List;


public interface BaseDAO<T> {

	List<T> getAllItems();

	T getItemById(long id);

	void addItem(T item);

	void updateItem(T item);

	void deleteItem(long id);

	boolean itemExists(String value1, String value2);

}
