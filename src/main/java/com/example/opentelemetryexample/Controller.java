package com.example.opentelemetryexample;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    private final Service service;
    Logger logger = LoggerFactory.getLogger(Controller.class);

    public Controller(Service service) {
        this.service = service;
    }

    @GetMapping("/")
    public String hello() {
        logger.info("Hello World!2222");
        return service.hello();
    }
}
