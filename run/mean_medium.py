import os
import sys

def analyze_john_output(filename, total_passwords=100):
    if not os.path.exists(filename):
        return f"Error: File '{filename}' does not exist or cannot be found."

    with open(filename, 'r') as file:
        lines = file.readlines()

    cracked_passwords = 0
    times = []
    current_time = 0

    for line in lines:
        time_info = line.split()[0].split(":")
        total_seconds = int(time_info[1])*3600 + int(time_info[2])*60 + int(time_info[3])

        if "+ Cracked" in line:
            cracked_passwords += 1
            times.append(total_seconds - current_time)
            current_time = total_seconds

    cracked_percentage = (cracked_passwords / total_passwords) * 100

    if not times:
        return f"Percentage of cracked passwords: {cracked_percentage}%\nNo times found in the log."

    average_time = sum(times) / len(times)
    median_time = sorted(times)[len(times) // 2] if len(times) % 2 == 1 else \
        (sorted(times)[len(times) // 2 - 1] + sorted(times)[len(times) // 2]) / 2

    return f"Passwords cracked: {cracked_passwords} / {total_passwords}\n" \
           f"Percentage of cracked passwords: {cracked_percentage}%\n" \
           f"Average time taken (seconds): {average_time}\n" \
           f"Median time taken (seconds): {median_time}"


if __name__ == "__main__":
    result = analyze_john_output(sys.argv[1])
    print(result)
