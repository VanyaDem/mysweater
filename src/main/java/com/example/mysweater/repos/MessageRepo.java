package com.example.mysweater.repos;

import com.example.mysweater.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {

       List<Message> findByTag(String tag);
}
