(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::plus_infinity&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::minus_infinity&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::NaN&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::temp@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::temp@1!0&0#2| () Bool)
(declare-fun |c::main::$tmp::tmp$3@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::temp@1!0&0#3| () Bool)
(declare-fun |c::main::$tmp::tmp$5@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::temp@1!0&0#4| () Bool)
(declare-fun |c::main::$tmp::tmp$7@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::temp@1!0&0#5| () Bool)
(declare-fun |c::main::$tmp::tmp$9@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::temp@1!0&0#6| () Bool)
(declare-fun |c::main::$tmp::tmp$11@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::temp@1!0&0#7| () Bool)
(declare-fun |c::main::$tmp::tmp$13@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::temp@1!0&0#8| () Bool)
(declare-fun |c::main::$tmp::tmp$15@1!0&0#1| () Bool)
(declare-fun |execution_statet::guard_exec@0!0| () Bool)
(assert (= (fp.div roundNearestTiesToEven
           (fp #b0 #x7f #b00000000000000000000000)
           (fp #b0 #x00 #b00000000000000000000000))
   |c::plus_infinity&0#1|))
(assert (= (fp.div roundNearestTiesToEven
           (fp #b0 #x00 #b00000000000000000000000)
           (fp.neg (fp #b0 #x00 #b00000000000000000000000)))
   |c::minus_infinity&0#1|))
(assert (= (fp.mul roundNearestTiesToEven
           (fp #b0 #x00 #b00000000000000000000000)
           (fp.div roundNearestTiesToEven
                   (fp #b0 #x7f #b00000000000000000000000)
                   (fp #b0 #x00 #b00000000000000000000000)))
   |c::NaN&0#1|))
(assert (= (fp.lt |c::NaN&0#1| |c::plus_infinity&0#1|) |c::main::main::1::temp@1!0&0#1|))
(assert (= (not |c::main::main::1::temp@1!0&0#1|) |c::main::$tmp::tmp$1@1!0&0#1|))
(assert (= (fp.lt |c::NaN&0#1| |c::minus_infinity&0#1|)
   |c::main::main::1::temp@1!0&0#2|))
(assert (= (not |c::main::main::1::temp@1!0&0#2|) |c::main::$tmp::tmp$3@1!0&0#1|))
(assert (= (fp.leq |c::NaN&0#1| |c::NaN&0#1|) |c::main::main::1::temp@1!0&0#3|))
(assert (= (not |c::main::main::1::temp@1!0&0#3|) |c::main::$tmp::tmp$5@1!0&0#1|))
(assert (= (fp.geq |c::NaN&0#1| |c::NaN&0#1|) |c::main::main::1::temp@1!0&0#4|))
(assert (= (not |c::main::main::1::temp@1!0&0#4|) |c::main::$tmp::tmp$7@1!0&0#1|))
(assert (= (fp.gt |c::NaN&0#1| |c::plus_infinity&0#1|) |c::main::main::1::temp@1!0&0#5|))
(assert (= (not |c::main::main::1::temp@1!0&0#5|) |c::main::$tmp::tmp$9@1!0&0#1|))
(assert (= (fp.gt |c::NaN&0#1| |c::minus_infinity&0#1|)
   |c::main::main::1::temp@1!0&0#6|))
(assert (= (not |c::main::main::1::temp@1!0&0#6|) |c::main::$tmp::tmp$11@1!0&0#1|))
(assert (= (fp.gt |c::NaN&0#1| (fp #b0 #x00 #b00000000000000000000000))
   |c::main::main::1::temp@1!0&0#7|))
(assert (= (not |c::main::main::1::temp@1!0&0#7|) |c::main::$tmp::tmp$13@1!0&0#1|))
(assert (= (fp.lt |c::NaN&0#1| (fp #b0 #x00 #b00000000000000000000000))
   |c::main::main::1::temp@1!0&0#8|))
(assert (= (not |c::main::main::1::temp@1!0&0#8|) |c::main::$tmp::tmp$15@1!0&0#1|))
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
                   (=> (not |c::main::$tmp::tmp$7@1!0&0#1|) false))))
      (a!5 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$9@1!0&0#1|) false))))
      (a!6 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$11@1!0&0#1|) false))))
      (a!7 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$13@1!0&0#1|) false))))
      (a!8 (=> true
               (=> |execution_statet::guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$15@1!0&0#1|) false)))))
  (or (not a!1)
      (not a!2)
      (not a!3)
      (not a!4)
      (not a!5)
      (not a!6)
      (not a!7)
      (not a!8))))

(check-sat)
(exit)
