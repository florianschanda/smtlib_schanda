(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unknown)

(declare-fun |c::main::main::1::fs1@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::fs2@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= (fp.div roundNearestTiesToEven
           (fp #b0 #x80 #b00000000000000000000000)
           (fp #b0 #x81 #b10000000000000000000000))
   |c::main::main::1::fs1@1!0&0#1|))
(assert (= (fp.mul roundNearestTiesToEven
           |c::main::main::1::fs1@1!0&0#1|
           (fp #b0 #x81 #b10000000000000000000000))
   |c::main::main::1::fs2@1!0&0#1|))
(assert (= (= ((_ fp.to_sbv 32) roundTowardZero |c::main::main::1::fs2@1!0&0#1|)
      #x00000002)
   |c::main::$tmp::tmp$1@1!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$1@1!0&0#1|) false)))))
  (or (not a!1))))

(check-sat)
(exit)
