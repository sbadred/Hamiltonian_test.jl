#"""generation of hamiltonian matrix """


@testset "Generate Hamiltonian FILE" begin
    Molecule="h2"
    data = "../data/FCIDUMP." * Molecule
    Vnn, sites, N, h, v = read_electron_integral_tensors(data)
    H = molecular_hamiltonian_matrix(h, v)
    display(H)
    open("Hamiltonian_matrix.txt", "w") do io
        writedlm(io, H)
    end
end