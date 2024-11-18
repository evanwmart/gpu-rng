@group(0) @binding(0) var<storage, read_write> output: array<u32>;

@compute @workgroup_size(64)
fn main(@builtin(global_invocation_id) global_id: vec3<u32>) {
    let idx = global_id.x;

    // Simple random number generator using a Linear Congruential Generator (LCG)
    var seed: u32 = idx * 747796405u + 2891336453u;
    output[idx] = seed;
}
