package com.minhnhat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhnhat.entity.MajorsRegister;
import com.minhnhat.repository.MajorsRegisterRepository;

@Service
public class MajorRegisterService {

	@Autowired
    private final MajorsRegisterRepository majorsRegisterRepository;

    public MajorRegisterService(MajorsRegisterRepository majorsRegisterRepository) {
        this.majorsRegisterRepository = majorsRegisterRepository;
    }

    public List<MajorsRegister> getMajorsList() {
        return majorsRegisterRepository.findAll();
    }

    public MajorsRegister getMajorsListByID(Integer id) {
        return majorsRegisterRepository.findById(id).get();
    }

}
