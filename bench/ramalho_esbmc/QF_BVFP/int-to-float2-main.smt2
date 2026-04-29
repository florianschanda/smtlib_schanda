(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::$tmp::return_value_nondet_float$1@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |nondet$symex::nondet0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::other@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$2@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_nondet_int$4@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |nondet$symex::nondet1| () (_ BitVec 32))
(declare-fun |c::main::main::1::x@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::castWithRounding::value@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#2| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$5@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$6@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@2!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#3| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@2!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$8@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$9@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@3!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#4| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@3!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$11@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$12@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@4!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#5| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@4!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$14@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$15@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@5!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#6| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@5!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$17@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$18@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@6!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#7| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@6!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$20@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$21@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@7!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#8| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@7!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$23@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$24@1!0&0#1| () Bool)
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= |nondet$symex::nondet0| |c::main::$tmp::return_value_nondet_float$1@1!0&0#1|))
(assert (= |c::main::$tmp::return_value_nondet_float$1@1!0&0#1|
   |c::main::main::1::other@1!0&0#1|))
(assert (let ((a!1 (not (and (fp.lt (fp #b0 #x98 #b00000000000000000000000)
                            |c::main::main::1::other@1!0&0#1|)
                     (fp.lt |c::main::main::1::other@1!0&0#1|
                            (fp #b0 #x98 #b00000000000000000000001))))))
  (= a!1 |c::main::$tmp::tmp$2@1!0&0#1|)))
(assert (= |nondet$symex::nondet1| |c::main::$tmp::return_value_nondet_int$4@1!0&0#1|))
(assert (= |c::main::$tmp::return_value_nondet_int$4@1!0&0#1|
   |c::main::main::1::x@1!0&0#1|))
(assert (= |c::main::main::1::x@1!0&0#1| |c::main::castWithRounding::value@1!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#2|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@1!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@1!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$5@1!0&0#1|)))
(assert (= (= (fp.eq |c::main::$tmp::return_value_castWithRounding$5@1!0&0#1|
             (fp #b0 #x98 #b00000000000000000000001))
      (= |c::main::main::1::x@1!0&0#1| #x02000003))
   |c::main::$tmp::tmp$6@1!0&0#1|))
(assert (= |c::main::main::1::x@1!0&0#1| |c::main::castWithRounding::value@2!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#3|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@2!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@2!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$8@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$8@1!0&0#1|
          (fp #b0 #x98 #b00000000000000000000001))
   |c::main::$tmp::tmp$9@1!0&0#1|))
(assert (= (bvneg |c::main::main::1::x@1!0&0#1|)
   |c::main::castWithRounding::value@3!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#4|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@3!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@3!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$11@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$11@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$12@1!0&0#1|))
(assert (= |c::main::main::1::x@1!0&0#1| |c::main::castWithRounding::value@4!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#5|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@4!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@4!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$14@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$14@1!0&0#1|
          (fp #b0 #x98 #b00000000000000000000000))
   |c::main::$tmp::tmp$15@1!0&0#1|))
(assert (= (bvneg |c::main::main::1::x@1!0&0#1|)
   |c::main::castWithRounding::value@5!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#6|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@5!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@5!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$17@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$17@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000001)))
   |c::main::$tmp::tmp$18@1!0&0#1|))
(assert (= |c::main::main::1::x@1!0&0#1| |c::main::castWithRounding::value@6!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#7|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@6!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@6!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$20@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$20@1!0&0#1|
          (fp #b0 #x98 #b00000000000000000000000))
   |c::main::$tmp::tmp$21@1!0&0#1|))
(assert (= (bvneg |c::main::main::1::x@1!0&0#1|)
   |c::main::castWithRounding::value@7!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#8|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@7!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@7!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$23@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$23@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$24@1!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$2@1!0&0#1|) false))))
      (a!2 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                         (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                    (not |c::castWithRounding::$tmp::tmp$2@1!0&0#1|))
               false))
      (a!4 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                         (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                    (not |c::main::$tmp::tmp$6@1!0&0#1|))
               false))
      (a!6 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                         (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                    (not |c::castWithRounding::$tmp::tmp$2@2!0&0#1|))
               false))
      (a!8 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                         (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                    (not |c::main::$tmp::tmp$9@1!0&0#1|))
               false))
      (a!10 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::castWithRounding::$tmp::tmp$2@3!0&0#1|))
                false))
      (a!12 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::main::$tmp::tmp$12@1!0&0#1|))
                false))
      (a!14 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::castWithRounding::$tmp::tmp$2@4!0&0#1|))
                false))
      (a!16 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::main::$tmp::tmp$15@1!0&0#1|))
                false))
      (a!18 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::castWithRounding::$tmp::tmp$2@5!0&0#1|))
                false))
      (a!20 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::main::$tmp::tmp$18@1!0&0#1|))
                false))
      (a!22 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::castWithRounding::$tmp::tmp$2@6!0&0#1|))
                false))
      (a!24 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::main::$tmp::tmp$21@1!0&0#1|))
                false))
      (a!26 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::castWithRounding::$tmp::tmp$2@7!0&0#1|))
                false))
      (a!28 (=> (and (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004))
                     (not |c::main::$tmp::tmp$24@1!0&0#1|))
                false)))
(let ((a!3 (=> (and true
                    (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                         (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
               (=> |execution_statet::__guard_exec@0!0| a!2)))
      (a!5 (=> (and true
                    (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                         (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
               (=> |execution_statet::__guard_exec@0!0| a!4)))
      (a!7 (=> (and true
                    (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                         (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
               (=> |execution_statet::__guard_exec@0!0| a!6)))
      (a!9 (=> (and true
                    (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                         (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
               (=> |execution_statet::__guard_exec@0!0| a!8)))
      (a!11 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!10)))
      (a!13 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!12)))
      (a!15 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!14)))
      (a!17 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!16)))
      (a!19 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!18)))
      (a!21 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!20)))
      (a!23 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!22)))
      (a!25 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!24)))
      (a!27 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!26)))
      (a!29 (=> (and true
                     (and (bvslt #x02000000 |c::main::main::1::x@1!0&0#1|)
                          (bvslt |c::main::main::1::x@1!0&0#1| #x02000004)))
                (=> |execution_statet::__guard_exec@0!0| a!28))))
  (or (not a!1)
      (not a!3)
      (not a!5)
      (not a!7)
      (not a!9)
      (not a!11)
      (not a!13)
      (not a!15)
      (not a!17)
      (not a!19)
      (not a!21)
      (not a!23)
      (not a!25)
      (not a!27)
      (not a!29)))))

(check-sat)
(exit)
