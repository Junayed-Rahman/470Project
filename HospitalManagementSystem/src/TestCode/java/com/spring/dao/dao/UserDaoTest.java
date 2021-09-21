package com.spring.dao.dao;

import com.spring.dao.model.User;
import org.assertj.core.api.AssertionsForInterfaceTypes;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.Mockito.verify;

@ExtendWith(MockitoExtension.class)
class UserDaoTest {
    @Mock
    UserDao userDao;
    User user;

    @BeforeEach
    void setUp(){
        User user = new User("Junayed","junayed861@gmail.com","017XXXXXX");
    }
    @Test
    void TestsaveUser() {
        int userId = userDao.saveUser(user);
        User testUser = this.userDao.getUser(userId);
        assertThat(testUser).isEqualTo(user);


    }
}