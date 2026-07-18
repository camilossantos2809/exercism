package jedlik

import "fmt"

func (c *Car) Drive() {
	newBattery := c.battery - c.batteryDrain
	if newBattery < 0 {
		c.distance = 0
	} else {
		c.battery = newBattery
		c.distance = c.speed
	}
}

func (c Car) DisplayDistance() string {
	return fmt.Sprintf("Driven %d meters", c.distance)
}

func (c Car) DisplayBattery() string {
	return fmt.Sprintf("Battery at %d%%", c.battery)
}

func (c Car) CanFinish(trackDistance int) bool {
	calcDistance := trackDistance / c.speed
	batteryDistance := c.battery - (calcDistance * c.batteryDrain)
	return batteryDistance >= 0
}
