package com.cos.board.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.cos.board.model.Board;

// 자동 IoC등록됨.
// JpaRepository안에 어노테이션 있음.
public interface BoardRepository extends JpaRepository<Board, Integer>{
	// public abstract 생략
	@Query(value = "select * from board where id=:id",nativeQuery = true) //?를 사용하면 파라메터 순서를 생각해야하지만 :을사용하면 자동바인딩됨.
	Board mFindById(int id);
	
	@Modifying //수정, 삭제, 저장시 modifying 걸어줘야함
	@Query(value="delete from board where id=:id", nativeQuery = true)
	int mDeleteById(int id);
	
}
