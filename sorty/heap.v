module sorty


fn heapify(nums mut []int, n, i int) {
    mut largest := i
    l := 2 * i + 1
    r := 2 * i + 2

    if l < n && nums[l] > nums[largest] {
        largest = l
    }

    if r < n && nums[r] > nums[largest] {
        largest = r
    }

    if largest != i {
        temp := nums[i]
        nums[i] = nums[largest]
        nums[largest] = temp

        heapify(mut nums, n, largest)
    }
}

pub fn heap(nums mut []int, n int) {
    for i := n / 2 - 1; i >= 0; i-- {
        heapify(mut nums, n, i)
    }

    for i := n - 1; i >= 0; i-- {
        temp := nums[0]
        nums[0] = nums[i]
        nums[i] = temp

        heapify(mut nums, i, 0)
    } 
}
