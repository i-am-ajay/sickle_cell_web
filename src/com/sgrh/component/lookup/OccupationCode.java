package com.sgrh.component.lookup;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("Occupation")
public class OccupationCode extends Lookup{

}
