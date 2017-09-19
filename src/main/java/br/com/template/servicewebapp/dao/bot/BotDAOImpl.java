package br.com.template.servicewebapp.dao.bot;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.template.servicewebapp.entity.Bot;

@Transactional
@Repository
public class BotDAOImpl implements BotDAO {

	
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public Bot getItemById(long id) {
		return entityManager.find(Bot.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Bot> getAllItems() {
		String hql = "FROM bots as bot ORDER BY bot.id";
		return (List<Bot>) entityManager.createQuery(hql).getResultList();
	}

	@Override
	public void addItem(Bot item) {
		entityManager.persist(item);
	}

	@Override
	public void updateItem(Bot item) {
		Bot itemBd = getItemById(item.getId());
		//itemBd.setTitle(item.getTitle());
		//itemBd.setCategory(item.getCategory());
		entityManager.flush();
	}

	@Override
	public void deleteItem(long id) {
		entityManager.remove(getItemById(id));
	}

	@Override
	public boolean itemExists(String value1, String value2) {
		
		String hql = "FROM bots WHERE value1 = ? and value = ?";
		
		int count = entityManager
				.createQuery(hql)
				.setParameter(1, value1)
				.setParameter(2, value2)
				.getResultList()
				.size();
		
		return count > 0 ? true : false;
	}
}
