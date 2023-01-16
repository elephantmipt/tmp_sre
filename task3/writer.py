import random
import time

if __name__ == "__main__":
    print("starting writer...")
    while True:
        time.sleep(2)
        with open("/mnt/metric.prom", "w") as outp:
            rand = str(random.randint(0, 10))
            print("writing " + rand)
            outp.write("my_text_metric " + rand + "\n")
    