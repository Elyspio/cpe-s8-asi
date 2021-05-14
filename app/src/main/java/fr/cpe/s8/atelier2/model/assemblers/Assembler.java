package fr.cpe.s8.atelier2.model.assemblers;

public interface Assembler<Entity, Dto>
{
    Dto toDto(Entity entity);

    Entity fromDto(Dto entity);

}
