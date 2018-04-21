package mx.ipn.escom.sgps.productividad.action;

import org.apache.struts2.convention.annotation.Namespace;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/productividad")

public class Productividad  extends ActionSupport{
	public String index(){
		return "index";
	}
}
