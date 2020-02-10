package superObject;

import com.skytech.skypiea.commons.entity.Disease;
import com.skytech.skypiea.commons.enumeration.DiseaseType;

public class DiseaseSuper {

	private Disease disease;
	
	private DiseaseType typeOfDisease;
	
	public DiseaseSuper() {
		
	}
	
	public DiseaseSuper(Disease disease, DiseaseType typeOfDisease) {
		this.disease = disease;
		this.typeOfDisease = typeOfDisease;
	}
	
	public Disease getDisease() {
		return disease;
	}

	public void setDisease(Disease disease) {
		this.disease = disease;
	}

	public DiseaseType getTypeOfDisease() {
		return typeOfDisease;
	}

	public void setTypeOfDisease(DiseaseType typeOfDisease) {
		this.typeOfDisease = typeOfDisease;
	}

	@Override
	public String toString() {
		return "DiseaseSuper [disease=" + disease + ", typeOfDisease=" + typeOfDisease + "]";
	}
	
	

}
