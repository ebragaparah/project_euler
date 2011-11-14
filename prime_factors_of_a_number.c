#include<math.h>

int is_prime(int number){
	int iterator;
  if(number < 2)
    return 0;
  else{
		int count = 0;
		for(iterator = 1; iterator <= (sqrt(number) + 1); iterator++){
		  if(number % iterator == 0)
		  	count++;
		}
		return count <= 1;
  }
}

// # def is_prime(number):
// #   if number < 2:
// #     return False
// #   else:
// #     count = 0
// #     for iterator in xrange(1, int(sqrt(number))+1):
// #       if number % iterator == 0:
// #         count += 1
// #   return count <= 1

int * primes_below(int number){
	int iterator, jumper;
	int root = sqrt(number);
	int *primes = (int*) malloc((number - 1) * sizeof(int));
	
	for(iterator = 2, jumper = 0; iterator < number, jumper < (number - 2); iterator++, jumper++)
		primes[jumper] = iterator;
		
	for(iterator = 2; iterator <= sqrt(number) + 1; iterator++){
		for(jumper = primes[0]; jumper <= primes[number-2]; jumper++){
			if(jumper % iterator == 0) && (jumper != iterator)
				primes[jumper] = 0;
		}
	}
	
	
	return primes;
}
// 
// def primes_below(number):
//   root = int(sqrt(number))
//   primes = list(xrange(2, number))
//   for iterator in xrange(2, root+1):
//     for jumper in primes:
//       if (jumper % iterator == 0) and (jumper != iterator):
//        primes.remove(jumper)
//   return primes


// int prime_factors(int number){
// 	int *factors;
// 	if(! is_prime(number)){
// 		int *list_of_primes_below
// 		
// 	}
// }


// def prime_factors(number):
//   factors = []
//   if not is_prime(number):
//     list_of_primes_below = primes_below(number)
//     for iterator in list_of_primes_below:
//       while number % iterator == 0:
//         number /= iterator
//         factors.append(iterator)
//   else:
//     factors.append(number)
//   return factors
// 
// def largest_prime_factor(number):
//   return prime_factors(number)[-1]