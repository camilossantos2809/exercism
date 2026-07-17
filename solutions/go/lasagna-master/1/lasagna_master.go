package lasagnamaster

func PreparationTime(layers []string, averagePreparation int) int {
	if averagePreparation == 0 {
		return len(layers) * 2
	}

	return len(layers) * averagePreparation
}

func Quantities(layers []string) (noodles int, sauce float64) {
	countNoodles := 0
	countSauce := 0.0
	for _, layer := range layers {
		if layer == "noodles" {
			countNoodles++
		}
		if layer == "sauce" {
			countSauce++
		}
	}

	return countNoodles * 50, countSauce * 0.2
}

func AddSecretIngredient(friendsList, myList []string) {
	secretIngredient := friendsList[len(friendsList)-1]
	myList[len(myList)-1] = secretIngredient
}

func ScaleRecipe(quantities []float64, portions int) []float64 {
	scaledQuantities := make([]float64, len(quantities))
	copy(scaledQuantities, quantities)
	for i := 0; i < len(scaledQuantities); i++ {
		scaledQuantities[i] = (scaledQuantities[i] / 2) * float64(portions)
	}
	return scaledQuantities
}
