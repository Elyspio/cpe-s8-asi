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

@WebServlet("/add-card")
public class AddCardServlet extends HttpServlet
{
    private static final String RPONEY = "rponey";
    private static final long serialVersionUID = 1L;
    private CardDao dao;

    public AddCardServlet()
    {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        this.getServletContext().getRequestDispatcher("/WEB-INF/addCard.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        // Get parameters
        String  name = request.getParameter("name");
        String  imgUrl = request.getParameter("img_url");
        String  superPower = request.getParameter("super_power");
        String  color = request.getParameter("color");

        // Add to "database"
        getDao();
        CardBean newPoney = this.dao.addCard(name, color, imgUrl, superPower);

        // Display
        request.setAttribute(RPONEY, newPoney);
        this.getServletContext().getRequestDispatcher("/WEB-INF/displayRandom.jsp").forward(request, response);
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
