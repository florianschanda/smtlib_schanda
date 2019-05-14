(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::f@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |goto_symex::guard@0!0&0#1| () Bool)
(declare-fun |c::main::main::1::x@1!0&0#0| () (_ BitVec 8))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#0|)
   |c::main::main::1::d@1!0&0#1|))
(assert (let ((a!1 (not (not (fp.eq |c::main::main::1::f@1!0&0#0|
                            ((_ to_fp_unsigned 8 24)
                              roundNearestTiesToEven
                              |c::main::main::1::x@1!0&0#0|))))))
  (= a!1 |goto_symex::guard@0!0&0#1|)))
(assert (let ((a!1 (=> |execution_statet::__guard_exec@0!0|
               (=> (not (not |goto_symex::guard@0!0&0#1|))
                   (fp.eq |c::main::main::1::d@1!0&0#1|
                          ((_ to_fp_unsigned 11 53)
                            roundNearestTiesToEven
                            |c::main::main::1::x@1!0&0#0|))))))
  (not (=> true a!1))))

(check-sat)
(exit)
