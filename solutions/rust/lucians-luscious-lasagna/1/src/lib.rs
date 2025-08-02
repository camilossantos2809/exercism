const MINUTES_TO_PREPARE: i32 = 2;
const EXPECTED_MINUTES_IN_OVEN: i32 = 40;

pub fn expected_minutes_in_oven() -> i32 {
    EXPECTED_MINUTES_IN_OVEN
}

pub fn remaining_minutes_in_oven(actual_minutes_in_oven: i32) -> i32 {
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
}

pub fn preparation_time_in_minutes(number_of_layers: i32) -> i32 {
    MINUTES_TO_PREPARE * number_of_layers
}

pub fn elapsed_time_in_minutes(number_of_layers: i32, actual_minutes_in_oven: i32) -> i32 {
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
}
