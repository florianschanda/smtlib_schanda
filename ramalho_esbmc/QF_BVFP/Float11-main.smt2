(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (fp.lt (fp #b0 #b01111111111 #x0000000000000)
                          (fp #b0 #b10000000000 #x4000000000000)))))
      (a!2 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (fp.leq (fp #b0 #b01111111111 #x0000000000000)
                           (fp #b0 #b10000000000 #x4000000000000)))))
      (a!3 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (fp.leq (fp #b0 #b01111111111 #x028f5c28f5c29)
                           (fp #b0 #b01111111111 #x028f5c28f5c29)))))
      (a!4 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (fp.gt (fp #b0 #b10000000000 #x4000000000000)
                          (fp #b0 #b01111111111 #x0000000000000)))))
      (a!5 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (fp.geq (fp #b0 #b10000000000 #x4000000000000)
                           (fp #b0 #b01111111111 #x0000000000000)))))
      (a!6 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (fp.geq (fp #b0 #b01111111111 #x028f5c28f5c29)
                           (fp #b0 #b01111111111 #x028f5c28f5c29)))))
      (a!7 (=> |execution_statet::__guard_exec@0!0|
               (not (fp.geq (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b10000000000 #x4000000000000)))))
      (a!8 (=> |execution_statet::__guard_exec@0!0|
               (not (fp.gt (fp #b0 #b01111111111 #x0000000000000)
                           (fp #b0 #b10000000000 #x4000000000000)))))
      (a!9 (=> |execution_statet::__guard_exec@0!0|
               (not (fp.eq (fp #b0 #b01111111111 #x0000000000000)
                           (fp #b0 #b10000000000 #x4000000000000)))))
      (a!10 (=> |execution_statet::__guard_exec@0!0|
                (fp.gt (fp.neg (fp #b0 #b01111111111 #x0000000000000))
                       (fp.neg (fp #b0 #b10000000000 #x4000000000000)))))
      (a!11 (=> |execution_statet::__guard_exec@0!0|
                (fp.geq (fp.neg (fp #b0 #b01111111111 #x0000000000000))
                        (fp.neg (fp #b0 #b10000000000 #x4000000000000)))))
      (a!12 (=> |execution_statet::__guard_exec@0!0|
                (fp.geq (fp.neg (fp #b0 #b01111111111 #x028f5c28f5c29))
                        (fp.neg (fp #b0 #b01111111111 #x028f5c28f5c29)))))
      (a!13 (=> |execution_statet::__guard_exec@0!0|
                (fp.lt (fp.neg (fp #b0 #b10000000000 #x4000000000000))
                       (fp.neg (fp #b0 #b01111111111 #x0000000000000)))))
      (a!14 (=> |execution_statet::__guard_exec@0!0|
                (fp.leq (fp.neg (fp #b0 #b10000000000 #x4000000000000))
                        (fp.neg (fp #b0 #b01111111111 #x0000000000000)))))
      (a!15 (=> |execution_statet::__guard_exec@0!0|
                (fp.leq (fp.neg (fp #b0 #b01111111111 #x028f5c28f5c29))
                        (fp.neg (fp #b0 #b01111111111 #x028f5c28f5c29)))))
      (a!16 (not (fp.leq (fp.neg (fp #b0 #b01111111111 #x0000000000000))
                         (fp.neg (fp #b0 #b10000000000 #x4000000000000)))))
      (a!17 (not (fp.lt (fp.neg (fp #b0 #b01111111111 #x0000000000000))
                        (fp.neg (fp #b0 #b10000000000 #x4000000000000)))))
      (a!18 (not (fp.eq (fp.neg (fp #b0 #b01111111111 #x0000000000000))
                        (fp.neg (fp #b0 #b10000000000 #x4000000000000)))))
      (a!19 (=> |execution_statet::__guard_exec@0!0|
                (fp.lt (fp.neg (fp #b0 #b01111111111 #x0000000000000))
                       (fp #b0 #b00000000000 #x0000000000000))))
      (a!20 (=> |execution_statet::__guard_exec@0!0|
                (fp.gt (fp #b0 #b00000000000 #x0000000000000)
                       (fp.neg (fp #b0 #b01111111111 #x0000000000000)))))
      (a!21 (=> |execution_statet::__guard_exec@0!0|
                (fp.eq (fp #b0 #b00000000000 #x0000000000000)
                       (fp.neg (fp #b0 #b00000000000 #x0000000000000)))))
      (a!22 (=> |execution_statet::__guard_exec@0!0|
                (fp.geq (fp #b0 #b00000000000 #x0000000000000)
                        (fp.neg (fp #b0 #b00000000000 #x0000000000000)))))
      (a!23 (not (=> true
                     (=> |execution_statet::__guard_exec@0!0|
                         (bvsgt #x00000001 #x00000000)))))
      (a!24 (not (=> true
                     (=> |execution_statet::__guard_exec@0!0|
                         (bvslt #x00000000 #x00000001)))))
      (a!25 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (bvsgt #x00000001 (bvneg #x00000000)))))
      (a!26 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (bvslt (bvneg #x00000000) #x00000001))))
      (a!27 (=> |execution_statet::__guard_exec@0!0|
                (not (fp.lt (fp #b0 #x7e #b11111111011111001110111)
                            (fp #b0 #x00 #b00000000000000000000000)))))
      (a!28 (not (fp.gt (fp.neg (fp #b0 #x7e #b11111111011111001110111))
                        (fp.neg (fp #b0 #x00 #b00000000000000000000000)))))
      (a!29 (=> |execution_statet::__guard_exec@0!0|
                (not (fp.leq (fp #b0 #x7e #b11111111011111001110111)
                             (fp #b0 #x00 #b00000000000000000000000)))))
      (a!30 (not (fp.geq (fp.neg (fp #b0 #x7e #b11111111011111001110111))
                         (fp.neg (fp #b0 #x00 #b00000000000000000000000))))))
  (or (not a!1)
      (not a!2)
      (not a!3)
      (not a!4)
      (not a!5)
      (not a!6)
      (not (=> true a!7))
      (not (=> true a!8))
      (not (=> true a!9))
      (not (=> true a!10))
      (not (=> true a!11))
      (not (=> true a!12))
      (not (=> true a!13))
      (not (=> true a!14))
      (not (=> true a!15))
      (not (=> true (=> |execution_statet::__guard_exec@0!0| a!16)))
      (not (=> true (=> |execution_statet::__guard_exec@0!0| a!17)))
      (not (=> true (=> |execution_statet::__guard_exec@0!0| a!18)))
      (not (=> true a!19))
      (not (=> true a!20))
      (not (=> true a!21))
      (not (=> true a!22))
      a!23
      a!24
      (not a!25)
      (not a!26)
      (not (=> true a!27))
      (not (=> true (=> |execution_statet::__guard_exec@0!0| a!28)))
      (not (=> true a!29))
      (not (=> true (=> |execution_statet::__guard_exec@0!0| a!30))))))

(check-sat)
(exit)
