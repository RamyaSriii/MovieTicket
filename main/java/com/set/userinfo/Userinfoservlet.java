package com.set.userinfo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


import org.apache.catalina.User;

import com.set.dao.Userdao;
import com.set.model.UserModel;


@WebServlet("/UserinfoServlet")
public class Userinfoservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   Userdao u =new Userdao();
    public Userinfoservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get data");
		List<UserModel> AllUsers= u.getAllUsers();
		request.setAttribute("userList",AllUsers);
		request.getRequestDispatcher("Userinfo.jsp").forward(request,response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post");
		String fn=request.getParameter("fname");
		String ln=request.getParameter("lname");
		String pn=request.getParameter("phno");
		String email=request.getParameter("email");
		UserModel um=new UserModel(0,fn,ln,pn,email);
		try {
			u.insertUser(um);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		List<UserModel>userdata=u.getAllUsers();
		request.setAttribute("userList",userdata);
		request.getRequestDispatcher("Userinfo.jsp").forward(request,response);
		//doGet(request, response);
	}

}