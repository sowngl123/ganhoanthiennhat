package vn.nuce.service;

import vn.nuce.dto.BookTourDto;
import vn.nuce.dto.UserDto;

import java.util.List;

public interface UserService {
    Object[] checkLogin(String username,String password);
    List<UserDto> findAllUsers();
    void saveUser(UserDto userDto);
    Integer deleteUser(List<Long> ids);
    Integer findStatus(Long id);
    UserDto findOneUser(Long id);
    UserDto updateUser(UserDto dto);
    List<BookTourDto> findBookTourByUserId(Long id);
    List<BookTourDto> findBookTourWaitByUserId(Long id);
}
