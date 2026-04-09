def convert_minutes(minutes):
    hours = minutes // 60
    mins = minutes % 60
    return f"{hours} hrs {mins} minutes"

minutes = int(input("Enter minutes: "))
print(convert_minutes(minutes))