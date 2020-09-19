package com.covid19.app.shareper.model.dto;

public class Donate {
private int total;

public int getTotal() {
	return total;
}

public void setTotal(int total) {
	this.total = total;
}

@Override
public String toString() {
	return "Donate [total=" + total + "]";
}

}
