package vn.nuce.repository;

import vn.nuce.data.CrudRepository;
import vn.nuce.entity.TourEntity;

import java.util.List;

public interface TourRepository extends CrudRepository<Long, TourEntity> {
    TourEntity findbyID(Long id);
    List<TourEntity> findByFavorite(String ids);
    List<TourEntity> findTop3();
    List<TourEntity> findByKeyword(String keywords);
    List<TourEntity> findBySpecial(Integer id);

}
