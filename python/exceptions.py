
DIGIT_MAP = {
        "zero" : "O",
        "one" : "1",
        "two" : "2",
        "nine" : "9"
        }

def convert(s):
    try:
        number = ""
        for token in s:
            number += DIGIT_MAP[token]


        number.strip()
        print(number)
        print(type(number))
        # print(11210 == int(number))
        # number = "2431234"
        x = int(number)
    except KeyError:
        x = -1
    except TypeError:
        print("Your shit should be of type array")
        x = -1
    return x


str_to_conv = "two nine one one two one zero two"

# conv = convert(str_to_conv.split())
# print(conv)
