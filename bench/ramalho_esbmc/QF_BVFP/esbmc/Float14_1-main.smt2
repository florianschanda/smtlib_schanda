(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::temp@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::math::isinff::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value_isinff$1@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isinff::f@2!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value_isinff$2@1!0&0#1| () (_ BitVec 32))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= (fp.add roundNearestTiesToEven (_ +oo 8 24) (_ +oo 8 24))
   |c::main::main::1::temp@1!0&0#1|))
(assert (= |c::main::main::1::temp@1!0&0#1| |c::math::isinff::f@1!0&0#1|))
(assert (= (ite (fp.isInfinite |c::math::isinff::f@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isinff$1@1!0&0#1|))
(assert (= |c::main::main::1::temp@1!0&0#1| |c::math::isinff::f@2!0&0#1|))
(assert (= (ite (fp.isInfinite |c::math::isinff::f@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isinff$2@1!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (not (= |c::main::$tmp::return_value_isinff$1@1!0&0#1|
                           #x00000000)))))
      (a!2 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (not (= |c::main::$tmp::return_value_isinff$2@1!0&0#1|
                           #x00000000))))))
  (or (not a!1) (not a!2))))

(check-sat)
(exit)
