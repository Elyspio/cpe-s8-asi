package fr.cpe.s8.atelier2.assemblers;

public interface Assembler<Entity, Dto>
{
    public  abstract Dto toDto(Entity entity);
    public  abstract Entity fromDto(Dto entity);

}
