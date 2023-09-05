package com.collicode.api.securesign.repository;


import com.collicode.api.securesign.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface UserRepository extends JpaRepository<User, UUID> {

    boolean existsByEmailId(final String emailId);

    Optional<User> findByEmailId(final String emailId);

}
