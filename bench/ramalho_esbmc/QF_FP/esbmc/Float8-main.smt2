(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::q@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::r@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= |c::main::main::1::q@1!0&0#0| |c::main::main::1::d@1!0&0#1|))
(assert (= (fp.add roundNearestTiesToEven
           |c::main::main::1::d@1!0&0#1|
           (fp #b0 #b00000000000 #x0000000000000))
   |c::main::main::1::r@1!0&0#1|))
(assert (let ((a!1 (and true
                (not (or (fp.isInfinite |c::main::main::1::q@1!0&0#0|)
                         (fp.isNaN |c::main::main::1::q@1!0&0#0|)))))
      (a!2 (=> (not (or (fp.isInfinite |c::main::main::1::q@1!0&0#0|)
                        (fp.isNaN |c::main::main::1::q@1!0&0#0|)))
               (fp.eq |c::main::main::1::r@1!0&0#1|
                      |c::main::main::1::d@1!0&0#1|))))
  (not (=> a!1 (=> |execution_statet::guard_exec@0!0| a!2)))))

(check-sat)
(exit)
