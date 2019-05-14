(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::f@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::f2@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= |c::main::main::1::f2@1!0&0#0| |c::main::main::1::f@1!0&0#1|))
(assert (let ((a!1 (=> (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|))
               (not (or (fp.isInfinite |c::main::main::1::f2@1!0&0#0|)
                        (fp.isNaN |c::main::main::1::f2@1!0&0#0|)))))
      (a!2 (and (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|))
                (not (or (fp.isInfinite |c::main::main::1::f2@1!0&0#0|)
                         (fp.isNaN |c::main::main::1::f2@1!0&0#0|)))))
      (a!13 (fp.eq (fp.neg (fp.neg (fp #b0 #b10000000101 #x9000000000000)))
                   (fp #b0 #b10000000101 #x9000000000000)))
      (a!15 (fp.eq (fp.neg (fp.sub roundNearestTiesToEven
                                   (fp #b0 #b01111111111 #x0000000000000)
                                   (fp #b0 #b10000000000 #x0000000000000)))
                   (fp #b0 #b01111111111 #x0000000000000)))
      (a!43 (fp.eq ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_ubv 32)
                       roundTowardZero
                       (fp #b0 #b10000000101 #x9000000000000)))
                   (fp #b0 #b10000000101 #x9000000000000)))
      (a!50 (= ((_ fp.to_sbv 32)
                 roundTowardZero
                 (fp.neg (fp #b0 #b01111111111 #x8000000000000)))
               (bvneg #x00000001)))
      (a!52 (= ((_ fp.to_sbv 32)
                 roundTowardZero
                 (fp.neg (fp #b0 #b10000000010 #x4fae147ae147b)))
               (bvneg #x0000000a))))
(let ((a!3 (=> a!2
               (fp.eq (fp.add roundNearestTiesToEven
                              (fp #b0 #b10000000101 #x9000000000000)
                              (fp #b0 #b10000000010 #x4000000000000))
                      (fp #b0 #b10000000101 #xb800000000000))))
      (a!5 (=> a!2
               (fp.eq (fp.add roundNearestTiesToEven
                              (fp #b0 #b00000000000 #x0000000000000)
                              |c::main::main::1::f@1!0&0#1|)
                      |c::main::main::1::f@1!0&0#1|)))
      (a!7 (=> a!2
               (fp.eq (fp.add roundNearestTiesToEven
                              (fp #b0 #b10000000101 #x9000000000000)
                              (fp #b0 #b01111111110 #x0000000000000))
                      (fp #b0 #b10000000101 #x9200000000000))))
      (a!9 (=> a!2
               (fp.eq (fp.sub roundNearestTiesToEven
                              (fp #b0 #b10000000101 #x9000000000000)
                              (fp #b0 #b10000000010 #x4000000000000))
                      (fp #b0 #b10000000101 #x6800000000000))))
      (a!11 (=> a!2
                (fp.eq (fp.sub roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b01111111110 #x0000000000000))
                       (fp #b0 #b10000000101 #x8e00000000000))))
      (a!14 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| (=> a!2 a!13))))
      (a!16 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| (=> a!2 a!15))))
      (a!17 (=> a!2
                (fp.eq (fp.neg (fp.neg |c::main::main::1::f@1!0&0#1|))
                       |c::main::main::1::f@1!0&0#1|)))
      (a!19 (=> a!2
                (fp.eq (fp.mul roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b10000000010 #x4000000000000))
                       (fp #b0 #b10000001000 #xf400000000000))))
      (a!21 (=> a!2
                (fp.eq (fp.mul roundNearestTiesToEven
                               (fp #b0 #b00000000000 #x0000000000000)
                               |c::main::main::1::f@1!0&0#1|)
                       (fp #b0 #b00000000000 #x0000000000000))))
      (a!23 (=> a!2
                (fp.eq (fp.mul roundNearestTiesToEven
                               |c::main::main::1::f@1!0&0#1|
                               (fp #b0 #b00000000000 #x0000000000000))
                       (fp #b0 #b00000000000 #x0000000000000))))
      (a!25 (=> a!2
                (fp.eq (fp.mul roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b01111111110 #x0000000000000))
                       (fp #b0 #b10000000100 #x9000000000000))))
      (a!27 (=> a!2
                (fp.eq (fp.mul roundNearestTiesToEven
                               |c::main::main::1::f@1!0&0#1|
                               (fp #b0 #b01111111111 #x0000000000000))
                       |c::main::main::1::f@1!0&0#1|)))
      (a!29 (=> a!2
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b01111111111 #x0000000000000))
                       (fp #b0 #b10000000101 #x9000000000000))))
      (a!31 (=> a!2
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9066666666666)
                               (fp #b0 #b01111111111 #x0000000000000))
                       (fp #b0 #b10000000101 #x9066666666666))))
      (a!33 (=> a!2
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b10000000000 #x0000000000000))
                       (fp #b0 #b10000000100 #x9000000000000))))
      (a!35 (=> a!2
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b01111111110 #x0000000000000))
                       (fp #b0 #b10000000110 #x9000000000000))))
      (a!37 (=> a!2
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b00000000000 #x0000000000000)
                               (fp #b0 #b01111111111 #x0000000000000))
                       (fp #b0 #b00000000000 #x0000000000000))))
      (a!39 (=> a!2
                (fp.eq (fp.div roundNearestTiesToEven
                               |c::main::main::1::f@1!0&0#1|
                               (fp #b0 #b01111111111 #x0000000000000))
                       |c::main::main::1::f@1!0&0#1|)))
      (a!41 (=> a!2
                (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         ((_ to_fp 8 24) roundNearestTiesToEven #x00000064))
                       (fp #b0 #b10000000101 #x9000000000000))))
      (a!44 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| (=> a!2 a!43))))
      (a!45 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| (=> a!2 (not false)))))
      (a!46 (=> a!2
                (= ((_ fp.to_sbv 32)
                     roundTowardZero
                     (fp #b0 #b01111111110 #x0000000000000))
                   #x00000000)))
      (a!48 (=> a!2
                (= ((_ fp.to_sbv 32)
                     roundTowardZero
                     (fp #b0 #b01111111101 #xf5c28f5c28f5c))
                   #x00000000)))
      (a!51 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| (=> a!2 a!50))))
      (a!53 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| (=> a!2 a!52))))
      (a!54 (=> |execution_statet::__guard_exec@0!0|
                (=> a!2
                    (fp.lt (fp #b0 #b01111111111 #x0000000000000)
                           (fp #b0 #b10000000000 #x4000000000000)))))
      (a!56 (=> |execution_statet::__guard_exec@0!0|
                (=> a!2
                    (fp.leq (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b10000000000 #x4000000000000)))))
      (a!58 (=> |execution_statet::__guard_exec@0!0|
                (=> a!2
                    (fp.leq (fp #b0 #b01111111111 #x028f5c28f5c29)
                            (fp #b0 #b01111111111 #x028f5c28f5c29)))))
      (a!60 (=> |execution_statet::__guard_exec@0!0|
                (=> a!2
                    (fp.gt (fp #b0 #b10000000000 #x4000000000000)
                           (fp #b0 #b01111111111 #x0000000000000)))))
      (a!62 (=> |execution_statet::__guard_exec@0!0|
                (=> a!2
                    (fp.geq (fp #b0 #b10000000000 #x4000000000000)
                            (fp #b0 #b01111111111 #x0000000000000)))))
      (a!64 (=> |execution_statet::__guard_exec@0!0|
                (=> a!2
                    (fp.geq (fp #b0 #b01111111111 #x028f5c28f5c29)
                            (fp #b0 #b01111111111 #x028f5c28f5c29)))))
      (a!66 (=> a!2
                (not (fp.geq (fp #b0 #b01111111111 #x0000000000000)
                             (fp #b0 #b10000000000 #x4000000000000)))))
      (a!68 (=> a!2
                (not (fp.gt (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b10000000000 #x4000000000000)))))
      (a!70 (=> a!2
                (not (fp.eq (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b10000000000 #x4000000000000))))))
(let ((a!4 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
               (=> |execution_statet::__guard_exec@0!0| a!3)))
      (a!6 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
               (=> |execution_statet::__guard_exec@0!0| a!5)))
      (a!8 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
               (=> |execution_statet::__guard_exec@0!0| a!7)))
      (a!10 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!9)))
      (a!12 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!11)))
      (a!18 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!17)))
      (a!20 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!19)))
      (a!22 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!21)))
      (a!24 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!23)))
      (a!26 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!25)))
      (a!28 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!27)))
      (a!30 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!29)))
      (a!32 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!31)))
      (a!34 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!33)))
      (a!36 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!35)))
      (a!38 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!37)))
      (a!40 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!39)))
      (a!42 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!41)))
      (a!47 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!46)))
      (a!49 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!48)))
      (a!55 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                a!54))
      (a!57 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                a!56))
      (a!59 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                a!58))
      (a!61 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                a!60))
      (a!63 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                a!62))
      (a!65 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                a!64))
      (a!67 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!66)))
      (a!69 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!68)))
      (a!71 (=> (and true (not (fp.isNaN |c::main::main::1::f2@1!0&0#0|)) a!1)
                (=> |execution_statet::__guard_exec@0!0| a!70))))
  (or (not a!4)
      (not a!6)
      (not a!8)
      (not a!10)
      (not a!12)
      (not a!14)
      (not a!16)
      (not a!18)
      (not a!20)
      (not a!22)
      (not a!24)
      (not a!26)
      (not a!28)
      (not a!30)
      (not a!32)
      (not a!34)
      (not a!36)
      (not a!38)
      (not a!40)
      (not a!42)
      (not a!44)
      (not a!45)
      (not a!47)
      (not a!49)
      (not a!51)
      (not a!53)
      (not a!55)
      (not a!57)
      (not a!59)
      (not a!61)
      (not a!63)
      (not a!65)
      (not a!67)
      (not a!69)
      (not a!71))))))

(check-sat)
(exit)
