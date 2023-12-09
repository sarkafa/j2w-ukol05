package cz.czechitas.java2webapps.ukol5.entity;

public enum Pohlavi {
    CHLAPEC, DIVKA;
    public String getDisplayName() {
        String lowerCaseName = this.name().toLowerCase();
        return lowerCaseName.substring(0, 1).toUpperCase() + lowerCaseName.substring(1);
    }
}
