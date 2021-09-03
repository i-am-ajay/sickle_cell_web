package com.sgrh.component.lookup;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("Religion")
public class ReligionCode extends Lookup{

}
