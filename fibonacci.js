class Fibonacci {
    constructor() {
        // Where does your sequence start by default? 
    }

    next() {
        // Return the next Fibonacci number in the current sequence
        throw new Error('Returning next number is not yet supported!');
    }

    init(seed) {
        // Initialize sequence with number to start from
        throw new Error('Initializing sequence is not yet supported!');
    }

    skip(forward) {
        // Return the Fibonacci number further on in the sequence
        throw new Error('Skipping forward is not yet supported!');
    }

    current(current) {
        // Return the value of the current Fibonacci number
        throw new Error('Current number value is not currently supported');
    }
}

module.exports = Fibonacci;