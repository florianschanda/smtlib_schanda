(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::b@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::a@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::a@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::a@1!0&0#2| () (_ FloatingPoint 8 24))
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= |c::main::main::1::a@1!0&0#0| |c::main::main::1::b@1!0&0#1|))
(assert (= (fp.div roundNearestTiesToEven
           |c::main::main::1::a@1!0&0#0|
           (fp #b0 #x80 #b00000000000000000000000))
   |c::main::main::1::a@1!0&0#1|))
(assert (= (fp.mul roundNearestTiesToEven
           |c::main::main::1::a@1!0&0#1|
           (fp #b0 #x80 #b00000000000000000000000))
   |c::main::main::1::a@1!0&0#2|))
(assert (let ((a!1 (or (fp.eq |c::main::main::1::a@1!0&0#0|
                      (fp #b0 #x7f #b00000000000000000000000))
               (fp.eq ((_ to_fp 11 53)
                        roundNearestTiesToEven
                        |c::main::main::1::a@1!0&0#0|)
                      (fp #b0 #b01111111110 #x0000000000000))
               (fp.eq |c::main::main::1::a@1!0&0#0|
                      (fp #b0 #x80 #b00000000000000000000000))
               (fp.eq |c::main::main::1::a@1!0&0#0|
                      (fp #b0 #x80 #b10000000000000000000000))
               (fp.eq ((_ to_fp 11 53)
                        roundNearestTiesToEven
                        |c::main::main::1::a@1!0&0#0|)
                      (fp #b0 #b01111111011 #x999999999999a)))))
(let ((a!2 (=> (and true a!1)
               (=> |execution_statet::guard_exec@0!0|
                   (=> a!1
                       (fp.eq |c::main::main::1::a@1!0&0#2|
                              |c::main::main::1::b@1!0&0#1|))))))
  (not a!2))))

(check-sat)
(exit)
