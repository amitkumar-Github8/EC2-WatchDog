#!/usr/bin/env python3
"""
Simple CPU Spike Simulator for Cloud Guardian
This script generates CPU load to test CloudWatch alarms.
"""

import time
import threading
import multiprocessing

def cpu_worker(duration, cpu_percent):
    """Function to generate CPU load in a single thread."""
    end_time = time.time() + duration
    
    # Calculate work/rest ratio based on desired CPU percentage
    work_time = 0.01 * (cpu_percent / 100.0)
    rest_time = 0.01 - work_time
    
    while time.time() < end_time:
        # Do some CPU-intensive work
        start_work = time.time()
        while time.time() - start_work < work_time:
            # Simple calculation to use CPU
            result = sum(i * i for i in range(1000))
        
        # Rest to control CPU usage
        if rest_time > 0:
            time.sleep(rest_time)

def simulate_cpu_spike(duration=30, cpu_percent=80):
    """
    Simulate CPU spike for testing CloudWatch alarms.
    
    Args:
        duration: How long to run the test (seconds)
        cpu_percent: Target CPU utilization percentage
    """
    print(" Cloud Guardian CPU Spike Test")
    print("-" * 40)
    print(f"Target CPU: {cpu_percent}%")
    print(f"Duration: {duration} seconds")
    print(f"Start time: {time.strftime('%H:%M:%S')}")
    print("-" * 40)
    
    # Use all CPU cores for realistic load
    cpu_count = multiprocessing.cpu_count()
    print(f"Using {cpu_count} CPU cores")
    
    # Create threads for each CPU core
    threads = []
    for i in range(cpu_count):
        thread = threading.Thread(
            target=cpu_worker, 
            args=(duration, cpu_percent)
        )
        threads.append(thread)
        thread.start()
    
    # Show progress
    start_time = time.time()
    while time.time() - start_time < duration:
        elapsed = time.time() - start_time
        remaining = duration - elapsed
        progress = (elapsed / duration) * 100
        
        print(f"\rProgress: {progress:.1f}% | Remaining: {remaining:.1f}s", end="", flush=True)
        time.sleep(1)
    
    # Wait for all threads to finish
    for thread in threads:
        thread.join()
    
    print(f"\nCPU test completed!")
    print(f"End time: {time.strftime('%H:%M:%S')}")
    print("\nCheck CloudWatch for metrics:")
    print("1. Go to AWS CloudWatch Console")
    print("2. Look for EC2 metrics")
    print("3. Check if CPU alarm was triggered")
    print("4. Verify email notification was sent")

if __name__ == "__main__":
    # Simple usage - modify these values as needed
    simulate_cpu_spike(duration=30, cpu_percent=80)