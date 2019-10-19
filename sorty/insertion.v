module sorty

pub fn insertion(nums mut []int) {
    n := nums.len
    for i := 1; i < n; i++ {
        key := nums[i]
        mut j := i - 1

        for j >= 0 && nums[j] > key {
            nums[j + 1] = nums[j]
            j = j - 1
        }
        nums[j + 1] = key
    } 
}
