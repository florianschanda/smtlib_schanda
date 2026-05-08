(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::temp@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= (fp.add roundNearestTiesToEven (_ +oo 8 24) (_ +oo 8 24))
   |c::main::main::1::temp@1!0&0#1|))
(assert (let ((a!1 (not (=> true
                    (=> |execution_statet::guard_exec@0!0|
                        (fp.isInfinite |c::main::main::1::temp@1!0&0#1|))))))
  (or a!1 a!1)))

(check-sat)
(exit)
