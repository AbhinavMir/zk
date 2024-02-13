pragma circom 2.0.0

template NonEqual()
{
    signal input in0;
    signal input in1;
    signal inverse;
    inverse <-- 1 / (in0 - in1)
    inverse * (in0-in1) === 1;
  }

template Distinct(n)
{
    signal input in[n];
    component NonEqual[n][n];
    for (var i = 0; i<n;i++)
    {
        for (var j = 0; j<1;j++)
        {
            nonEqual[i][j] = NonEqual(); 
            nonEqual[i][j].in0 <== in[i];
            nonEqual[i][j].in1 <== in[j];
            }
      }
  }

template 




// checks for row constraint (each digit in a row is unique)

