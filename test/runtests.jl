import GCUtils: setup_gc

after, cleanup, metrics = setup_gc(0.01)



for i in 1:10
    ones = Main.ones(10000, 2)
    sleep(0.1)
    after()
end

@info "done!" Text(sprint(dump, metrics))
cleanup()
