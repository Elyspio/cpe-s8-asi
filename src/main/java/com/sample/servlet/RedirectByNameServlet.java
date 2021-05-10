package com.sample.servlet;

import com.sample.controler.CardDao;
import com.sample.model.CardBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/byName")
public class RedirectByNameServlet extends HttpServlet
{
    private static final String NPONEY = "nponey";
    private static final long serialVersionUID = 1L;
    private CardDao dao;

    public RedirectByNameServlet()
    {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        getDao();
        CardBean card = this.dao.getPoneyByName(request.getParameter("name"));
        request.setAttribute(NPONEY, card);
        this.getServletContext().getRequestDispatcher("/WEB-INF/displayByName.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doGet(request, response);
        //DO NOTHING
    }

    public void getDao()
    {
        if (this.getServletContext().getAttribute("DAO") != null)
        {
            this.dao = (CardDao) this.getServletContext().getAttribute("DAO");
        }
        else
        {
            this.dao = new CardDao();
            this.getServletContext().setAttribute("DAO", this.dao);
        }
    }

}
