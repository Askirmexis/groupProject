package com.gymgroup.controller;




import com.gymgroup.entities.Role;
import com.gymgroup.entities.User;
import com.gymgroup.service.RoleService;
import com.gymgroup.service.UserService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/register")
public class RegistrationController {
    
    @Autowired
    UserService userService;
    @Autowired
    RoleService roleService;
    
    @GetMapping("/showForm")
    public String showRegistrationForm(Model m){
        m.addAttribute("user", new User());
        return "registration-form";
    }
    
    @ModelAttribute("roloi")
    public List<Role> fereRoles(){
        
        return roleService.getRoles();
    }
    
    @PostMapping("/processRegistration")
    public String processRegistration(@Valid @ModelAttribute("user") User user, BindingResult result, Model m){
        if(result.hasErrors()){
            return "registration-form";
        }
        User existing = userService.findByUsername(user.getUsername());
        if(existing !=null){
            m.addAttribute("user", new User());
            m.addAttribute("userExistsError", "Username already exists");
            return "registration-form";
        }
        userService.save(user);
        return "registration-confirmation";
    }
}
