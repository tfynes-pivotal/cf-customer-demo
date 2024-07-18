@RestController 

class HelloGroovy {
	@RequestMapping("/") 
	String home(){
		System.out.println("Hello Groovy");
		"Hello Groovy\n" 
	}
}
