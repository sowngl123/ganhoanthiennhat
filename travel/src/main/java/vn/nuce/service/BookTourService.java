package vn.nuce.service;

import vn.nuce.dto.BookTourDto;
import vn.nuce.dto.TourDto;

import java.util.List;

public interface BookTourService {

    List<BookTourDto> findAll();

    BookTourDto findById(Long id);

    void save(BookTourDto bookTourDto);

    TourDto findTour (Long bookId);

    void remove(List<Long> ids);

    BookTourDto updateOrder(BookTourDto dto);

    BookTourDto findOneOrder(Long id);

    List<BookTourDto> findAllByStatus0();

    List<BookTourDto> findAllByStatus1();

    List<BookTourDto> findAllByStatus2();
}
