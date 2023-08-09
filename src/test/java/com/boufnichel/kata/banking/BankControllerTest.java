package com.boufnichel.kata.banking;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import static org.assertj.core.api.Assertions.assertThat;

@ExtendWith(MockitoExtension.class)
public class BankControllerTest {

    @InjectMocks
    private BankController bankController;

    @Test
    void should_return_200_when_deposit_amount_is_positive(){
        ResponseEntity<String> responseEntity = bankController.deposit(5000d);
        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);
    }
}
