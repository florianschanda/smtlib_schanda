(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::__ESBMC_rounding_mode&0#2| () (_ BitVec 32))
(declare-fun |c::main::roundingTest::1::roundToNearestSum@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::roundingTest::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#3| () (_ BitVec 32))
(declare-fun |c::main::roundingTest::1::roundDownSum@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::roundingTest::$tmp::tmp$3@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_nondet_value$1@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |nondet$symex::nondet0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::f3@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value_nondet_value$2@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |nondet$symex::nondet1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::f4@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::roundingTest::f1@2!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::roundingTest::f2@2!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::__ESBMC_rounding_mode&0#4| () (_ BitVec 32))
(declare-fun |c::main::roundingTest::1::roundToNearestSum@2!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::roundingTest::$tmp::tmp$1@2!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#5| () (_ BitVec 32))
(declare-fun |c::main::roundingTest::1::roundDownSum@2!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::roundingTest::$tmp::tmp$3@2!0&0#1| () Bool)
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#2|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #x7f #b00000000000000000000000)
             (fp #b0 #x67 #b10000000000000000000000))
     |c::main::roundingTest::1::roundToNearestSum@1!0&0#1|)))
(assert (= (fp.eq |c::main::roundingTest::1::roundToNearestSum@1!0&0#1|
          (fp #b0 #x7f #b00000000000000000000001))
   |c::roundingTest::$tmp::tmp$1@1!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#3|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #x7f #b00000000000000000000000)
             (fp #b0 #x67 #b10000000000000000000000))
     |c::main::roundingTest::1::roundDownSum@1!0&0#1|)))
(assert (= (fp.eq |c::main::roundingTest::1::roundDownSum@1!0&0#1|
          (fp #b0 #x7f #b00000000000000000000000))
   |c::roundingTest::$tmp::tmp$3@1!0&0#1|))
(assert (= |nondet$symex::nondet0| |c::main::$tmp::return_value_nondet_value$1@1!0&0#1|))
(assert (= |c::main::$tmp::return_value_nondet_value$1@1!0&0#1|
   |c::main::main::1::f3@1!0&0#1|))
(assert (= |nondet$symex::nondet1| |c::main::$tmp::return_value_nondet_value$2@1!0&0#1|))
(assert (= |c::main::$tmp::return_value_nondet_value$2@1!0&0#1|
   |c::main::main::1::f4@1!0&0#1|))
(assert (= |c::main::main::1::f3@1!0&0#1| |c::main::roundingTest::f1@2!0&0#1|))
(assert (= |c::main::main::1::f4@1!0&0#1| |c::main::roundingTest::f2@2!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#4|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::roundingTest::f1@2!0&0#1|
             |c::main::roundingTest::f2@2!0&0#1|)
     |c::main::roundingTest::1::roundToNearestSum@2!0&0#1|)))
(assert (= (fp.eq |c::main::roundingTest::1::roundToNearestSum@2!0&0#1|
          (fp #b0 #x7f #b00000000000000000000001))
   |c::roundingTest::$tmp::tmp$1@2!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#5|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::roundingTest::f1@2!0&0#1|
             |c::main::roundingTest::f2@2!0&0#1|)
     |c::main::roundingTest::1::roundDownSum@2!0&0#1|)))
(assert (= (fp.eq |c::main::roundingTest::1::roundDownSum@2!0&0#1|
          (fp #b0 #x7f #b00000000000000000000000))
   |c::roundingTest::$tmp::tmp$3@2!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::roundingTest::$tmp::tmp$1@1!0&0#1|) false))))
      (a!2 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::roundingTest::$tmp::tmp$3@1!0&0#1|) false))))
      (a!3 (and (fp.lt (fp #b0 #x7e #b11111111111111111111111)
                       |c::main::main::1::f3@1!0&0#1|)
                (fp.lt |c::main::main::1::f3@1!0&0#1|
                       (fp #b0 #x7f #b00000000000000000000001)))))
(let ((a!4 (=> a!3
               (and (fp.lt (fp #b0 #x67 #b01111111111111111111111)
                           |c::main::main::1::f4@1!0&0#1|)
                    (fp.lt |c::main::main::1::f4@1!0&0#1|
                           (fp #b0 #x67 #b10000000000000000000001)))))
      (a!5 (and a!3
                (fp.lt (fp #b0 #x67 #b01111111111111111111111)
                       |c::main::main::1::f4@1!0&0#1|)
                (fp.lt |c::main::main::1::f4@1!0&0#1|
                       (fp #b0 #x67 #b10000000000000000000001)))))
(let ((a!6 (=> |execution_statet::__guard_exec@0!0|
               (=> (and a!5 (not |c::roundingTest::$tmp::tmp$1@2!0&0#1|)) false)))
      (a!7 (=> |execution_statet::__guard_exec@0!0|
               (=> (and a!5 (not |c::roundingTest::$tmp::tmp$3@2!0&0#1|)) false))))
  (or (not a!1)
      (not a!2)
      (not (=> (and true a!3 a!4) a!6))
      (not (=> (and true a!3 a!4) a!7)))))))

(check-sat)
(exit)
