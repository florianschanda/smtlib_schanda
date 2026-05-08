(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::b@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::a@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (let ((a!1 (=> |execution_statet::guard_exec@0!0|
               (= (fp.gt |c::main::main::1::a@1!0&0#0|
                         |c::main::main::1::b@1!0&0#0|)
                  (fp.gt (fp.sub roundNearestTiesToEven
                                 |c::main::main::1::a@1!0&0#0|
                                 |c::main::main::1::b@1!0&0#0|)
                         (fp #b0 #x00 #b00000000000000000000000))))))
  (not (=> true a!1))))

(check-sat)
(exit)
