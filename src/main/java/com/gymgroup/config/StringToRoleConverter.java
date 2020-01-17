
package com.gymgroup.config;


import com.gymgroup.entities.Role;
import com.gymgroup.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;


@Component
public class StringToRoleConverter implements Converter<Object, Role>{
    
    @Autowired
    RoleService roleService;
    
    @Override
    public Role convert(Object s) {
        Integer id = Integer.parseInt((String)s);
        Role role = roleService.findById(id);
        return role;
    }

    
    
}
