/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fabriciogmc
 */
@WebServlet({"*.action","/"})
public class HttpServletBasico extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,
                       HttpServletResponse res){
        
        String path = req.getServletPath();
        ServletContext sc = req.getServletContext();
        System.out.println(path); 
        switch (path){
            case "/":
               try{
                    sc.getRequestDispatcher("/jsp/login.jsp").forward(req, res);
                } catch (Exception e){}
               break;
            case "/usuario.action":
                try{
                    req.setCharacterEncoding("UTF-8");
                    String email = req.getParameter("login");
                    String senha = req.getParameter("senha");
                    res.setContentType("text/html");
                    res.setCharacterEncoding("UTF-8");
                    req.setAttribute("login", email);
                    req.setAttribute("senha", senha);
                    sc.getRequestDispatcher("/jsp/calc.jsp").forward(req, res);
                  }catch (Exception e){}
            break;
            case "/calc.action":
                    try{
                req.setCharacterEncoding("UTF-8");
                    String num_1 = req.getParameter("numero_1");
                    String num_2 = req.getParameter("numero_2");
                    res.setContentType("text/html");
                    res.setCharacterEncoding("UTF-8");
                    req.setAttribute("numero_1", num_1);
                    req.setAttribute("numero_2", num_2);
                    sc.getRequestDispatcher("/jsp/calc.jsp").forward(req, res);
                }catch (Exception e){}
            default:
                try{
                   sc.getRequestDispatcher("/jsp/hist.jsp").forward(req, res);
                }catch (Exception e){}               
        }
        
    }               
        }
      