package org.jichan.tapurtab;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//@Entity @Id @GeneratedValue

@Entity
public class Hello { //클래스 -> table, id와 hello는 attribute
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String hello;

}
