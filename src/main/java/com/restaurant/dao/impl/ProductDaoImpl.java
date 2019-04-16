package com.restaurant.dao.impl;

import com.restaurant.dao.ProductDao;
import com.restaurant.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/** Standard practice to have ProductDao interface and ProductDiaImpl that implements that interface
 * This is done so that data can be auto-wired by this interface and Spring will find these Beans
 * and wire them and inject them in the Spring container as Beans */

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Product getProductById(int id) {

        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);
        session.flush();

        return product;

    }

    public List<Product> getProductList() {

        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> productList = query.list();
        session.flush();

        return productList;

    }

    public void addProduct(Product product) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();

    }

    public void editProduct(Product product) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();

    }

    public void deleteProduct(Product product) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(product);
        session.flush();

    }

}
