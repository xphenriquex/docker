import yaml

if __name__ == '__main__':

    steam = open("teste.yaml", "r")
    dictionary = yaml.safe_load(steam)

    for key, value in dictionary.items():
        print(key +" : " + str(value))