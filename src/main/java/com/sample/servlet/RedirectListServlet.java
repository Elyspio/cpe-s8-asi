package com.sample.servlet;

import com.sample.controler.CardDao;
import com.sample.model.CardBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/list")
public class RedirectListServlet extends HttpServlet
{
    private static final String LPONEY = "lponey";
    private static final long serialVersionUID = 1L;
    private CardDao dao;

    public RedirectListServlet()
    {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        getDao();
        List<CardBean> listPoney = this.dao.getPoneyList();

        request.getSession().setAttribute(LPONEY, listPoney);

        this.getServletContext().getRequestDispatcher("/WEB-INF/displayList.jsp").forward(request, response);
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
