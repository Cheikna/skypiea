package com.skytech.skypiea.commons.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.Parameter;

@Entity
@Table(name="APPLICATION_PARAMETER")
public class ApplicationParameter extends com.skytech.skypiea.commons.entity.Entity {
	
	@Enumerated(EnumType.STRING)
	@Column(name="PARAMETER")
	private Parameter parameter;
	
	@Column(name="VALUE")
	private String value;

	public ApplicationParameter() {
		super();
	}	

	public ApplicationParameter(Long id, Long version, Parameter parameter, String value) {
		super(id, version);
		this.parameter = parameter;
		this.value = value;
	}

	public Parameter getParameter() {
		return parameter;
	}

	public void setParameter(Parameter parameter) {
		this.parameter = parameter;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((parameter == null) ? 0 : parameter.hashCode());
		result = prime * result + ((value == null) ? 0 : value.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		ApplicationParameter other = (ApplicationParameter) obj;
		if (parameter != other.parameter)
			return false;
		if (value == null) {
			if (other.value != null)
				return false;
		} else if (!value.equals(other.value))
			return false;
		return true;
	}	
}
