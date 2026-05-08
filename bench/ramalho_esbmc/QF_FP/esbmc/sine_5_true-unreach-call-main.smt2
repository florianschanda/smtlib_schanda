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
                   |c::main::main::1::x@1!0&0#1|
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven
                                           |c::main::main::1::x@1!0&0#1|
                                           |c::main::main::1::x@1!0&0#1|)
                                   |c::main::main::1::x@1!0&0#1|)
                           (fp #b0 #x81 #b10000000000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven
                                           |c::main::main::1::x@1!0&0#1|
                                           |c::main::main::1::x@1!0&0#1|)
                                   |c::main::main::1::x@1!0&0#1|)
                           |c::main::main::1::x@1!0&0#1|)
                   |c::main::main::1::x@1!0&0#1|)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   (fp #b0 #x85 #b11100000000000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven
                                           a!2
                                           |c::main::main::1::x@1!0&0#1|)
                                   |c::main::main::1::x@1!0&0#1|)
                           (fp #b0 #x8b #b00111011000000000000000)))))
  (= a!3 |c::main::main::1::result@1!0&0#1|))))
(assert (let ((a!1 (and (fp.leq |c::main::main::1::result@1!0&0#1|
                        (fp #b0 #x7f #b00011001100110011001101))
                (fp.geq |c::main::main::1::result@1!0&0#1|
                        (fp.neg (fp #b0 #x7f #b00011001100110011001101))))))
  (= (not (not (not a!1))) |goto_symex::guard@0!0&0#1|)))
(assert (let ((a!1 (and (fp.gt |c::main::main::1::IN@1!0&0#0|
                       (fp.neg (fp #b0 #x7f #b10010010000111111011011)))
                (fp.lt |c::main::main::1::IN@1!0&0#0|
                       (fp #b0 #x7f #b10010010000111111011011)))))
(let ((a!2 (=> (and a!1 (not (not |goto_symex::guard@0!0&0#1|))) false)))
  (not (=> (and true a!1) (=> |execution_statet::guard_exec@0!0| a!2))))))

(check-sat)
(exit)
