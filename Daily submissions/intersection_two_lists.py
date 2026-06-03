def intersection(a, b):
  intersection_nums = []
  for value in a:
    if value in b:
      intersection_nums.append(value)
  return intersection_nums