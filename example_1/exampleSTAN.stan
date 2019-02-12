//Use for comments
//All statements must end with a semi-colon ";"

//Declare all data that you will pass to Stan to estimate your model
//real for continuous data, int for discrete (integer) data. 
//You can place limits on data for sanity checks. For example, the variance has a lower limit of 0. 

data {
  int<lower=0> N;
  real Y[N]; // Scores of 20 students in an array
}



//a number of parameter types: 
//vector[3] beta for linear regression or matrix[4,4] for covariance matrices
//simplex for a parameter vector that must sum to 1
//corr_matrix or ordered

/* We can have computed data with this protocol
transformed data { ... }
*/

parameters {
  real mu;
  real<lower=0> sigma;
}

/* We can have computed params with this protocol
For example, we would put variance here since we have the sigma (std) in the parameters.
transformed parameters { ... }
*/

//Specify Likelihood and Priors. The default prior is a uniform, flat prior.
model {
  Y ~ normal(mu,sigma); // Likelihood
  mu ~ normal(0,100); // Prior for mu
  sigma ~ cauchy(0,100); // Prior for sigma
}

