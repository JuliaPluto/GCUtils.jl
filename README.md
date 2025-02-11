# GCUtils.jl

Utility to automatically schedule GC work to long running julia processes.

## How to use:

```julia
import GCUtils: setup_gc

# ...

after, cleanup, metrics = setup_gc()

HTTP.serve!() do ()

    # Add this after work is done, i.e. in a server. `after` is lightweight (atomically sets two values)
    after()
end

@info "Metrics: " metrics
cleanup()

```

## Inspiration

[A retrospect on Julia web services: HTTP, performance and memory | Guliński, Georgakopoulos](https://www.youtube.com/watch?v=veZ7xB62olI) and JuliaHub's [HTTPQuickstart](https://github.com/JuliaComputing/HTTPQuickstart.jl)
