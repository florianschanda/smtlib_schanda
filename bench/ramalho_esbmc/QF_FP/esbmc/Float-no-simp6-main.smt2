(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::multiply::1::res@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::multiply::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::main::divide::1::res@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::divide::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::cast::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= (fp.mul roundNearestTiesToEven
           (fp #b0 #x7e #b00000000000000000000000)
           (fp #b0 #x01 #b11111111111111111111111))
   |c::main::multiply::1::res@1!0&0#1|))
(assert (= (fp.eq |c::main::multiply::1::res@1!0&0#1|
          (fp #b0 #x01 #b00000000000000000000000))
   |c::multiply::$tmp::tmp$1@1!0&0#1|))
(assert (= (fp.div roundNearestTiesToEven
           (fp #b0 #x01 #b11111111111111111111111)
           (fp #b0 #x80 #b00000000000000000000000))
   |c::main::divide::1::res@1!0&0#1|))
(assert (= (fp.eq |c::main::divide::1::res@1!0&0#1|
          (fp #b0 #x01 #b00000000000000000000000))
   |c::divide::$tmp::tmp$1@1!0&0#1|))
(assert (= (fp.eq ((_ to_fp 8 24)
            roundNearestTiesToEven
            (fp #b0 #b01110000000 #xfffffe0000000))
          (fp #b0 #x01 #b00000000000000000000000))
   |c::cast::$tmp::tmp$1@1!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::multiply::$tmp::tmp$1@1!0&0#1|) false))))
      (a!2 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::divide::$tmp::tmp$1@1!0&0#1|) false))))
      (a!3 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::cast::$tmp::tmp$1@1!0&0#1|) false)))))
  (or (not a!1) (not a!2) (not a!3))))

(check-sat)
(exit)
