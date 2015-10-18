/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.opensource.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Embeddable;


/**
 * Project <b> elib</b>. 
 *
 * This Embeddable describes a composite primary key for UsersBooks class
 *
 * @version $version$
 * @author Oleksandr Lukichov
 *
 * @since 18 זמגע. 2015 נ.
 *
 */
@Embeddable
public class UsersBooksPK implements Serializable{

    @Column(name = "user_id")
    private Integer userId;

    @Column(name = "book_id")
    private Integer bookId;
}
