model lab08
parameter Real p_cr = 49; //критическая стоимость продукта
parameter Real tau1 = 35; //длительность производственного цикла фирмы 1
parameter Real p1 = 9.9; //себестоимость продукта у фирмы 1
parameter Real tau2 = 29; //длительность производственного цикла фирмы 2
parameter Real p2 = 11.9; //себестоимость продукта у фирмы 2
parameter Real N = 50; //число потребителей производимого продукта
parameter Real q = 1; //максимальная потребность одного человека в продукте в единицу времени

parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);

parameter Real M0_1 = 7.9; //оборот средств фирмы 1 в начальный момент времени
parameter Real M0_2 = 9.9; //оборот средств фирмы 2 в начальный момент времени
Real M1(start=M0_1); //оборот средств фирмы 1
Real M2(start=M0_2); //оборот средств фирмы 2

equation
//Случай 1 - без учета социально-психологических факторов
der(M1) = M1 - (b/c1)*M1*M2 - (a1/c1)*M1*M1;
der(M2) = (c2/c1)*M2 - (b/c1)*M1*M2 - (a2/c1)*M2*M2;

//Случай 2 - без учета социально-психологических факторов
//der(M1) = M1 - (b/c1 + 0.00042)*M1*M2 - (a1/c1)*M1*M1;
//der(M2) = (c2/c1)*M2 - (b/c1)*M1*M2 - (a2/c1)*M2*M2;

end lab08;


