package cz.czechitas.java2webapps.ukol5.controller;

import cz.czechitas.java2webapps.ukol5.entity.RegistrationForm;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

  @GetMapping("/")
  public ModelAndView get() {
    return new ModelAndView("formular").addObject("form", new RegistrationForm());
  }

  // stejne jako nahore rucni vytvareni ModelAndView
  // Binding results - jak dopadla validace
  @PostMapping("/")
  public Object post(@Valid @ModelAttribute("form") RegistrationForm form,
                     BindingResult bindingResult) {
    System.out.println(form);
    if (bindingResult.hasErrors()) {
      return "formular";
    }
    int age = form.getVek();
    System.out.println(age);
    if (!(age > 9 && age < 15)) {
     return "formular";
    }
    ModelAndView modelAndViewRecap = new ModelAndView("recap");
    modelAndViewRecap.addObject("form", form);
    return modelAndViewRecap;
  }
}
