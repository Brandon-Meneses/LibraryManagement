package org.example.librarymanagement.ejb;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.ejb.Stateless;
import org.example.librarymanagement.model.Libro;

import java.util.List;

@Stateless
public class LibroService {
    @PersistenceContext
    private EntityManager em;

    public Libro findById(Long id) {
        return em.find(Libro.class, id);
    }

    public void create(Libro libro) {
        em.persist(libro);
    }

    public void update(Libro libro) {
        em.merge(libro);
    }

    public void delete(Long id) {
        Libro libro = findById(id);
        if (libro != null) {
            em.remove(libro);
        }
    }

    public List<Libro> findAll() {
        return em.createQuery("SELECT l FROM Libro l", Libro.class).getResultList();
    }
}
