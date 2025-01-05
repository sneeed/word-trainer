package de.jonas.wordtrainer.service;

import de.jonas.wordtrainer.model.SubUnit;
import de.jonas.wordtrainer.repository.SubUnitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SubUnitService {

    @Autowired
    SubUnitRepository subUnitRepository;

    public SubUnit getById(Long id) throws Exception {
        return subUnitRepository.findById(id).orElseThrow(Exception::new);
    }

    public List<SubUnit> getAll() {
        return subUnitRepository.findAll();
    }
}
