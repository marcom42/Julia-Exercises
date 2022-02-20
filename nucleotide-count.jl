"""

    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""

function count_nucleotides(strand::AbstractString)
    strand = uppercase(strand)
    sequencedict = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for c in strand
        try
            sequencedict[c] += 1
        catch
            throw(DomainError(c, "error"))
        end
    end
    return sequencedict
end
