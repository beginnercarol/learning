import sys

def default():
    print("hello")
    
def cat():
    print("Kitty says hello")
    
def main():
    if len(sys.argv) < 2:
        default()
    elif sys.argv[1] == 'cat':
        cat()
    else:
        default()
    
if __name__ == '__main__':
    main()
