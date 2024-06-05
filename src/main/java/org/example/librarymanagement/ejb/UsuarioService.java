package org.example.librarymanagement.ejb;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.example.librarymanagement.model.Usuario;

import java.util.List;

@Stateless
public class UsuarioService {
    @PersistenceContext
    private EntityManager em;

    public Usuario findById(Long id) {
        return em.find(Usuario.class, id);
    }
    public Usuario findByEmail(String email) {
        return em.createQuery("SELECT u FROM Usuario u WHERE u.email = :email", Usuario.class)
                .setParameter("email", email)
                .getSingleResult();
    }

    public void create(Usuario usuario) {
        em.persist(usuario);
    }

    public void update(Usuario usuario) {
        em.merge(usuario);
    }

    public void delete(Long id) {
        Usuario usuario = findById(id);
        if (usuario != null) {
            em.remove(usuario);
        }
    }

    public List<Usuario> findAll() {
        return em.createQuery("SELECT u FROM Usuario u", Usuario.class).getResultList();
    }
}
