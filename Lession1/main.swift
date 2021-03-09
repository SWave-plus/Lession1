//
//  main.swift
//  Lession1
//
//  Created by Максим Шелкопляс on 02.03.2021.
//

//----------- Задание 1 -------------

print ("--- Задание 1 --- ")

//Формула квадратного уравнения ax^2+bx+c=0
// a=1 b=5 c=4   два корня
// a=9 b=6 c=1   один корень
// a=3 b=7 c=10  не имеет корней

//Вводим значения квадратного уравнения
let a: Double = 1
let b: Double = 5
let c: Double = 4

//Находим дискриминант
let d = (b * b)-(4 * a * c)  // можно использовать pow(b, 2)

// Вычисляем корни уравнения
if d < 0 { //Если дискриминант меньше нуля уравнение не имеет корней
    print ("Уравнение не имеет корней")
    } else if d == 0 { //Если дискриминант равен нулю вычисляем один корень
        let xOne = (-b)/(2 * a)
        print ("Уравнение имеет один корень")
        print ("x1 = \(xOne)")
    } else { //Если дискриминант больше нуля вычисляем два корня
        let xOne = (-b + d.squareRoot())/(2 * a)
        let xTwo = (-b - d.squareRoot())/(2 * a)
        print ("Уравнение имеет два корня: ")
        print ("x1 = \(xOne)")
        print ("x2 = \(xTwo)")
}

//----------- Задание 2 -------------

print ("--- Задание 2 ---")

// Вводим длину катетов
let leg1: Double = 4
let leg2: Double = 8

// Находим площадь треугольника
let triangleArea: Double = leg1 * leg2 * 0.5
print("Площадь треугольника равна: \(triangleArea)")
//print(triangleArea)

// Находим гипотенузу треугольника
let hypotenuse = ((a * a)+(b * b)).squareRoot()
print("Гипотенуза треугольника равна: \(hypotenuse)")
//print(hypotenuse)

// Находим периметр треугольника
let trianglePerimeter  = leg1 + leg2 + hypotenuse
print("Периметр треугольника равен: \(trianglePerimeter)")
//print(trianglePerimeter)




//----------- Задание 3 -------------

print ("--- Задание 3 ---")

//Вводим  первоначальные данные
var yearTotal: Double = 5 // Срок депозита (количество лет)
var money: Double  = 1000 //Сумма депозита
let percent: Double = 14 // Процентная ставка

// Рассчитываем начисления
while yearTotal > 0 {
    money *= (1 + (percent / 100))
    yearTotal -= 1
}

print("Ваша сумма вклада составит: \(money)")
