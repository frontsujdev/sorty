module sorty

pub fn insertion_rec(nums mut []int, n int) {
    if n <= 1 {
        return
    }
    insertion_rec(mut nums, n - 1)

    last := nums[n - 1]
    mut j := n - 2

    for (j >= 0 && nums[j] > last) {
        nums[j + 1] = nums[j]
        j--
    }
    nums[j + 1] = last
}