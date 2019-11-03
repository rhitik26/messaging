package connector;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class HibernateOGMUtil {
	
	private static EntityManagerFactory emf;

	static {
		try {
			emf = Persistence.createEntityManagerFactory("relPU");
		} catch (Exception e) {
			System.err.println("Initial EntityManagerFactory creation failed." );
			e.printStackTrace();
		}
	}

	public static EntityManagerFactory getEntityManagerFactory() {
		return emf;
	}

	public static void closeEntityManagerFactory() {
		emf.close();
	}

}
