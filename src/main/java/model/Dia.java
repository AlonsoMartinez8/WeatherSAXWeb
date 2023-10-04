package model;

public class Dia {
	private String from;
	private String to;
	private String prono;
	private String icono;
	private String preci;
	private double max;
	private double min;
	public Dia() {
		super();
	}
	public Dia(String from, String to, String prono, String icono, String preci, double max, double min) {
		super();
		this.from = from;
		this.to = to;
		this.prono = prono;
		this.icono = icono;
		this.preci = preci;
		this.max = max;
		this.min = min;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getProno() {
		return prono;
	}
	public void setProno(String prono) {
		this.prono = prono;
	}
	public String getIcono() {
		return icono;
	}
	public void setIcono(String icono) {
		this.icono = icono;
	}
	public String getPreci() {
		return preci;
	}
	public void setPreci(String preci) {
		this.preci = preci;
	}
	public double getMax() {
		return max;
	}
	public void setMax(double max) {
		this.max = max;
	}
	public double getMin() {
		return min;
	}
	public void setMin(double min) {
		this.min = min;
	}
	@Override
	public String toString() {
		return "Dia [from=" + from + ", to=" + to + ", prono=" + prono + ", icono=" + icono + ", preci=" + preci
				+ ", max=" + max + ", min=" + min + "]";
	}
}
