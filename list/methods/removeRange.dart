/// Remove a range of elements from a list.
///
/// Removes the elements with indices from [start] inclusive to [end] exclusive.
/// The elements removed are those in the range `nums[start]`, `nums[start + 1]`,
/// up to `nums[end - 1]`.
///
/// The `nums` list is modified in place, and the elements that were removed
/// are returned as a new list.
///
/// If [end] is omitted, it defaults to `nums.length`, and all the elements
/// starting from index [start] are removed.
///
/// Throws an [ArgumentError] if [start] is negative, [end] is negative,
/// or [end] is less than [start].
///
/// Example:

void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int m = 3;

  nums.removeRange(m, 5);  // Output: [1, 2, 3, 8, 9]

  print(nums);
}
