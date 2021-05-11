package com.sample.controler;

import com.sample.model.CardBean;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class CardDao
{
    private final List<CardBean> myPoneyList;
    private final Random randomGenerator;

    public CardDao()
    {
        myPoneyList = new ArrayList<>();
        randomGenerator = new Random();
        createPoneyList();
    }

    private void createPoneyList()
    {

        CardBean p1 = new CardBean("John", "pink", "super pink", "http://ekladata.com/9-cPSlYvrenNHMVawFmf_gLx8Jw.gif");
        CardBean p2 = new CardBean("Roberto", "blue", "super lazy", "http://ekladata.com/JEVyY9DkwX4vVkakeBfikSyPROA.gif");
        CardBean p3 = new CardBean("Anna", "pink", "super music girl", "http://ekladata.com/fMJl--_v-3CmisaynTHju1DMeXE.gif");
        CardBean p4 = new CardBean("Angry Joe", "purple", "super angry power", "http://ekladata.com/AmbNNNvv-4YFEMZR8XD8e54WoHc.gif");
        CardBean p5 = new CardBean("Ursula", "pink", "super cloning power", "http://ekladata.com/CXJhi2YLUbNz6__e0Ct6ZP-XOds.gif");

        myPoneyList.add(p1);
        myPoneyList.add(p2);
        myPoneyList.add(p3);
        myPoneyList.add(p4);
        myPoneyList.add(p5);
    }


    public List<CardBean> getPoneyList()
    {
        return this.myPoneyList;
    }

    public CardBean getPoneyByName(String name)
    {
        for (CardBean cardBean : myPoneyList)
        {
            if (cardBean.getName().equals(name))
            {
                return cardBean;
            }
        }
        return null;
    }

    public CardBean getRandomPoney()
    {
        int index = randomGenerator.nextInt(this.myPoneyList.size());
        return this.myPoneyList.get(index);
    }


    public CardBean addCard(String name, String color, String imgUrl, String superPower)
    {
        CardBean card = new CardBean(name, color, imgUrl, superPower);
        this.myPoneyList.add(card);
        return card;
    }

}
