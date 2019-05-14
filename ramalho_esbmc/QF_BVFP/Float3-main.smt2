(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::x@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value_nondet_int$1@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |nondet$symex::nondet0| () (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#1| () Bool)
(declare-fun |c::main::main::1::x@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::main::1::x@1!0&0#3| () (_ BitVec 32))
(declare-fun |c::d&0#3| () (_ FloatingPoint 11 53))
(declare-fun |c::d&0#4| () (_ FloatingPoint 11 53))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= #x00000002 |c::main::main::1::x@1!0&0#1|))
(assert (= |nondet$symex::nondet0| |c::main::$tmp::return_value_nondet_int$1@1!0&0#1|))
(assert (let ((a!1 (not (not (not (= |c::main::$tmp::return_value_nondet_int$1@1!0&0#1|
                             #x00000000))))))
  (= a!1 |goto_symex::guard@0!0&0#1|)))
(assert (= #x00000004 |c::main::main::1::x@1!0&0#2|))
(assert (= (ite (not |goto_symex::guard@0!0&0#1|)
        |c::main::main::1::x@1!0&0#1|
        |c::main::main::1::x@1!0&0#2|)
   |c::main::main::1::x@1!0&0#3|))
(assert (= (fp.add roundNearestTiesToEven
           (fp #b0 #b01111111111 #x0000000000000)
           (ite (= |c::main::main::1::x@1!0&0#3| #x00000002)
                (fp #b0 #b01111111111 #x0000000000000)
                (fp #b0 #b00000000000 #x0000000000000)))
   |c::d&0#3|))
(assert (= (fp.add roundNearestTiesToEven
           |c::d&0#3|
           (ite (bvsgt |c::main::main::1::x@1!0&0#3| #x00000003)
                (fp #b0 #b01111111111 #x0000000000000)
                (fp #b0 #b00000000000 #x0000000000000)))
   |c::d&0#4|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (fp.eq |c::d&0#4| (fp #b0 #b10000000000 #x0000000000000))))))
  (not a!1)))

(check-sat)
(exit)
