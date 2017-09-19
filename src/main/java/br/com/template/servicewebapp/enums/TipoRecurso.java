package br.com.template.servicewebapp.enums;

public enum TipoRecurso {

	INFORMACAO("informacao")
	, AJUDA("ajuda")
	, PROCESSO("processo")
	, LINK("link")
	, INTENCAO("intencao")
	, IMAGEM("imagem")
	, VIDEO("video")
	, HTML("html");

	private final String value;

	private TipoRecurso(String value) {
		this.value = value;
	}

	public String getValue() {
		return this.value;
	}
	
	public static TipoRecurso fromString(String text) {
        if (text != null) {
            for (TipoRecurso b : TipoRecurso.values()) {
                if (text.equalsIgnoreCase(b.value)) {
                    return b;
                }
            }
        }
        return null;
    }
	
}
