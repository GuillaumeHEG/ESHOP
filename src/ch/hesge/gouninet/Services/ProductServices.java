package ch.hesge.gouninet.Services;

import ch.hesge.gouninet.Model.Product;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.transaction.Transactional;
import java.util.List;

@Stateless
public class ProductServices {

        @PersistenceContext
        private EntityManager em;

        @Transactional
        public void persist(List<Product> lstProducts) {
            for (Product p : lstProducts){
                em.persist(p);
            }
        }

        public List<Product> getProducts() {
            CriteriaBuilder cb = em.getCriteriaBuilder();
            CriteriaQuery<Product> cq = cb.createQuery(Product.class);
            cq.from(Product.class);
            TypedQuery<Product> q = em.createQuery(cq);
            List<Product> products = q.getResultList();
            return products;
        }

        public Product getProduct(int id) {
            Product p = em.find(Product.class, id);
            return p;
        }
}
