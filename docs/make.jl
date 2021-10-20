using DemoPackageSSD
using Documenter

DocMeta.setdocmeta!(DemoPackageSSD, :DocTestSetup, :(using DemoPackageSSD); recursive=true)

makedocs(;
    modules=[DemoPackageSSD],
    authors="stephdoering <stephanie@thedoerings.net> and contributors",
    repo="https://github.com/stephdoering/DemoPackageSSD.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageSSD.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://stephdoering.github.io/DemoPackageSSD.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/stephdoering/DemoPackageSSD.jl",
    devbranch="master",
)
