package fr.cpe.s8.atelier2.model.dto;

public class CardBase
{
    private Long cardId;
    private String name;
    private String description;
    private String family;
    private String affinity;
    private Long energy;
    private Long hp;
    private Long price;

    public CardBase(Long cardId, String name, String description, String family, String affinity, Long energy, Long hp, Long price)
    {
        this.cardId = cardId;
        this.name = name;
        this.description = description;
        this.family = family;
        this.affinity = affinity;
        this.energy = energy;
        this.hp = hp;
        this.price = price;
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


}
