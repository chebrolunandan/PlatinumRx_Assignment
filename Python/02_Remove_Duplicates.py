def remove_duplicates(s):
    result = ""
    for ch in s:
        if ch not in result:
            result += ch
    return result


text = input("Enter a string: ")
print(remove_duplicates(text))