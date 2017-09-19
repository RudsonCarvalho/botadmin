package br.com.template.servicewebapp.enums;

public enum TemplateFunction {

	CADASTRAR("cadastrar")
	, REMOVER("remover")
	, EDITAR("editar")
	, CARREGAR("carregar")
	;

	private final String value;

	private TemplateFunction(String value) {
		this.value = value;
	}

	public String getValue() {
		return this.value;
	}
	
	public static TemplateFunction fromString(String text) {
        if (text != null) {
            for (TemplateFunction b : TemplateFunction.values()) {
                if (text.equalsIgnoreCase(b.value)) {
                    return b;
                }
            }
        }
        return null;
    }
	
}
