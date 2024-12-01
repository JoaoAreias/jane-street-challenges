include "alldifferent.mzn";

set of int: edges = 1..24;
array[edges] of var int: values;

constraint forall(i in edges)(values[i] > 0);
constraint forall(i in edges)(values[i] <= 24);
constraint alldifferent(values);


constraint values[1] + values[2] = 17;
constraint values[1] + values[3] = 3;
constraint values[5] + values[7] + values[10] + values[12] = 54;
constraint values[6] + values[9] + values[11] + values[13] = 49;
constraint values[8] + values[10] + values[11] + values[14] + values[15] = 60;
constraint values[12] + values[14] + values[16] + values[17] + values[19] = 79;
constraint values[13] + values[15] + values[18] + values[20] = 75;
constraint values[17] + values[21] + values[22] = 29;
constraint values[19] + values[21] + values[23] = 39;
constraint values[20] + values[22] + values[24] = 25;

constraint values[4] = 12;
constraint values[13] = 20;
constraint values[14] = 24;
constraint values[19] = 7;


constraint (values[9] = 8) \/ (values[9] + values[6] <= 8) \/ (values[9] + values[11] <= 8);
constraint (values[8] = 6) \/ 
           (values[8] + values[10] <= 6) \/ 
           (values[8] + values[11] <= 6) \/ 
           (values[8] + values[15] <= 6);
           
constraint (values[7] + values[5] <= 31) \/ 
           (values[7] + values[10] <= 31) \/ 
           (values[7] + values[12] <= 31);



solve satisfy;