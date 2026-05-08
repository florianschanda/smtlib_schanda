(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$3@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$5@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$7@1!0&0#1| () Bool)
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= (fp.eq ((_ to_fp 11 53)
            roundNearestTiesToEven
            (fp #b0 #x7f #b01000000000000000000000))
          (fp #b0 #b01111111111 #x4000000000000))
   |c::main::$tmp::tmp$1@1!0&0#1|))
(assert (= (fp.eq (fp #b0 #b01111111111 #x4000000000000)
          (fp #b0 #b01111111111 #x4000000000000))
   |c::main::$tmp::tmp$3@1!0&0#1|))
(assert (= (fp.eq (fp #b0 #x84 #b10010000000000000000000)
          (fp #b0 #x84 #b10010000000000000000000))
   |c::main::$tmp::tmp$5@1!0&0#1|))
(assert (= (fp.eq (fp #b0 #x83 #b01000000000000000000000)
          (fp #b0 #x83 #b01000000000000000000000))
   |c::main::$tmp::tmp$7@1!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$1@1!0&0#1|) false))))
      (a!2 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$3@1!0&0#1|) false))))
      (a!3 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$5@1!0&0#1|) false))))
      (a!4 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$7@1!0&0#1|) false)))))
  (or (not a!1) (not a!2) (not a!3) (not a!4))))

(check-sat)
(exit)
