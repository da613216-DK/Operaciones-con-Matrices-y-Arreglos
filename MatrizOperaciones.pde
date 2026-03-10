// Programación I 203
// Operaciones con matrices y arreglos
// 9 de  Marzo 2026
// Daniel Acosta y Reiber Romero 
// Programa que implementa operaciones sobre dos matrices cuadradas A y B (N×N) y dos arreglos v1, v2 de tamño N

//  ESTRUCTURAS GLOBALES
final int N = 3;//define N como constante igual a 3
float[][] A = new float[N][N];//matriz A de tamaño NxN
float[][] B = new float[N][N];//matriz B de tamaño NxN
float[] v1 = new float[N];//arreglo v1 tamaño N
float[] v2 = new float[N];//arreglo v2 tamaño N
int elegirLlenadoA = 0;//elegir tipo de llenado para la matriz A 0=aleatoria 1=conteo 
int elegirLlenadoB = 1; //elegir tipo de llenado para la matriz B 0=aleatoria 1=conteo
int elegirMatrizTranspuesta = 0;//elegir la matriz para calcular transpuesta 0=matrizA 1=matrizB
int elegirMatrizInversa = 1;//elegir la matriz para calcular la inversa 0=matrizA 1=matrizB


void setup() {
  //llenado de las matrices 
  if (elegirLlenadoA == 0){
    llenarMatrizAleatoria(A);
  }
  if (elegirLlenadoA == 1){
    llenarMatrizConteo(A);
  }
  if (elegirLlenadoB == 0){
    llenarMatrizAleatoria(B);
  }
  if (elegirLlenadoB == 1){
    llenarMatrizConteo(B);
  }
  // Llenado de  arreglos con valores aleatorios
  llenarArregloAleatorio(v1);
  llenarArregloAleatorio(v2);
  println("OPERACIONES CON MATRICES");
  println(" MATRIZ A:");
  imprimirMatriz(A);
  println("MATRIZ B:");
  imprimirMatriz(B);
  println(" ARREGLO v1:");
  imprimirArreglo(v1);
  println("ARREGLO v2:");
  imprimirArreglo(v2);

  // 1. Producto matricial C = A · B
  println("1. PRODUCTO MATRICIAL  C = A · B");
  float[][] C = multiplicarMatrices(A, B);
  imprimirMatriz(C);

  // 2. Producto vector fila × matriz: r = v1 · A
  println("2. PRODUCTO VECTOR×MATRIZ  r = v1 · A");
  float[] r = productoVectorMatriz(v1, A); // r = vec · mat   →  r[j] = Σ vec[i] * mat[i][j]
  imprimirArreglo(r);

  // 3. Producto punto de arreglos: s = v1 · v2
  println("3. PRODUCTO PUNTO  s = v1 · v2");
  float s = productoPunto(v1, v2);
  println("  s = " + s);

  // 4. Transpuesta de A o B 
  if (elegirMatrizTranspuesta == 0){
   println("4. TRANSPUESTA DE A  →  A^T");
  float[][] At = calcularTranspuesta(A);
  imprimirMatriz(At);
  }
  if (elegirMatrizTranspuesta == 1){
   println("4. TRANSPUESTA DE B  →  B^T");
  float[][] Bt = calcularTranspuesta(B);
  imprimirMatriz(Bt);
  }

  // 5. Inversa de A o B
  if (elegirMatrizInversa == 0){
   println("5. INVERSA DE A  →  A^(-1)");
  float[][] invA = calcularInversa(A);
  if (invA != null) {
    imprimirMatriz(invA);
    imprimirMatriz(multiplicarMatrices(A, invA));
  }
  }
 if (elegirMatrizInversa == 1){
  println("5. INVERSA DE B  →  B^(-1)");
  float[][] invB = calcularInversa(B);
  if (invB != null) {
    imprimirMatriz(invB);
  }
 }
}

void draw() {
}
