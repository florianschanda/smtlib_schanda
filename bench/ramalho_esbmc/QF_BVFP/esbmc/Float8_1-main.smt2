(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::math::isfinite::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::q@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isfinite$1@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::main::1::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::r@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= |c::main::main::1::q@1!0&0#0| |c::math::isfinite::d@1!0&0#1|))
(assert (let ((a!1 (ite (not (or (fp.isInfinite |c::math::isfinite::d@1!0&0#1|)
                         (fp.isNaN |c::math::isfinite::d@1!0&0#1|)))
                #x00000001
                #x00000000)))
  (= a!1 |c::main::$tmp::return_value_isfinite$1@1!0&0#1|)))
(assert (= |c::main::main::1::q@1!0&0#0| |c::main::main::1::d@1!0&0#1|))
(assert (= (fp.add roundNearestTiesToEven
           |c::main::main::1::d@1!0&0#1|
           (fp #b0 #b00000000000 #x0000000000000))
   |c::main::main::1::r@1!0&0#1|))
(assert (let ((a!1 (=> |execution_statet::__guard_exec@0!0|
               (=> (not (= |c::main::$tmp::return_value_isfinite$1@1!0&0#1|
                           #x00000000))
                   (fp.eq |c::main::main::1::r@1!0&0#1|
                          |c::main::main::1::d@1!0&0#1|)))))
(let ((a!2 (=> (and true
                    (not (= |c::main::$tmp::return_value_isfinite$1@1!0&0#1|
                            #x00000000)))
               a!1)))
  (not a!2))))

(check-sat)
(exit)
