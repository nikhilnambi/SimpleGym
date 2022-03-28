package com.quest.repos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.quest.controller.Feedback;
import com.quest.entities.Account;
import com.quest.entities.FeedbackMessage;
import com.quest.entities.Trainers;

public class GymRespository {

	public GymRespository() {

	}

	public int createAccount(Account account) {

		try {

			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
			EntityManager em = emf.createEntityManager();

			em.getTransaction().begin();

			em.persist(account);

			em.getTransaction().commit();

			em.close();
			emf.close();
		}

		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

		return 1;
	}

	public int FeedbackAccount(FeedbackMessage feedback) {

		try {

			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
			EntityManager em = emf.createEntityManager();

			em.getTransaction().begin();

			em.persist(feedback);

			em.getTransaction().commit();

			em.close();
			emf.close();
		}

		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

		return 1;
	}

	public int AddTrainer(Trainers trainer) {

		try {

			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
			EntityManager em = emf.createEntityManager();

			em.getTransaction().begin();

			em.persist(trainer);

			em.getTransaction().commit();

			em.close();
			emf.close();
		}

		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

		return 1;
	}

	public Account getAccountById(Integer id) {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();

		Account account = em.find(Account.class, id);

		em.getTransaction().commit();

		em.close();
		emf.close();

		return account;
	}

	public Trainers getTrainerById(Integer id) {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();

		Trainers trainer = em.find(Trainers.class, id);

		em.getTransaction().commit();

		em.close();
		emf.close();

		return trainer;
	}

	public List<Account> findAllAccounts() {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();

		List<Account> accounts = em.createQuery("from Account").getResultList();

		em.getTransaction().commit();

		em.close();
		emf.close();

		return accounts;

	}

	public List<Trainers> findAllTrainers() {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();

		List<Trainers> trainers = em.createQuery("from Trainers").getResultList();

		em.getTransaction().commit();

		em.close();
		emf.close();

		return trainers;

	}

	public List<FeedbackMessage> findAllFeedbacks() {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();

		List<FeedbackMessage> feedbacks = em.createQuery("from FeedbackMessage").getResultList();

		em.getTransaction().commit();

		em.close();
		emf.close();

		return feedbacks;

	}

	public int editAccount(Account account) {

		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
			EntityManager em = emf.createEntityManager();

			em.getTransaction().begin();

			Account existingAccount = em.find(Account.class, account.getId());

			existingAccount.setName(account.getName());
			existingAccount.setGender(account.getGender());
			existingAccount.setAge(account.getAge());
			existingAccount.setEmail(account.getEmail());
			existingAccount.setPhoneNumber(account.getPhoneNumber());

			em.getTransaction().commit();

			em.close();
			emf.close();

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int editTrainer(Trainers trainer) {

		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
			EntityManager em = emf.createEntityManager();

			em.getTransaction().begin();

			Trainers existingTrainer = em.find(Trainers.class, trainer.getId());

			existingTrainer.setName(trainer.getName());
			existingTrainer.setGender(trainer.getGender());
			existingTrainer.setTrainerType(trainer.getTrainerType());
			existingTrainer.setPhonenumber(trainer.getPhonenumber());
			existingTrainer.setExperience(trainer.getExperience());

			em.getTransaction().commit();

			em.close();
			emf.close();

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int deleteAccount(Integer id) {

		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
			EntityManager em = emf.createEntityManager();

			em.getTransaction().begin();

			Account existingAccount = em.find(Account.class, id);

			em.remove(existingAccount);

			em.getTransaction().commit();

			em.close();
			emf.close();

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return 1;

	}

	public int deleteTrainer(Integer id) {

		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gym");
			EntityManager em = emf.createEntityManager();

			em.getTransaction().begin();

			Trainers existingTrainer = em.find(Trainers.class, id);

			em.remove(existingTrainer);

			em.getTransaction().commit();

			em.close();
			emf.close();

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return 1;

	}

}
