/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.beans.PropertyVetoException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author Alex
 */
@Configuration  // dilwnoume oti einai arxeio config
@EnableTransactionManagement// Used to enable transactional support: Annotations can be recognized by spring container
@PropertySource(value = {"classpath:database.properties"}) //Externalize your configuration to a properties file
public class DatabaseConfig {

    @Autowired   // to vazw gia na mi grapsw autowired environment env = new environment
    private Environment environment;//Can be used to read properties file

    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory s) {
        HibernateTransactionManager txManager = new HibernateTransactionManager();
        txManager.setSessionFactory(s);
        return txManager;
    }

    @Bean
    public DataSource datasource() {
        ComboPooledDataSource datasource = new ComboPooledDataSource();

        datasource.setJdbcUrl(environment.getProperty("jdbc.url"));
        datasource.setUser(environment.getProperty("jdbc.user"));
        datasource.setPassword(environment.getProperty("jdbc.password"));
        datasource.setInitialPoolSize(getIntProperty(environment.getProperty("connection.pool.initialPoolSize")));
        datasource.setMinPoolSize(getIntProperty(environment.getProperty("connection.pool.minPoolSize")));
        datasource.setMaxPoolSize(getIntProperty(environment.getProperty("connection.pool.maxPoolSize")));
        datasource.setMaxIdleTime(getIntProperty(environment.getProperty("connection.pool.maxIdleTime")));
        return datasource;
    }

    private Properties hibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
        properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
        properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
        return properties;
    }

    @Bean(name = "sessionFactory")
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(datasource());
        sessionFactory.setPackagesToScan("com.gymgroup.entities");
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
    }

    private int getIntProperty(String property) {
        int value = Integer.parseInt(property);
        return value;
    }
}
