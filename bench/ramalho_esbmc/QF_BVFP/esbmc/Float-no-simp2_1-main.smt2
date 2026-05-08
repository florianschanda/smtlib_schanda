(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::math::isnan::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::f2@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isnan$1@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isfinite::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isfinite$2@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::main::1::f@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= |c::main::main::1::f2@1!0&0#0| |c::math::isnan::d@1!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::isnan::d@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isnan$1@1!0&0#1|))
(assert (= |c::main::main::1::f2@1!0&0#0| |c::math::isfinite::d@1!0&0#1|))
(assert (let ((a!1 (ite (not (or (fp.isInfinite |c::math::isfinite::d@1!0&0#1|)
                         (fp.isNaN |c::math::isfinite::d@1!0&0#1|)))
                #x00000001
                #x00000000)))
  (= a!1 |c::main::$tmp::return_value_isfinite$2@1!0&0#1|)))
(assert (= |c::main::main::1::f2@1!0&0#0| |c::main::main::1::f@1!0&0#1|))
(assert (let ((a!1 (=> (not (not (= |c::main::$tmp::return_value_isnan$1@1!0&0#1|
                            #x00000000)))
               (not (= |c::main::$tmp::return_value_isfinite$2@1!0&0#1|
                       #x00000000))))
      (a!3 (and (not (not (= |c::main::$tmp::return_value_isnan$1@1!0&0#1|
                             #x00000000)))
                (not (= |c::main::$tmp::return_value_isfinite$2@1!0&0#1|
                        #x00000000))))
      (a!9 (fp.eq (fp.neg (fp.neg (fp #b0 #b10000000101 #x9000000000000)))
                  (fp #b0 #b10000000101 #x9000000000000)))
      (a!11 (fp.eq (fp.neg (fp.sub roundNearestTiesToEven
                                   (fp #b0 #b01111111111 #x0000000000000)
                                   (fp #b0 #b10000000000 #x0000000000000)))
                   (fp #b0 #b01111111111 #x0000000000000)))
      (a!26 (fp.eq ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_ubv 32)
                       roundTowardZero
                       (fp #b0 #b10000000101 #x9000000000000)))
                   (fp #b0 #b10000000101 #x9000000000000)))
      (a!31 (= ((_ fp.to_sbv 32)
                 roundTowardZero
                 (fp.neg (fp #b0 #b01111111111 #x8000000000000)))
               (bvneg #x00000001)))
      (a!33 (= ((_ fp.to_sbv 32)
                 roundTowardZero
                 (fp.neg (fp #b0 #b10000000010 #x4fae147ae147b)))
               (bvneg #x0000000a))))
(let ((a!2 (and true
                (not (not (= |c::main::$tmp::return_value_isnan$1@1!0&0#1|
                             #x00000000)))
                a!1))
      (a!4 (=> a!3
               (fp.eq (fp.add roundNearestTiesToEven
                              (fp #b0 #b10000000101 #x9000000000000)
                              (fp #b0 #b10000000010 #x4000000000000))
                      (fp #b0 #b10000000101 #xb800000000000))))
      (a!5 (=> a!3
               (fp.eq (fp.add roundNearestTiesToEven
                              (fp #b0 #b00000000000 #x0000000000000)
                              |c::main::main::1::f@1!0&0#1|)
                      |c::main::main::1::f@1!0&0#1|)))
      (a!6 (=> a!3
               (fp.eq (fp.add roundNearestTiesToEven
                              (fp #b0 #b10000000101 #x9000000000000)
                              (fp #b0 #b01111111110 #x0000000000000))
                      (fp #b0 #b10000000101 #x9200000000000))))
      (a!7 (=> a!3
               (fp.eq (fp.sub roundNearestTiesToEven
                              (fp #b0 #b10000000101 #x9000000000000)
                              (fp #b0 #b10000000010 #x4000000000000))
                      (fp #b0 #b10000000101 #x6800000000000))))
      (a!8 (=> a!3
               (fp.eq (fp.sub roundNearestTiesToEven
                              (fp #b0 #b10000000101 #x9000000000000)
                              (fp #b0 #b01111111110 #x0000000000000))
                      (fp #b0 #b10000000101 #x8e00000000000))))
      (a!13 (=> a!3
                (fp.eq (fp.neg (fp.neg |c::main::main::1::f@1!0&0#1|))
                       |c::main::main::1::f@1!0&0#1|)))
      (a!14 (=> a!3
                (fp.eq (fp.mul roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b10000000010 #x4000000000000))
                       (fp #b0 #b10000001000 #xf400000000000))))
      (a!15 (=> a!3
                (fp.eq (fp.mul roundNearestTiesToEven
                               (fp #b0 #b00000000000 #x0000000000000)
                               |c::main::main::1::f@1!0&0#1|)
                       (fp #b0 #b00000000000 #x0000000000000))))
      (a!16 (=> a!3
                (fp.eq (fp.mul roundNearestTiesToEven
                               |c::main::main::1::f@1!0&0#1|
                               (fp #b0 #b00000000000 #x0000000000000))
                       (fp #b0 #b00000000000 #x0000000000000))))
      (a!17 (=> a!3
                (fp.eq (fp.mul roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b01111111110 #x0000000000000))
                       (fp #b0 #b10000000100 #x9000000000000))))
      (a!18 (=> a!3
                (fp.eq (fp.mul roundNearestTiesToEven
                               |c::main::main::1::f@1!0&0#1|
                               (fp #b0 #b01111111111 #x0000000000000))
                       |c::main::main::1::f@1!0&0#1|)))
      (a!19 (=> a!3
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b01111111111 #x0000000000000))
                       (fp #b0 #b10000000101 #x9000000000000))))
      (a!20 (=> a!3
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9066666666666)
                               (fp #b0 #b01111111111 #x0000000000000))
                       (fp #b0 #b10000000101 #x9066666666666))))
      (a!21 (=> a!3
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b10000000000 #x0000000000000))
                       (fp #b0 #b10000000100 #x9000000000000))))
      (a!22 (=> a!3
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b10000000101 #x9000000000000)
                               (fp #b0 #b01111111110 #x0000000000000))
                       (fp #b0 #b10000000110 #x9000000000000))))
      (a!23 (=> a!3
                (fp.eq (fp.div roundNearestTiesToEven
                               (fp #b0 #b00000000000 #x0000000000000)
                               (fp #b0 #b01111111111 #x0000000000000))
                       (fp #b0 #b00000000000 #x0000000000000))))
      (a!24 (=> a!3
                (fp.eq (fp.div roundNearestTiesToEven
                               |c::main::main::1::f@1!0&0#1|
                               (fp #b0 #b01111111111 #x0000000000000))
                       |c::main::main::1::f@1!0&0#1|)))
      (a!25 (=> a!3
                (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         ((_ to_fp 8 24) roundNearestTiesToEven #x00000064))
                       (fp #b0 #b10000000101 #x9000000000000))))
      (a!29 (=> a!3
                (= ((_ fp.to_sbv 32)
                     roundTowardZero
                     (fp #b0 #b01111111110 #x0000000000000))
                   #x00000000)))
      (a!30 (=> a!3
                (= ((_ fp.to_sbv 32)
                     roundTowardZero
                     (fp #b0 #b01111111101 #xf5c28f5c28f5c))
                   #x00000000)))
      (a!35 (=> |execution_statet::__guard_exec@0!0|
                (=> a!3
                    (fp.lt (fp #b0 #b01111111111 #x0000000000000)
                           (fp #b0 #b10000000000 #x4000000000000)))))
      (a!36 (=> |execution_statet::__guard_exec@0!0|
                (=> a!3
                    (fp.leq (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b10000000000 #x4000000000000)))))
      (a!37 (=> |execution_statet::__guard_exec@0!0|
                (=> a!3
                    (fp.leq (fp #b0 #b01111111111 #x028f5c28f5c29)
                            (fp #b0 #b01111111111 #x028f5c28f5c29)))))
      (a!38 (=> |execution_statet::__guard_exec@0!0|
                (=> a!3
                    (fp.gt (fp #b0 #b10000000000 #x4000000000000)
                           (fp #b0 #b01111111111 #x0000000000000)))))
      (a!39 (=> |execution_statet::__guard_exec@0!0|
                (=> a!3
                    (fp.geq (fp #b0 #b10000000000 #x4000000000000)
                            (fp #b0 #b01111111111 #x0000000000000)))))
      (a!40 (=> |execution_statet::__guard_exec@0!0|
                (=> a!3
                    (fp.geq (fp #b0 #b01111111111 #x028f5c28f5c29)
                            (fp #b0 #b01111111111 #x028f5c28f5c29)))))
      (a!41 (=> a!3
                (not (fp.geq (fp #b0 #b01111111111 #x0000000000000)
                             (fp #b0 #b10000000000 #x4000000000000)))))
      (a!42 (=> a!3
                (not (fp.gt (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b10000000000 #x4000000000000)))))
      (a!43 (=> a!3
                (not (fp.eq (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b10000000000 #x4000000000000))))))
(let ((a!10 (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| (=> a!3 a!9)))))
      (a!12 (not (=> a!2
                     (=> |execution_statet::__guard_exec@0!0| (=> a!3 a!11)))))
      (a!27 (not (=> a!2
                     (=> |execution_statet::__guard_exec@0!0| (=> a!3 a!26)))))
      (a!28 (=> a!2
                (=> |execution_statet::__guard_exec@0!0| (=> a!3 (not false)))))
      (a!32 (not (=> a!2
                     (=> |execution_statet::__guard_exec@0!0| (=> a!3 a!31)))))
      (a!34 (not (=> a!2
                     (=> |execution_statet::__guard_exec@0!0| (=> a!3 a!33))))))
  (or (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!4)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!5)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!6)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!7)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!8)))
      a!10
      a!12
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!13)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!14)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!15)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!16)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!17)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!18)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!19)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!20)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!21)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!22)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!23)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!24)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!25)))
      a!27
      (not a!28)
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!29)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!30)))
      a!32
      a!34
      (not (=> a!2 a!35))
      (not (=> a!2 a!36))
      (not (=> a!2 a!37))
      (not (=> a!2 a!38))
      (not (=> a!2 a!39))
      (not (=> a!2 a!40))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!41)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!42)))
      (not (=> a!2 (=> |execution_statet::__guard_exec@0!0| a!43))))))))

(check-sat)
(exit)
