(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status sat)

(declare-fun |c::main::$tmp::return_value_nondet_double$1@1!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |nondet$symex::nondet0| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::x@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= |nondet$symex::nondet0|
   |c::main::$tmp::return_value_nondet_double$1@1!0&0#1|))
(assert (= |c::main::$tmp::return_value_nondet_double$1@1!0&0#1|
   |c::main::main::1::x@1!0&0#1|))
(assert (let ((a!1 (not (=> true
                    (=> |execution_statet::guard_exec@0!0|
                        (fp.eq |c::main::main::1::x@1!0&0#1|
                               |c::main::main::1::x@1!0&0#1|))))))
  a!1))

(check-sat)
(exit)
