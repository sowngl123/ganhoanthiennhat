package vn.nuce.dto;

import java.io.Serializable;
import java.sql.Timestamp;

public class UserDto implements Serializable {
    private Long user_Id;
    private String user_Name;
    private String user_Password;
    private Integer user_Role;
    private String user_Fullname;
    private Integer user_Gender;
    private String user_Phone;
    private String user_Email;
    private Timestamp user_Createdate;
    private Timestamp user_Lastupdate;
    private Integer user_Status;
    private String base64Image;
    private byte[] image;

    public Long getUser_Id() {
        return user_Id;
    }

    public void setUser_Id(Long user_Id) {
        this.user_Id = user_Id;
    }

    public String getUser_Name() {
        return user_Name;
    }

    public void setUser_Name(String user_Name) {
        this.user_Name = user_Name;
    }

    public String getUser_Password() {
        return user_Password;
    }

    public void setUser_Password(String user_Password) {
        this.user_Password = user_Password;
    }

    public String getUser_Fullname() {
        return user_Fullname;
    }

    public void setUser_Fullname(String user_Fullname) {
        this.user_Fullname = user_Fullname;
    }

    public String getUser_Phone() {
        return user_Phone;
    }

    public void setUser_Phone(String user_Phone) {
        this.user_Phone = user_Phone;
    }

    public String getUser_Email() {
        return user_Email;
    }

    public void setUser_Email(String user_Email) {
        this.user_Email = user_Email;
    }

    public Timestamp getUser_Createdate() {
        return user_Createdate;
    }

    public void setUser_Createdate(Timestamp user_Createdate) {
        this.user_Createdate = user_Createdate;
    }

    public Timestamp getUser_Lastupdate() {
        return user_Lastupdate;
    }

    public void setUser_Lastupdate(Timestamp user_Lastupdate) {
        this.user_Lastupdate = user_Lastupdate;
    }

    public String getBase64Image() {
        return base64Image;
    }

    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public Integer getUser_Role() {
        return user_Role;
    }

    public void setUser_Role(Integer user_Role) {
        this.user_Role = user_Role;
    }

    public Integer getUser_Gender() {
        return user_Gender;
    }

    public void setUser_Gender(Integer user_Gender) {
        this.user_Gender = user_Gender;
    }

    public Integer getUser_Status() {
        return user_Status;
    }

    public void setUser_Status(Integer user_Status) {
        this.user_Status = user_Status;
    }
}
