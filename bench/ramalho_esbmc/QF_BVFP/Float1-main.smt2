(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::x@1!0&0#2| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::y@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::main::1::x@1!0&0#4| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::y@1!0&0#2| () (_ BitVec 32))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= (fp.sub roundNearestTiesToEven
           (fp #b0 #b10000000000 #x0000000000000)
           (fp #b0 #b01111111110 #x3333333333333))
   |c::main::main::1::x@1!0&0#2|))
(assert (= ((_ fp.to_sbv 32) roundTowardZero |c::main::main::1::x@1!0&0#2|)
   |c::main::main::1::y@1!0&0#1|))
(assert (= (fp.sub roundNearestTiesToEven
           (fp #b0 #b10000000000 #x0000000000000)
           (fp #b0 #b01111111101 #x999999999999a))
   |c::main::main::1::x@1!0&0#4|))
(assert (= ((_ fp.to_sbv 32) roundTowardZero |c::main::main::1::x@1!0&0#4|)
   |c::main::main::1::y@1!0&0#2|))
(assert (let ((a!1 (not (=> true
                    (=> |execution_statet::__guard_exec@0!0|
                        (= |c::main::main::1::y@1!0&0#1| #x00000001)))))
      (a!2 (not (=> true
                    (=> |execution_statet::__guard_exec@0!0|
                        (= |c::main::main::1::y@1!0&0#2| #x00000001))))))
  (or a!1 a!2)))

(check-sat)
(exit)
