/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package emlity;

/**
 *
 * @author antoan
 */
public class Account {
 private int id;
 private String user;
 private String pass;
 private int isSell;
 private int isAdamin;

    public Account() {
    }

    public Account(int id, String user, String pass, int isSell, int isAdamin) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.isSell = isSell;
        this.isAdamin = isAdamin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdamin() {
        return isAdamin;
    }

    public void setIsAdamin(int isAdamin) {
        this.isAdamin = isAdamin;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", isSell=" + isSell + ", isAdamin=" + isAdamin + '}';
    }
  
 
}
