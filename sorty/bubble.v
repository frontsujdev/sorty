module sorty

pub fn bubble(nums mut []int) {
    size := nums.len

    for i := 0; i < size - 1; i++ {
        for j := 0; j < size - i - 1; j++ {
            if nums[j] > nums[j + 1] {
                temp := nums[j]
                nums[j] = nums[j + 1]
                nums[j + 1] = temp
            }
        }
    }
}

