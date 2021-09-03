package com.sgrh.component.lookup;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("Income")
public class IncomeCode extends Lookup{

}
