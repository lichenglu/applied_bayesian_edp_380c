data {
  # Number of data points
  int n1;
  int n2;
  # Number of successes
  int y1[n1];
  int y2[n2];
}

parameters {
  real<lower=0, upper=1> theta1;
  real<lower=0, upper=1> theta2;
}

model {  
  theta1 ~ beta(1, 1);
  theta2 ~ beta(1, 1);
  y1 ~ bernoulli(theta1);
  y2 ~ bernoulli(theta2); 
  
  /*
  A way to debug which step has caused an issue
  for (i in 1:n1) {
    y1 ~ bernoulli(theta1);
    print (i);
  }
  */
}

/*
generated quantities {}
*/