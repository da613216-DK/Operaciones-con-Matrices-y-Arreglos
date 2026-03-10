Programación I
Operaciones con Matrices y Arreglos

Integrantes
Daniel Acosta
Reiber Romero

Descripción del programa

Sketch en Processing (Java) que declara dos matrices cuadradas A y B
de tamaño N×N y dos arreglos v1, v2 de tamaño N, e implementa las siguientes operaciones:

 1 Llenar matrices (aleatorio y por conteo) 
 2 Producto matricial C = A · B 
 3 Producto vector×matriz r = v1 · A (vector fila) 
 4 Producto punto s = v1 · v2
 5 Transpuesta A^T 
 6 Inversa A⁻¹ y B⁻¹ (método Gauss-Jordan)

Todos los resultados se muestran  en la consola de Processing.

Instrucciones de ejecución

1. Instalar Processing 4 desde (https://processing.org/download).
2. Descargar este repositorio.
3. Abrir el archivo MatrizOperaciones.pde en Processing.
4. Presionar el botón (▶) 
5. Los resultados aparecen en la consola.

Nota:el tamaño N de las matrices se controla con la constante final int N = 3;
ubicada al inicio del archivo. Puede cambiarse antes de ejecutar, de igual forma se puede cambiar el tipo de llenado para cada una de las dos matrices y elegir la matriz para operar

`llenarMatrizAleatoria(mat)`  Llena una matriz con floats aleatorios en [1, 10) 
`llenarMatrizConteo(mat)`  Llena una matriz con enteros consecutivos desde 1 
`llenarArregloAleatorio(vec)`  Llena un arreglo con floats aleatorios en [1, 10)

 `multiplicarMatrices(matA, matB)` | Producto matricial C = A·B, retorna `float[][]` 
 `productoVectorMatriz(vec, mat)` | Producto vector fila × matriz, retorna `float[]` 
 `productoPunto(vecA, vecB)` | Producto punto escalar, retorna `float` 
 `calcularTranspuesta(mat)` | Transpuesta M^T, retorna `float[][]` 
 `calcularInversa(mat)` | Inversa por Gauss-Jordan, retorna `float[][]` o `null` 

 `imprimirMatriz(mat)`  Imprime una matriz con formato tabular en consola 
 `imprimirArreglo(vec)`  Imprime un arreglo con formato vectorial en consola 



 *Producto arreglo × matriz:* se usa la convención *vector fila × matriz*:
  `r[j] = Σ vec[i] * mat[i][j]`, resultado de tamaño N.
 *Método para la inversa:* Gauss-Jordan con pivoteo parcial.
  Si el pivote es menor que `0.0001`, la matriz se declara no invertible y la
  función retorna `null`.
 *Nomenclatura:* camelCase para funciones y variables, según buenas prácticas Java.
