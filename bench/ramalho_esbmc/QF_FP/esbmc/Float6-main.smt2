(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::a@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::b@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (let ((a!1 (=> |execution_statet::guard_exec@0!0|
               (not (fp.eq (fp #b0 #b01111111111 #x0000000000000)
                           (fp #b0 #b10000000000 #x0000000000000)))))
      (a!2 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (fp.eq (fp #b0 #b01111111111 #x0000000000000)
                          (fp #b0 #b01111111111 #x0000000000000)))))
      (a!3 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (fp.lt (fp #b0 #b01111111111 #x0000000000000)
                          (fp #b0 #b10000000000 #x0000000000000)))))
      (a!4 (not (fp.lt (fp.neg (fp #b0 #b01111111111 #x0000000000000))
                       (fp.neg (fp #b0 #b10000000000 #x0000000000000)))))
      (a!5 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (fp.gt (fp #b0 #b10000000000 #x0000000000000)
                          (fp #b0 #b01111111111 #x0000000000000)))))
      (a!6 (not (fp.gt (fp.neg (fp #b0 #b10000000000 #x0000000000000))
                       (fp.neg (fp #b0 #b01111111111 #x0000000000000)))))
      (a!7 (=> |execution_statet::guard_exec@0!0|
               (not (fp.lt (fp #b0 #b10000000000 #x0000000000000)
                           (fp #b0 #b10000000000 #x0000000000000)))))
      (a!8 (not (fp.lt (fp.neg (fp #b0 #b10000000000 #x0000000000000))
                       (fp.neg (fp #b0 #b10000000000 #x0000000000000)))))
      (a!9 (=> |execution_statet::guard_exec@0!0|
               (not (fp.gt (fp #b0 #b10000000000 #x0000000000000)
                           (fp #b0 #b10000000000 #x0000000000000)))))
      (a!10 (not (fp.gt (fp.neg (fp #b0 #b10000000000 #x0000000000000))
                        (fp.neg (fp #b0 #b10000000000 #x0000000000000)))))
      (a!11 (=> true
                (=> |execution_statet::guard_exec@0!0|
                    (fp.leq (fp #b0 #b10000000000 #x0000000000000)
                            (fp #b0 #b10000000000 #x0000000000000)))))
      (a!12 (=> |execution_statet::guard_exec@0!0|
                (fp.leq (fp.neg (fp #b0 #b10000000000 #x0000000000000))
                        (fp.neg (fp #b0 #b10000000000 #x0000000000000)))))
      (a!13 (=> true
                (=> |execution_statet::guard_exec@0!0|
                    (fp.geq (fp #b0 #b10000000000 #x0000000000000)
                            (fp #b0 #b10000000000 #x0000000000000)))))
      (a!14 (=> |execution_statet::guard_exec@0!0|
                (fp.geq (fp.neg (fp #b0 #b10000000000 #x0000000000000))
                        (fp.neg (fp #b0 #b10000000000 #x0000000000000)))))
      (a!15 (=> true
                (=> |execution_statet::guard_exec@0!0|
                    (fp.leq (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b10000000000 #x0000000000000)))))
      (a!16 (not (fp.leq (fp.neg (fp #b0 #b01111111111 #x0000000000000))
                         (fp.neg (fp #b0 #b10000000000 #x0000000000000)))))
      (a!17 (=> true
                (=> |execution_statet::guard_exec@0!0|
                    (fp.geq (fp #b0 #b10000000000 #x0000000000000)
                            (fp #b0 #b01111111111 #x0000000000000)))))
      (a!18 (not (fp.geq (fp.neg (fp #b0 #b10000000000 #x0000000000000))
                         (fp.neg (fp #b0 #b01111111111 #x0000000000000)))))
      (a!19 (and (fp.eq |c::main::main::1::a@1!0&0#0|
                        (fp #b0 #x7f #b00000000000000000000000))
                 (fp.eq |c::main::main::1::b@1!0&0#0|
                        (fp #b0 #x80 #b00000000000000000000000)))))
(let ((a!20 (=> |execution_statet::guard_exec@0!0|
                (=> a!19
                    (not (fp.eq |c::main::main::1::a@1!0&0#0|
                                |c::main::main::1::b@1!0&0#0|)))))
      (a!21 (=> (and true a!19)
                (=> |execution_statet::guard_exec@0!0|
                    (=> a!19
                        (fp.eq |c::main::main::1::a@1!0&0#0|
                               |c::main::main::1::a@1!0&0#0|)))))
      (a!22 (=> (and true a!19)
                (=> |execution_statet::guard_exec@0!0|
                    (=> a!19
                        (fp.lt |c::main::main::1::a@1!0&0#0|
                               |c::main::main::1::b@1!0&0#0|)))))
      (a!23 (=> a!19
                (not (fp.lt (fp.neg |c::main::main::1::a@1!0&0#0|)
                            (fp.neg |c::main::main::1::b@1!0&0#0|)))))
      (a!24 (=> (and true a!19)
                (=> |execution_statet::guard_exec@0!0|
                    (=> a!19
                        (fp.gt |c::main::main::1::b@1!0&0#0|
                               |c::main::main::1::a@1!0&0#0|)))))
      (a!25 (=> a!19
                (not (fp.gt (fp.neg |c::main::main::1::b@1!0&0#0|)
                            (fp.neg |c::main::main::1::a@1!0&0#0|)))))
      (a!26 (=> |execution_statet::guard_exec@0!0|
                (=> a!19
                    (not (fp.lt |c::main::main::1::b@1!0&0#0|
                                |c::main::main::1::b@1!0&0#0|)))))
      (a!27 (=> a!19
                (not (fp.lt (fp.neg |c::main::main::1::b@1!0&0#0|)
                            (fp.neg |c::main::main::1::b@1!0&0#0|)))))
      (a!28 (=> |execution_statet::guard_exec@0!0|
                (=> a!19
                    (not (fp.gt |c::main::main::1::b@1!0&0#0|
                                |c::main::main::1::b@1!0&0#0|)))))
      (a!29 (=> a!19
                (not (fp.gt (fp.neg |c::main::main::1::b@1!0&0#0|)
                            (fp.neg |c::main::main::1::b@1!0&0#0|)))))
      (a!30 (=> (and true a!19)
                (=> |execution_statet::guard_exec@0!0|
                    (=> a!19
                        (fp.leq |c::main::main::1::b@1!0&0#0|
                                |c::main::main::1::b@1!0&0#0|)))))
      (a!31 (=> |execution_statet::guard_exec@0!0|
                (=> a!19
                    (fp.leq (fp.neg |c::main::main::1::b@1!0&0#0|)
                            (fp.neg |c::main::main::1::b@1!0&0#0|)))))
      (a!32 (=> (and true a!19)
                (=> |execution_statet::guard_exec@0!0|
                    (=> a!19
                        (fp.geq |c::main::main::1::b@1!0&0#0|
                                |c::main::main::1::b@1!0&0#0|)))))
      (a!33 (=> |execution_statet::guard_exec@0!0|
                (=> a!19
                    (fp.geq (fp.neg |c::main::main::1::b@1!0&0#0|)
                            (fp.neg |c::main::main::1::b@1!0&0#0|)))))
      (a!34 (=> (and true a!19)
                (=> |execution_statet::guard_exec@0!0|
                    (=> a!19
                        (fp.leq |c::main::main::1::a@1!0&0#0|
                                |c::main::main::1::b@1!0&0#0|)))))
      (a!35 (=> a!19
                (not (fp.leq (fp.neg |c::main::main::1::a@1!0&0#0|)
                             (fp.neg |c::main::main::1::b@1!0&0#0|)))))
      (a!36 (=> (and true a!19)
                (=> |execution_statet::guard_exec@0!0|
                    (=> a!19
                        (fp.geq |c::main::main::1::b@1!0&0#0|
                                |c::main::main::1::a@1!0&0#0|)))))
      (a!37 (=> a!19
                (not (fp.geq (fp.neg |c::main::main::1::b@1!0&0#0|)
                             (fp.neg |c::main::main::1::a@1!0&0#0|))))))
  (or (not (=> true a!1))
      (not a!2)
      (not a!3)
      (not (=> true (=> |execution_statet::guard_exec@0!0| a!4)))
      (not a!5)
      (not (=> true (=> |execution_statet::guard_exec@0!0| a!6)))
      (not (=> true a!7))
      (not (=> true (=> |execution_statet::guard_exec@0!0| a!8)))
      (not (=> true a!9))
      (not (=> true (=> |execution_statet::guard_exec@0!0| a!10)))
      (not a!11)
      (not (=> true a!12))
      (not a!13)
      (not (=> true a!14))
      (not a!15)
      (not (=> true (=> |execution_statet::guard_exec@0!0| a!16)))
      (not a!17)
      (not (=> true (=> |execution_statet::guard_exec@0!0| a!18)))
      (not (=> (and true a!19) a!20))
      (not a!21)
      (not a!22)
      (not (=> (and true a!19) (=> |execution_statet::guard_exec@0!0| a!23)))
      (not a!24)
      (not (=> (and true a!19) (=> |execution_statet::guard_exec@0!0| a!25)))
      (not (=> (and true a!19) a!26))
      (not (=> (and true a!19) (=> |execution_statet::guard_exec@0!0| a!27)))
      (not (=> (and true a!19) a!28))
      (not (=> (and true a!19) (=> |execution_statet::guard_exec@0!0| a!29)))
      (not a!30)
      (not (=> (and true a!19) a!31))
      (not a!32)
      (not (=> (and true a!19) a!33))
      (not a!34)
      (not (=> (and true a!19) (=> |execution_statet::guard_exec@0!0| a!35)))
      (not a!36)
      (not (=> (and true a!19) (=> |execution_statet::guard_exec@0!0| a!37)))))))

(check-sat)
(exit)
