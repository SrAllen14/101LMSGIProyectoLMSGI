(:16. Mostrar el precio mínimo y el máximo de los libros:)
declare option output:indent "yes";

concat("Maximo: ", max(/bookstore/book/price),"&#10;Minimo: ", min(/bookstore/book/price))
