(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::x@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::IN@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::result@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |goto_symex::guard@0!0&0#1| () Bool)
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= |c::main::main::1::IN@1!0&0#0| |c::main::main::1::x@1!0&0#1|))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp #b0 #x7f #b00000000000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp #b0 #x7e #b00000000000000000000000)
                                   |c::main::main::1::x@1!0&0#1|))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp #b0 #x7c #b00000000000000000000000)
                                   |c::main::main::1::x@1!0&0#1|)
                           |c::main::main::1::x@1!0&0#1|)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp #b0 #x7b #b00000000000000000000000)
                                   |c::main::main::1::x@1!0&0#1|)
                           |c::main::main::1::x@1!0&0#1|)
                   |c::main::main::1::x@1!0&0#1|))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp #b0 #x7a #b01000000000000000000000)
                                   |c::main::main::1::x@1!0&0#1|)
                           |c::main::main::1::x@1!0&0#1|)
                   |c::main::main::1::x@1!0&0#1|)))
  (= (fp.sub roundNearestTiesToEven
             (fp.add roundNearestTiesToEven a!1 a!2)
             (fp.mul roundNearestTiesToEven a!3 |c::main::main::1::x@1!0&0#1|))
     |c::main::main::1::result@1!0&0#1|)))
(assert (let ((a!1 (not (and (fp.geq |c::main::main::1::result@1!0&0#1|
                             (fp #b0 #x00 #b00000000000000000000000))
                     (fp.lt |c::main::main::1::result@1!0&0#1|
                            (fp #b0 #x7f #b01100110011001100110011))))))
  (= (not (not a!1)) |goto_symex::guard@0!0&0#1|)))
(assert (let ((a!1 (and (fp.geq |c::main::main::1::IN@1!0&0#0|
                        (fp #b0 #x00 #b00000000000000000000000))
                (fp.lt |c::main::main::1::IN@1!0&0#0|
                       (fp #b0 #x7f #b00000000000000000000000)))))
(let ((a!2 (=> (and a!1 (not (not |goto_symex::guard@0!0&0#1|))) false)))
  (not (=> (and true a!1) (=> |execution_statet::guard_exec@0!0| a!2))))))

(check-sat)
(exit)
