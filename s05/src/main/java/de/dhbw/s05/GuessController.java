package de.dhbw.s05;

import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GuessController {

  @GetMapping("/")
  public String index() {
    return "index";
  }

  @GetMapping("/guess")
  public ModelAndView guess(HttpServletRequest request) {
    int userGuess = Integer.parseInt(request.getParameter("number"));
    int randomNumber = ThreadLocalRandom.current().nextInt(1, 6);
    boolean correct = randomNumber == userGuess;

    return new ModelAndView("result")
      .addObject("userGuess", userGuess)
      .addObject("actual", randomNumber)
      .addObject("correct", correct);
  }

  @GetMapping("/guess-alternative")
  public ModelAndView alternativeGuess(HttpServletRequest request) {
    int userGuess = Integer.parseInt(request.getParameter("number"));

    GuessingGame game = new GuessingGame();

    return new ModelAndView("result")
      .addObject("userGuess", userGuess)
      .addObject("actual", game.getCorrectResult())
      .addObject("correct", game.test(userGuess));
  }
}
