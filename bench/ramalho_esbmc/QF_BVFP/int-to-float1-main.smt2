(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::__ESBMC_rounding_mode&0#2| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$2@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#3| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@2!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$5@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#4| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@3!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$8@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#5| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@4!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$11@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#6| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@5!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$14@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#7| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@6!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$17@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#8| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@7!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$20@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#9| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@8!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$23@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#10| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@9!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$26@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#11| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@10!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$29@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#12| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@11!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$32@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#13| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@12!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$35@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#14| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@13!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$38@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#15| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@14!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$41@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@15!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#16| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@15!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$43@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$44@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@16!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#17| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@16!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$46@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$47@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@17!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#18| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@17!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$49@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$50@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@18!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#19| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@18!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$52@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$53@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@19!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#20| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@19!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$55@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$56@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#21| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@20!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$59@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#22| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@21!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$62@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#23| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@22!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$65@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#24| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@23!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$68@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#25| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@24!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$71@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@25!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#26| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@25!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$73@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$74@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@26!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#27| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@26!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$76@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$77@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@27!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#28| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@27!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$79@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$80@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@28!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#29| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@28!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$82@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$83@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@29!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#30| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@29!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$85@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$86@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#31| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@30!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$89@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#32| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@31!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$92@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#33| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@32!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$95@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#34| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@33!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$98@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#35| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@34!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$101@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@35!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#36| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@35!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$103@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$104@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@36!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#37| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@36!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$106@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$107@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@37!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#38| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@37!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$109@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$110@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@38!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#39| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@38!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$112@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$113@1!0&0#1| () Bool)
(declare-fun |c::main::castWithRounding::value@39!0&0#1| () (_ BitVec 32))
(declare-fun |c::__ESBMC_rounding_mode&0#40| () (_ BitVec 32))
(declare-fun |c::castWithRounding::$tmp::tmp$2@39!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value_castWithRounding$115@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$116@1!0&0#1| () Bool)
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
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
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000000)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$2@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#3|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@2!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000001)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$5@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#4|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@3!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000002)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$8@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#5|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@4!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000003)
            (fp #b0 #x98 #b00000000000000000000001))
     |c::main::$tmp::tmp$11@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#6|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@5!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000004)
            (fp #b0 #x98 #b00000000000000000000001))
     |c::main::$tmp::tmp$14@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#7|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@6!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000005)
            (fp #b0 #x98 #b00000000000000000000001))
     |c::main::$tmp::tmp$17@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#8|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@7!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000006)
            (fp #b0 #x98 #b00000000000000000000010))
     |c::main::$tmp::tmp$20@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#9|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@8!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000007)
            (fp #b0 #x98 #b00000000000000000000010))
     |c::main::$tmp::tmp$23@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#10|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@9!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000008)
            (fp #b0 #x98 #b00000000000000000000010))
     |c::main::$tmp::tmp$26@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#11|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@10!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000000)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$29@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#12|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@11!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000001)
            (fp #b0 #x98 #b00000000000000000000001))
     |c::main::$tmp::tmp$32@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#13|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@12!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000002)
            (fp #b0 #x98 #b00000000000000000000001))
     |c::main::$tmp::tmp$35@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#14|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@13!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000003)
            (fp #b0 #x98 #b00000000000000000000001))
     |c::main::$tmp::tmp$38@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#15|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@14!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000004)
            (fp #b0 #x98 #b00000000000000000000001))
     |c::main::$tmp::tmp$41@1!0&0#1|)))
(assert (= (bvneg #x02000000) |c::main::castWithRounding::value@15!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#16|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@15!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@15!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$43@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$43@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$44@1!0&0#1|))
(assert (= (bvneg #x02000001) |c::main::castWithRounding::value@16!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#17|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@16!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@16!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$46@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$46@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$47@1!0&0#1|))
(assert (= (bvneg #x02000002) |c::main::castWithRounding::value@17!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#18|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@17!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#18| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#18| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#18| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@17!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$49@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$49@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$50@1!0&0#1|))
(assert (= (bvneg #x02000003) |c::main::castWithRounding::value@18!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#19|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@18!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#19| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#19| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#19| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@18!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$52@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$52@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$53@1!0&0#1|))
(assert (= (bvneg #x02000004) |c::main::castWithRounding::value@19!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#20|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@19!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#20| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#20| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#20| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@19!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$55@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$55@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000001)))
   |c::main::$tmp::tmp$56@1!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#21|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@20!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#21| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#21| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#21| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000000)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$59@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#22|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@21!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#22| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#22| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#22| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000001)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$62@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#23|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@22!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#23| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#23| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#23| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000002)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$65@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#24|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@23!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#24| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#24| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#24| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000003)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$68@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#25|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@24!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#25| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#25| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#25| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000004)
            (fp #b0 #x98 #b00000000000000000000001))
     |c::main::$tmp::tmp$71@1!0&0#1|)))
(assert (= (bvneg #x02000000) |c::main::castWithRounding::value@25!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#26|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@25!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#26| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#26| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#26| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@25!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$73@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$73@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$74@1!0&0#1|))
(assert (= (bvneg #x02000001) |c::main::castWithRounding::value@26!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#27|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@26!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#27| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#27| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#27| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@26!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$76@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$76@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000001)))
   |c::main::$tmp::tmp$77@1!0&0#1|))
(assert (= (bvneg #x02000002) |c::main::castWithRounding::value@27!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#28|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@27!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#28| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#28| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#28| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@27!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$79@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$79@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000001)))
   |c::main::$tmp::tmp$80@1!0&0#1|))
(assert (= (bvneg #x02000003) |c::main::castWithRounding::value@28!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#29|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@28!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#29| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#29| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#29| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@28!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$82@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$82@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000001)))
   |c::main::$tmp::tmp$83@1!0&0#1|))
(assert (= (bvneg #x02000004) |c::main::castWithRounding::value@29!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#30|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@29!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#30| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#30| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#30| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@29!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$85@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$85@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000001)))
   |c::main::$tmp::tmp$86@1!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#31|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@30!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#31| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#31| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#31| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000000)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$89@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#32|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@31!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#32| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#32| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#32| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000001)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$92@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#33|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@32!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#33| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#33| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#33| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000002)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$95@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#34|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@33!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#34| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#34| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#34| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000003)
            (fp #b0 #x98 #b00000000000000000000000))
     |c::main::$tmp::tmp$98@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#35|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@34!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#35| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#35| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#35| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 #x02000004)
            (fp #b0 #x98 #b00000000000000000000001))
     |c::main::$tmp::tmp$101@1!0&0#1|)))
(assert (= (bvneg #x02000000) |c::main::castWithRounding::value@35!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#36|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@35!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#36| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#36| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#36| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@35!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$103@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$103@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$104@1!0&0#1|))
(assert (= (bvneg #x02000001) |c::main::castWithRounding::value@36!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#37|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@36!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#37| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#37| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#37| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@36!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$106@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$106@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$107@1!0&0#1|))
(assert (= (bvneg #x02000002) |c::main::castWithRounding::value@37!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#38|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@37!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#38| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#38| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#38| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@37!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$109@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$109@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$110@1!0&0#1|))
(assert (= (bvneg #x02000003) |c::main::castWithRounding::value@38!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#39|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@38!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#39| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#39| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#39| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@38!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$112@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$112@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000000)))
   |c::main::$tmp::tmp$113@1!0&0#1|))
(assert (= (bvneg #x02000004) |c::main::castWithRounding::value@39!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#40|)))
(assert (= (= #x00000000 #x00000000) |c::castWithRounding::$tmp::tmp$2@39!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#40| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#40| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#40| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::castWithRounding::value@39!0&0#1|)
     |c::main::$tmp::return_value_castWithRounding$115@1!0&0#1|)))
(assert (= (fp.eq |c::main::$tmp::return_value_castWithRounding$115@1!0&0#1|
          (fp.neg (fp #b0 #x98 #b00000000000000000000001)))
   |c::main::$tmp::tmp$116@1!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::castWithRounding::$tmp::tmp$2@1!0&0#1|) false))))
      (a!2 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$2@1!0&0#1|) false))))
      (a!3 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::castWithRounding::$tmp::tmp$2@2!0&0#1|) false))))
      (a!4 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$5@1!0&0#1|) false))))
      (a!5 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::castWithRounding::$tmp::tmp$2@3!0&0#1|) false))))
      (a!6 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$8@1!0&0#1|) false))))
      (a!7 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::castWithRounding::$tmp::tmp$2@4!0&0#1|) false))))
      (a!8 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$11@1!0&0#1|) false))))
      (a!9 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::castWithRounding::$tmp::tmp$2@5!0&0#1|) false))))
      (a!10 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$14@1!0&0#1|) false))))
      (a!11 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@6!0&0#1|) false))))
      (a!12 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$17@1!0&0#1|) false))))
      (a!13 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@7!0&0#1|) false))))
      (a!14 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$20@1!0&0#1|) false))))
      (a!15 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@8!0&0#1|) false))))
      (a!16 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$23@1!0&0#1|) false))))
      (a!17 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@9!0&0#1|) false))))
      (a!18 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$26@1!0&0#1|) false))))
      (a!19 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@10!0&0#1|) false))))
      (a!20 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$29@1!0&0#1|) false))))
      (a!21 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@11!0&0#1|) false))))
      (a!22 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$32@1!0&0#1|) false))))
      (a!23 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@12!0&0#1|) false))))
      (a!24 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$35@1!0&0#1|) false))))
      (a!25 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@13!0&0#1|) false))))
      (a!26 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$38@1!0&0#1|) false))))
      (a!27 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@14!0&0#1|) false))))
      (a!28 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$41@1!0&0#1|) false))))
      (a!29 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@15!0&0#1|) false))))
      (a!30 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$44@1!0&0#1|) false))))
      (a!31 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@16!0&0#1|) false))))
      (a!32 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$47@1!0&0#1|) false))))
      (a!33 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@17!0&0#1|) false))))
      (a!34 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$50@1!0&0#1|) false))))
      (a!35 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@18!0&0#1|) false))))
      (a!36 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$53@1!0&0#1|) false))))
      (a!37 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@19!0&0#1|) false))))
      (a!38 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$56@1!0&0#1|) false))))
      (a!39 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@20!0&0#1|) false))))
      (a!40 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$59@1!0&0#1|) false))))
      (a!41 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@21!0&0#1|) false))))
      (a!42 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$62@1!0&0#1|) false))))
      (a!43 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@22!0&0#1|) false))))
      (a!44 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$65@1!0&0#1|) false))))
      (a!45 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@23!0&0#1|) false))))
      (a!46 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$68@1!0&0#1|) false))))
      (a!47 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@24!0&0#1|) false))))
      (a!48 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$71@1!0&0#1|) false))))
      (a!49 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@25!0&0#1|) false))))
      (a!50 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$74@1!0&0#1|) false))))
      (a!51 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@26!0&0#1|) false))))
      (a!52 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$77@1!0&0#1|) false))))
      (a!53 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@27!0&0#1|) false))))
      (a!54 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$80@1!0&0#1|) false))))
      (a!55 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@28!0&0#1|) false))))
      (a!56 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$83@1!0&0#1|) false))))
      (a!57 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@29!0&0#1|) false))))
      (a!58 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$86@1!0&0#1|) false))))
      (a!59 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@30!0&0#1|) false))))
      (a!60 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$89@1!0&0#1|) false))))
      (a!61 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@31!0&0#1|) false))))
      (a!62 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$92@1!0&0#1|) false))))
      (a!63 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@32!0&0#1|) false))))
      (a!64 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$95@1!0&0#1|) false))))
      (a!65 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@33!0&0#1|) false))))
      (a!66 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$98@1!0&0#1|) false))))
      (a!67 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@34!0&0#1|) false))))
      (a!68 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$101@1!0&0#1|) false))))
      (a!69 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@35!0&0#1|) false))))
      (a!70 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$104@1!0&0#1|) false))))
      (a!71 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@36!0&0#1|) false))))
      (a!72 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$107@1!0&0#1|) false))))
      (a!73 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@37!0&0#1|) false))))
      (a!74 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$110@1!0&0#1|) false))))
      (a!75 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@38!0&0#1|) false))))
      (a!76 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$113@1!0&0#1|) false))))
      (a!77 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::castWithRounding::$tmp::tmp$2@39!0&0#1|) false))))
      (a!78 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::main::$tmp::tmp$116@1!0&0#1|) false)))))
  (or (not a!1)
      (not a!2)
      (not a!3)
      (not a!4)
      (not a!5)
      (not a!6)
      (not a!7)
      (not a!8)
      (not a!9)
      (not a!10)
      (not a!11)
      (not a!12)
      (not a!13)
      (not a!14)
      (not a!15)
      (not a!16)
      (not a!17)
      (not a!18)
      (not a!19)
      (not a!20)
      (not a!21)
      (not a!22)
      (not a!23)
      (not a!24)
      (not a!25)
      (not a!26)
      (not a!27)
      (not a!28)
      (not a!29)
      (not a!30)
      (not a!31)
      (not a!32)
      (not a!33)
      (not a!34)
      (not a!35)
      (not a!36)
      (not a!37)
      (not a!38)
      (not a!39)
      (not a!40)
      (not a!41)
      (not a!42)
      (not a!43)
      (not a!44)
      (not a!45)
      (not a!46)
      (not a!47)
      (not a!48)
      (not a!49)
      (not a!50)
      (not a!51)
      (not a!52)
      (not a!53)
      (not a!54)
      (not a!55)
      (not a!56)
      (not a!57)
      (not a!58)
      (not a!59)
      (not a!60)
      (not a!61)
      (not a!62)
      (not a!63)
      (not a!64)
      (not a!65)
      (not a!66)
      (not a!67)
      (not a!68)
      (not a!69)
      (not a!70)
      (not a!71)
      (not a!72)
      (not a!73)
      (not a!74)
      (not a!75)
      (not a!76)
      (not a!77)
      (not a!78))))

(check-sat)
(exit)
