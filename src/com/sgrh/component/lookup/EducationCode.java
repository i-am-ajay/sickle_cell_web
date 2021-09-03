package com.sgrh.component.lookup;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("Education")
public class EducationCode extends Lookup{

}
