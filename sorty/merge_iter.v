module sorty

pub fn merge_iter(nums mut []int, l, r int) {
    if l < r {
        m := l + (r - l) / 2
        merge_iter(mut nums, l, m)
        merge_iter(mut nums, m + 1, r)
        merge(mut nums, l, m, r)
    }
}

fn merge(nums mut []int, l, m, r int) {
    n1 := m - l + 1
    n2 := r - m

    mut L := [0].repeat(n1)
    mut R := [0].repeat(n2)

    for i := 0; i < n1; i++ {
        L[i] = nums[l + i]
    }
    for j := 0; j < n2; j++ {
        R[j] = nums[m + 1 + j]
    }

    mut i := 0
    mut j := 0
    mut k := l

    for i < n1 && j < n2 {
        if L[i] <= R[j] {
            nums[k] = L[i]
            i++
        } else {
            nums[k] = R[j]
            j++
        }
        k++
    }

    for i < n1 {
        nums[k] = L[i]
        i++
        k++
    }
    for j < n2 {
        nums[k] = R[j]
        j++
        k++
    }
}