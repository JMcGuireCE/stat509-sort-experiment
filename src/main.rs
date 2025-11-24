// Copyright (c) Josh McGuire, 2025

use rand::prelude::*;
use sort_algorithms::quick_sort;
use std::fs::OpenOptions;
use std::time::Instant;
use std::time::Duration;
use sort_algorithms::merge_sort;
use std::io::Write;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut rng = rand::rng();
    let mut challenge: Vec<i32> = (1..5000).collect();
    let mut solution = challenge.clone();
    let trials: usize = 10000;

    let mut merge_times: Vec<Duration> = vec![Duration::from_secs(256); trials];
    let mut quick_times: Vec<Duration> = merge_times.clone();

    let mut start: Instant;
    let mut finish: Duration;

    for i in 0..trials {
        // Prepare a new element order for sorting
        challenge.shuffle(&mut rng);
        solution = challenge.clone();

        // Merge sort trial
        start = Instant::now();
        merge_sort(&mut solution, |a, b| a < b);
        finish = start.elapsed();

        merge_times[i] = finish;

        solution = challenge.clone(); // Reset the array

        // Quick sort trial
        start = Instant::now();
        quick_sort(&mut solution, |a, b| a < b);
        finish = start.elapsed();

        quick_times[i] = finish;
    }

    let mut results = OpenOptions::new()
        .read(true)
        .write(true)
        .create(true)
        .truncate(true)
        .open("results.csv")?;
 
    writeln!(results, "merge sort, quick sort").expect("Failed to write to results file.");

    for i in 0..trials {
        writeln!(results,
                 "{}, {}",
                 merge_times[i].as_nanos(),
                 quick_times[i].as_nanos())?;   
    }

    Ok(())
}
