(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::$tmp::return_value_nondet_float$1@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |nondet$symex::nondet0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value_nondet_float$2@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |nondet$symex::nondet1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::2::g@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::3::div@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$3@1!0&0#1| () Bool)
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= |nondet$symex::nondet0| |c::main::$tmp::return_value_nondet_float$1@1!0&0#1|))
(assert (= |c::main::$tmp::return_value_nondet_float$1@1!0&0#1|
   |c::main::main::1::f@1!0&0#1|))
(assert (= |nondet$symex::nondet1| |c::main::$tmp::return_value_nondet_float$2@1!0&0#1|))
(assert (= |c::main::$tmp::return_value_nondet_float$2@1!0&0#1|
   |c::main::main::2::g@1!0&0#1|))
(assert (= (fp.div roundNearestTiesToEven
           |c::main::main::1::f@1!0&0#1|
           |c::main::main::2::g@1!0&0#1|)
   |c::main::main::3::div@1!0&0#1|))
(assert (= (not (fp.eq ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 |c::main::main::3::div@1!0&0#1|)
               (fp #b0 #b00000000000 #x0000000000000)))
   |c::main::$tmp::tmp$3@1!0&0#1|))
(assert (let ((a!1 (and (fp.lt |c::main::main::1::f@1!0&0#1| (_ +oo 8 24))
                (fp.gt |c::main::main::1::f@1!0&0#1|
                       (fp #b0 #x7f #b00000000000000000000000)))))
(let ((a!2 (=> (and a!1
                    (fp.lt |c::main::main::2::g@1!0&0#1|
                           (fp #b0 #x7f #b00000000000000000000000)))
               (fp.geq |c::main::main::2::g@1!0&0#1|
                       (fp #b0 #x01 #b00000000000000000000000))))
      (a!3 (and (and a!1
                     (fp.lt |c::main::main::2::g@1!0&0#1|
                            (fp #b0 #x7f #b00000000000000000000000)))
                (fp.geq |c::main::main::2::g@1!0&0#1|
                        (fp #b0 #x01 #b00000000000000000000000)))))
(let ((a!4 (and true
                (fp.lt |c::main::main::1::f@1!0&0#1| (_ +oo 8 24))
                (=> (fp.lt |c::main::main::1::f@1!0&0#1| (_ +oo 8 24))
                    (fp.gt |c::main::main::1::f@1!0&0#1|
                           (fp #b0 #x7f #b00000000000000000000000)))
                (=> a!1
                    (fp.lt |c::main::main::2::g@1!0&0#1|
                           (fp #b0 #x7f #b00000000000000000000000)))
                a!2
                (=> a!3
                    (fp.gt |c::main::main::2::g@1!0&0#1|
                           (fp #b0 #x00 #b00000000000000000000000)))))
      (a!5 (=> (and a!3
                    (fp.gt |c::main::main::2::g@1!0&0#1|
                           (fp #b0 #x00 #b00000000000000000000000))
                    (not |c::main::$tmp::tmp$3@1!0&0#1|))
               false)))
  (not (=> a!4 (=> |execution_statet::guard_exec@0!0| a!5)))))))

(check-sat)
(exit)
