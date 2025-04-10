package com.example.demo;

import ch.qos.logback.classic.html.DefaultThrowableRenderer;
import gg.jte.TemplateEngine;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home(Model model) {
        Page page = new Page("My first lab in Gradle");
        List<String> userMusic = List.of("firstMusic", "secondMusic", "thirdMusic");
        model.addAttribute("message", "It`s my first message in Gradle!");
        model.addAttribute("hasPremium", true);
        model.addAttribute("userMusic", userMusic);
        model.addAttribute("page", page);
        return "index";
    }
}