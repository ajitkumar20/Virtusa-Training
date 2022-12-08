async function averageAndVariance(numbers) {
    const sum = numbers.reduce((a, b) => a + b, 0);
    const average = sum / numbers.length;
  
    let variance = 0;
    for (const num of numbers) {
      variance += (num - average) ** 2;
    }
    variance /= numbers.length;
  
    return { average, variance };
  }
  async function main() {
    const result = await averageAndVariance([1, 2, 3, 4, 5]);
    console.log(result);
  }
  
  main();
    