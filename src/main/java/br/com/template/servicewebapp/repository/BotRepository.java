package br.com.template.servicewebapp.repository;

import org.springframework.data.repository.CrudRepository;

import br.com.template.servicewebapp.entity.Bot;

public interface BotRepository extends CrudRepository<Bot, Long> {

}
