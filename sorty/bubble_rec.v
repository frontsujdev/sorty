module sorty

pub fn bubble_rec(nums mut []int, n int) {
    if n == 1 {
        return 
    }
    for i := 0; i < n - 1; i++ {
        if nums[i] > nums[i + 1] {
            temp := nums[i]
            nums[i] = nums[i + 1]
            nums[i + 1] = temp
        }
    }
    bubble_rec(mut nums, n - 1)
}