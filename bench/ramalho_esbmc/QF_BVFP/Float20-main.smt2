(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::bug::min@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::f@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::bug::1::modifier@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::bug::1::ulpdiff@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::bugBrokenOut::min@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::g@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::bugBrokenOut::1::modifier@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::bugBrokenOut::1::dulpdiff@1!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::main::bugBrokenOut::1::ulpdiff@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::bugCasting::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::d@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |c::main::bugCasting::1::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= |c::main::main::1::f@1!0&0#0| |c::main::bug::min@1!0&0#1|))
(assert (let ((a!1 ((_ to_fp 8 24)
             roundNearestTiesToEven
             (fp.mul roundNearestTiesToEven
                     (fp #b0 #b01111101000 #x0000000000000)
                     ((_ to_fp 11 53)
                       roundNearestTiesToEven
                       (bvshl #x00000001 #x00000001))))))
  (= a!1 |c::main::bug::1::modifier@1!0&0#1|)))
(assert (= (fp.mul roundNearestTiesToEven
           |c::main::bug::min@1!0&0#1|
           |c::main::bug::1::modifier@1!0&0#1|)
   |c::main::bug::1::ulpdiff@1!0&0#1|))
(assert (= |c::main::main::1::g@1!0&0#0| |c::main::bugBrokenOut::min@1!0&0#1|))
(assert (let ((a!1 ((_ to_fp 8 24)
             roundNearestTiesToEven
             (fp.mul roundNearestTiesToEven
                     (fp #b0 #b01111101000 #x0000000000000)
                     ((_ to_fp 11 53)
                       roundNearestTiesToEven
                       (bvshl #x00000001 #x00000001))))))
  (= a!1 |c::main::bugBrokenOut::1::modifier@1!0&0#1|)))
(assert (= (fp.mul roundNearestTiesToEven
           ((_ to_fp 11 53)
             roundNearestTiesToEven
             |c::main::bugBrokenOut::min@1!0&0#1|)
           ((_ to_fp 11 53)
             roundNearestTiesToEven
             |c::main::bugBrokenOut::1::modifier@1!0&0#1|))
   |c::main::bugBrokenOut::1::dulpdiff@1!0&0#1|))
(assert (= ((_ to_fp 8 24)
     roundNearestTiesToEven
     |c::main::bugBrokenOut::1::dulpdiff@1!0&0#1|)
   |c::main::bugBrokenOut::1::ulpdiff@1!0&0#1|))
(assert (= |c::main::main::1::d@1!0&0#0| |c::main::bugCasting::d@1!0&0#1|))
(assert (= ((_ to_fp 8 24) roundNearestTiesToEven |c::main::bugCasting::d@1!0&0#1|)
   |c::main::bugCasting::1::f@1!0&0#1|))
(assert (let ((a!1 (=> |execution_statet::__guard_exec@0!0|
               (=> (fp.eq |c::main::bug::min@1!0&0#1|
                          (fp #b0 #x16 #b11111111111111111111111))
                   (fp.eq |c::main::bug::1::ulpdiff@1!0&0#1|
                          (fp #b0 #x01 #b00000000000000000000000)))))
      (a!3 (and (and true
                     (fp.eq |c::main::bug::min@1!0&0#1|
                            (fp #b0 #x16 #b11111111111111111111111)))
                (=> (fp.eq |c::main::bug::min@1!0&0#1|
                           (fp #b0 #x16 #b11111111111111111111111))
                    (fp.eq |c::main::bugBrokenOut::min@1!0&0#1|
                           (fp #b0 #x16 #b11111111111111111111111)))))
      (a!4 (and (fp.eq |c::main::bug::min@1!0&0#1|
                       (fp #b0 #x16 #b11111111111111111111111))
                (fp.eq |c::main::bugBrokenOut::min@1!0&0#1|
                       (fp #b0 #x16 #b11111111111111111111111)))))
(let ((a!2 (=> (and true
                    (fp.eq |c::main::bug::min@1!0&0#1|
                           (fp #b0 #x16 #b11111111111111111111111)))
               a!1))
      (a!5 (=> |execution_statet::__guard_exec@0!0|
               (=> a!4
                   (fp.eq |c::main::bugBrokenOut::1::ulpdiff@1!0&0#1|
                          (fp #b0 #x01 #b00000000000000000000000)))))
      (a!6 (and a!3
                (=> a!4
                    (fp.eq |c::main::bugCasting::d@1!0&0#1|
                           (fp #b0 #b01110000000 #xfffffe0000000)))))
      (a!7 (=> (and a!4
                    (fp.eq |c::main::bugCasting::d@1!0&0#1|
                           (fp #b0 #b01110000000 #xfffffe0000000)))
               (fp.eq |c::main::bugCasting::1::f@1!0&0#1|
                      (fp #b0 #x01 #b00000000000000000000000)))))
  (or (not a!2)
      (not (=> a!3 a!5))
      (not (=> a!6 (=> |execution_statet::__guard_exec@0!0| a!7)))))))

(check-sat)
(exit)
