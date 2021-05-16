package fr.cpe.s8.atelier2.model.dto;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class CardDetail
{
    @NotNull
    private Long cardId;
    @NotEmpty
    private String name;
    @NotEmpty
    private String description;
    @NotEmpty
    private String family;
    @NotEmpty
    private String affinity;
    @NotNull
    private Long energy;
    @NotNull
    private Long hp;
    @NotNull
    private Long price;
    @NotNull
    private Long defense;
    @NotNull
    private Long attack;
    @NotEmpty
    private String imgUrl;

    public CardDetail(Long cardId, String name, String description, String family, String affinity, Long energy, Long hp, Long price, Long defense, Long attack, String imgUrl)
    {
        this.cardId = cardId;
        this.name = name;
        this.description = description;
        this.family = family;
        this.affinity = affinity;
        this.energy = energy;
        this.hp = hp;
        this.price = price;
        this.defense = defense;
        this.attack = attack;
        this.imgUrl = imgUrl;
    }


    public Long getCardId()
    {
        return cardId;
    }

    public void setCardId(Long cardId)
    {
        this.cardId = cardId;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription(String description)
    {
        this.description = description;
    }

    public String getFamily()
    {
        return family;
    }

    public void setFamily(String family)
    {
        this.family = family;
    }

    public String getAffinity()
    {
        return affinity;
    }

    public void setAffinity(String affinity)
    {
        this.affinity = affinity;
    }

    public Long getEnergy()
    {
        return energy;
    }

    public void setEnergy(Long energy)
    {
        this.energy = energy;
    }

    public Long getHp()
    {
        return hp;
    }

    public void setHp(Long hp)
    {
        this.hp = hp;
    }

    public Long getPrice()
    {
        return price;
    }

    public void setPrice(Long price)
    {
        this.price = price;
    }

    public Long getDefense()
    {
        return defense;
    }

    public void setDefense(Long defense)
    {
        this.defense = defense;
    }

    public Long getAttack()
    {
        return attack;
    }

    public void setAttack(Long attack)
    {
        this.attack = attack;
    }

    public String getImgUrl()
    {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl)
    {
        this.imgUrl = imgUrl;
    }
}
