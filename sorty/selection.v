module sorty

pub fn selection(nums mut []int) {
    n := nums.len
    for i := 0; i < n - 1; i++ {
        mut min_idx := i
        for j := i + 1; j < n; j++ {
            if nums[j] < nums[min_idx] {
                min_idx = j
            }
        }
        temp := nums[min_idx]
        nums[min_idx] = nums[i]
        nums[i] = temp
    } 
}