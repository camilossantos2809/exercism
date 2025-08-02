pub fn find<GenericArray: AsRef<[Key]>, Key: Ord>(array: GenericArray, key: Key) -> Option<usize> {
    let array = array.as_ref();
    if array.is_empty() {
        return None;
    }
    let mut left = 0;
    let mut right = array.len() - 1;
    while left <= right {
        let mid = (left + right) / 2;
        if array[mid] == key {
            return Some(mid);
        }
        if array[mid] < key {
            left = mid + 1;
        } else {
            if mid == 0 {
                return None;
            }
            right = mid - 1;
        }
    }
    None
}
