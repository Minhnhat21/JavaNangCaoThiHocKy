package com.minhnhat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.minhnhat.entity.Score;

@Repository
public interface ScoreRepository extends JpaRepository<Score, Integer> {

}
