package Ex2;

public enum Ex2DiaSemana {
    SEGUNDA,
    TERCA,
    QUARTA,
    QUINTA,
    SEXTA,
    SABADO,
    DOMINGO;

    public static Ex2DiaSemana getEnum(int dia){
        return Ex2DiaSemana.values()[dia];
    }
}