package com.example.tdemo3;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Tdemo3Application {

	@Value("${CF_INSTANCE_GUID}")
	private String cfInstanceGuid;

	@Value("${CF_INSTANCE_INDEX}")
	private String cfInstanceIndex;


	public static void main(String[] args) {
		SpringApplication.run(Tdemo3Application.class, args);
	}

	@RequestMapping("/")
	public String index() {
		String s = "hello tanzu: index: " + cfInstanceIndex + " guid: " + cfInstanceGuid + "\n";
		System.out.println(s);
		return s;
	}
}
