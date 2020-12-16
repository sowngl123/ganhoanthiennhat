package vn.nuce.service.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.nuce.dto.BookTourDto;
import vn.nuce.dto.TourDto;
import vn.nuce.dto.UserDto;
import vn.nuce.entity.BookTourEntity;
import vn.nuce.entity.UserEntity;
import vn.nuce.mapper.BookTourMapper;
import vn.nuce.repository.impl.BookTourRepositoryImpl;
import vn.nuce.service.BookTourService;
import vn.nuce.service.TopicService;
import vn.nuce.service.TourService;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class BookTourServiceImpl implements BookTourService {

    @Autowired
    BookTourRepositoryImpl bookTourRepository;

    @Autowired
    TourService tourService;

    private ModelMapper mapper = null;

    private ModelMapper getInstanceMapper() {
        if (mapper == null) {
            mapper = new ModelMapper();
        }
        return mapper;
    }


    @Override
    public List<BookTourDto> findAll() {
        List<BookTourEntity> bookTourEntities = bookTourRepository.findAll();
        List<BookTourDto> bookTourDtos = new ArrayList<BookTourDto>();

        if (bookTourEntities.size() > 0) {
            for (BookTourEntity bookTourEntity : bookTourEntities) {
                bookTourDtos.add(BookTourMapper.toBookTourDto(bookTourEntity));
            }
        }
        return bookTourDtos;
    }

    @Override
    public BookTourDto findById(Long id) {
        return BookTourMapper.toBookTourDto(bookTourRepository.findOne(id));
    }

    @Override
    public void save(BookTourDto bookTourDto) {
        bookTourRepository.save(BookTourMapper.toBookTourEntity(bookTourDto));
    }

    @Override
    public TourDto findTour(Long bookId) {
        List<TourDto> tourDtos = tourService.findAllTours();
        BookTourEntity bookTourEntity = bookTourRepository.findOne(bookId);
        TourDto tourDto = new TourDto();
        for (TourDto tourDto1 : tourDtos) {
            if (bookTourEntity.getTourId() == tourDto1.getTour_Id()) {
                tourDto = tourDto1;
            }
        }
        return tourDto;
    }


    @Override
    public void remove(List<Long> ids) {
        bookTourRepository.delete(ids);
    }

    @Override
    public BookTourDto updateOrder(BookTourDto dto) {
        BookTourEntity entity = bookTourRepository.update(getInstanceMapper().map(dto, BookTourEntity.class));
        return getInstanceMapper().map(entity, BookTourDto.class);
    }

    @Override
    public BookTourDto findOneOrder(Long id) {
        return getInstanceMapper().map(bookTourRepository.findOne(id), BookTourDto.class);
    }

    @Override
    public List<BookTourDto> findAllByStatus0() {
        List<BookTourEntity> entities = bookTourRepository.findAll();
        List<BookTourDto> dtos = new ArrayList<>();
        if (entities.size() > 0) {
            for (BookTourEntity entity : entities) {
                if (entity.getStatus() == 0){
                    dtos.add(getInstanceMapper().map(entity, BookTourDto.class));
                }
            }
        }
        return dtos;
    }

    @Override
    public List<BookTourDto> findAllByStatus1() {
        List<BookTourEntity> entities = bookTourRepository.findAll();
        List<BookTourDto> dtos = new ArrayList<>();
        if (entities.size() > 0) {
            for (BookTourEntity entity : entities) {
                if (entity.getStatus() == 1){
                    dtos.add(getInstanceMapper().map(entity, BookTourDto.class));
                }
            }
        }
        return dtos;
    }

    @Override
    public List<BookTourDto> findAllByStatus2() {
        List<BookTourEntity> entities = bookTourRepository.findAll();
        List<BookTourDto> dtos = new ArrayList<>();
        if (entities.size() > 0) {
            for (BookTourEntity entity : entities) {
                if (entity.getStatus() == 2){
                    dtos.add(getInstanceMapper().map(entity, BookTourDto.class));
                }
            }
        }
        return dtos;
    }
}
