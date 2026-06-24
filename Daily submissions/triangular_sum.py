def triangular_sum(nums):
  while len(nums) > 1:
    next_nums = []
    for i in range(len(nums) - 1 ): 
      next_nums.append((nums[i] + nums[i+1]) % 10)
    nums = next_nums
  return nums[0]
  
  
# well while array has the length of greater than one, then you wanna keep an 
# empty list to add or append numbers to the next one like next_nums 
# and in those next nums i can use the code they gave: (nums[i] + nums[i+1]) % 10 
# And then i can replace nums with new nums and repeat hte process 
# until its not > 1 i mean hte length so then it would be returning