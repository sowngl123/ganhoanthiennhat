package vn.nuce.repository.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import vn.nuce.data.impl.CrudRepositoryImpl;
import vn.nuce.entity.TourEntity;
import vn.nuce.repository.TourRepository;

import javax.persistence.TypedQuery;
import java.util.Collections;
import java.util.List;

@Repository
@Transactional
public class TourRepositoryImpl extends CrudRepositoryImpl<Long, TourEntity> implements TourRepository {
    @Autowired
    SessionFactory sessionFactory;
    @Override
    public TourEntity findbyID(Long id) {
        Session session = sessionFactory.getCurrentSession();
        TourEntity entity = session.find(TourEntity.class,id);
        return entity;
    }

    @Override
    public List<TourEntity> findByFavorite(String ids) {
        String hql = " FROM TourEntity p WHERE p.tour_Id IN ("+ids+")";
        System.out.println(hql);
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<TourEntity> query = session.createQuery(hql,TourEntity.class);
        List<TourEntity> list = query.getResultList();
        return list;
    }

    @Override
    public List<TourEntity> findTop3() {
        String hql = "  FROM TourEntity p ORDER BY p.tour_Createdate DESC";
        System.out.println(hql);
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<TourEntity> query = session.createQuery(hql,TourEntity.class);
        query.setMaxResults(4);
        List<TourEntity> list = query.getResultList();
        Collections.shuffle(list);
        return list;
    }

    @Override
    public List<TourEntity> findByKeyword(String keywords) {
        String hql = " FROM TourEntity p where p.tour_Name like :kw ";
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<TourEntity> query = session.createQuery(hql,TourEntity.class);
        query.setParameter("kw","%"+keywords+"%");
        List<TourEntity> list = query.getResultList();
        return list;
    }

    @Override
    public List<TourEntity> findBySpecial(Integer id) {
        Session session = sessionFactory.getCurrentSession();
        String hql = "FROM TourEntity p";
        TypedQuery<TourEntity> query = session.createQuery(hql,TourEntity.class);
        switch (id){
            case 0://Mới nhất
                hql = "FROM TourEntity p ORDER BY p.tour_Createdate DESC";
                query = session.createQuery(hql,TourEntity.class);
                break;
            case 1:// theo giá
                hql = "FROM TourEntity p ORDER BY p.tour_Price DESC";
                query = session.createQuery(hql,TourEntity.class);
                break;
            case 2:// yêu thích nhất
                hql = "FROM TourEntity p ORDER BY p.tour_Createdate DESC";
                query = session.createQuery(hql,TourEntity.class);
                break;
            case 3:// mua nhiều nhất
                break;
            case 4:// yêu thích nhất
                hql = "FROM TourEntity p where p.tour_Price between 2000000 and 3000000 ";
                query = session.createQuery(hql,TourEntity.class);
                break;
        }
        query = session.createQuery(hql,TourEntity.class);
        List<TourEntity> list = query.getResultList();
        return list;
    }
}
