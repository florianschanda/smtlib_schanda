(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$3@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value___fpclassify$4@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$4@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$4@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#2| () Bool)
(declare-fun |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$6@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |nondet$symex::nondet0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$8@1!0&0#1| () Bool)
(declare-fun |c::math::__fpclassifyf::f@2!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$10@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#3| () Bool)
(declare-fun |c::math::__fpclassify::d@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassify$11@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$11@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$11@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#4| () Bool)
(declare-fun |c::math::__fpclassifyl::f@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$13@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$15@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$17@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#5| () Bool)
(declare-fun |c::main::$tmp::return_value___fpclassify$18@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$18@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$18@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#6| () Bool)
(declare-fun |c::main::$tmp::return_value___fpclassifyl$19@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$19@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$19@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$20@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::f@1!0&0#2| () (_ FloatingPoint 8 24))
(declare-fun |nondet$symex::nondet1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$22@1!0&0#1| () Bool)
(declare-fun |c::math::__fpclassifyf::f@4!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$24@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#7| () Bool)
(declare-fun |c::math::__fpclassify::d@4!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassify$25@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$25@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$25@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#8| () Bool)
(declare-fun |c::math::__fpclassifyl::f@4!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::math::fabs::x@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_fabs$27@1!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::tmp$28@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$30@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$32@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$34@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$36@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$38@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$40@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$42@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$44@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::f@1!0&0#3| () (_ FloatingPoint 8 24))
(declare-fun |nondet$symex::nondet2| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$46@1!0&0#1| () Bool)
(declare-fun |c::math::__fpclassifyf::f@5!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$47@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$47@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$47@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$48@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#9| () Bool)
(declare-fun |c::math::__fpclassify::d@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassify$49@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$49@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$49@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#10| () Bool)
(declare-fun |c::math::__fpclassifyl::f@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$50@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$50@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$50@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$51@1!0&0#1| () Bool)
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= (= #x00000004 #x00000004) |c::main::$tmp::tmp$1@1!0&0#1|))
(assert (let ((a!1 (= (ite (fp.isNaN (fp #b0 #x00 #b11111111111111111111111))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!2 (= (ite (fp.isInfinite (fp #b0 #x00 #b11111111111111111111111))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!3 (= (ite (fp.isNormal (fp #b0 #x00 #b11111111111111111111111))
                   #x00000001
                   #x00000000)
              #x00000000)))
(let ((a!4 (ite (not a!2)
                #x00000001
                (ite (fp.eq (fp #b0 #x00 #b11111111111111111111111)
                            (fp #b0 #x00 #b00000000000000000000000))
                     #x00000002
                     (ite (not a!3) #x00000004 #x00000003)))))
  (= (ite (not a!1) #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$1@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::main::$tmp::tmp$3@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$1@1!0&0#1|)
                          |c::main::$tmp::tmp$3@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#1|)))
(assert (let ((a!1 (ite (fp.isNaN ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (fp #b0 #x00 #b11111111111111111111111)))
                #x00000001
                #x00000000))
      (a!2 (ite (fp.isInfinite ((_ to_fp 11 53)
                                 roundNearestTiesToEven
                                 (fp #b0 #x00 #b11111111111111111111111)))
                #x00000001
                #x00000000))
      (a!3 (ite (fp.isNormal ((_ to_fp 11 53)
                               roundNearestTiesToEven
                               (fp #b0 #x00 #b11111111111111111111111)))
                #x00000001
                #x00000000)))
(let ((a!4 (ite (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         (fp #b0 #x00 #b11111111111111111111111))
                       (fp #b0 #b00000000000 #x0000000000000))
                #x00000002
                (ite (not (= a!3 #x00000000)) #x00000004 #x00000003))))
(let ((a!5 (ite (not (= a!1 #x00000000))
                #x00000000
                (ite (not (= a!2 #x00000000)) #x00000001 a!4))))
  (= a!5 |c::main::$tmp::return_value___fpclassify$4@1!0&0#1|)))))
(assert (= (ite (not |goto_symex::guard@0!0&0#1|)
        |c::main::$tmp::return_value___fpclassify$4@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$4@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$4@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$1@1!0&0#1|)
                          (not |c::main::$tmp::tmp$3@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#2|)))
(assert (let ((a!1 (ite (fp.isNaN ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (fp #b0 #x00 #b11111111111111111111111)))
                #x00000001
                #x00000000))
      (a!2 (ite (fp.isInfinite ((_ to_fp 11 53)
                                 roundNearestTiesToEven
                                 (fp #b0 #x00 #b11111111111111111111111)))
                #x00000001
                #x00000000))
      (a!3 (ite (fp.isNormal ((_ to_fp 11 53)
                               roundNearestTiesToEven
                               (fp #b0 #x00 #b11111111111111111111111)))
                #x00000001
                #x00000000)))
(let ((a!4 (ite (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         (fp #b0 #x00 #b11111111111111111111111))
                       (fp #b0 #b00000000000 #x0000000000000))
                #x00000002
                (ite (not (= a!3 #x00000000)) #x00000004 #x00000003))))
(let ((a!5 (ite (not (= a!1 #x00000000))
                #x00000000
                (ite (not (= a!2 #x00000000)) #x00000001 a!4))))
  (= a!5 |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#1|)))))
(assert (= (ite (not |goto_symex::guard@0!0&0#2|)
        |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#2|))
(assert (= (= (ite |c::main::$tmp::tmp$1@1!0&0#1|
           |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#2|
           (ite |c::main::$tmp::tmp$3@1!0&0#1|
                |c::main::$tmp::return_value___fpclassify$4@1!0&0#2|
                |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#2|))
      #x00000003)
   |c::main::$tmp::tmp$6@1!0&0#1|))
(assert (= |nondet$symex::nondet0| |c::main::main::1::f@1!0&0#1|))
(assert (= (= #x00000004 #x00000004) |c::main::$tmp::tmp$8@1!0&0#1|))
(assert (= |c::main::main::1::f@1!0&0#1| |c::math::__fpclassifyf::f@2!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyf::f@2!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyf::f@2!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyf::f@2!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyf::f@2!0&0#1|
                            (fp #b0 #x00 #b00000000000000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$8@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::main::$tmp::tmp$10@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$8@1!0&0#1|)
                          |c::main::$tmp::tmp$10@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#3|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#1|)
   |c::math::__fpclassify::d@2!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassify::d@2!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassify::d@2!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassify::d@2!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassify::d@2!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassify$11@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#3|)
        |c::main::$tmp::return_value___fpclassify$11@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$11@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$11@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$8@1!0&0#1|)
                          (not |c::main::$tmp::tmp$10@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#4|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#1|)
   |c::math::__fpclassifyl::f@2!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyl::f@2!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyl::f@2!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyl::f@2!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyl::f@2!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#4|)
        |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#2|))
(assert (= (fp.leq |c::main::main::1::f@1!0&0#1|
           (fp #b0 #x00 #b11111111111111111111111))
   |c::main::$tmp::tmp$13@1!0&0#1|))
(assert (= (= #x00000004 #x00000004) |c::main::$tmp::tmp$15@1!0&0#1|))
(assert (let ((a!1 (= (ite (fp.isNaN (fp #b0 #x01 #b00000000000000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!2 (= (ite (fp.isInfinite (fp #b0 #x01 #b00000000000000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!3 (= (ite (fp.isNormal (fp #b0 #x01 #b00000000000000000000000))
                   #x00000001
                   #x00000000)
              #x00000000)))
(let ((a!4 (ite (not a!2)
                #x00000001
                (ite (fp.eq (fp #b0 #x01 #b00000000000000000000000)
                            (fp #b0 #x00 #b00000000000000000000000))
                     #x00000002
                     (ite (not a!3) #x00000004 #x00000003)))))
  (= (ite (not a!1) #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$15@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::main::$tmp::tmp$17@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$15@1!0&0#1|)
                          |c::main::$tmp::tmp$17@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#5|)))
(assert (let ((a!1 (ite (fp.isNaN ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (fp #b0 #x01 #b00000000000000000000000)))
                #x00000001
                #x00000000))
      (a!2 (ite (fp.isInfinite ((_ to_fp 11 53)
                                 roundNearestTiesToEven
                                 (fp #b0 #x01 #b00000000000000000000000)))
                #x00000001
                #x00000000))
      (a!3 (ite (fp.isNormal ((_ to_fp 11 53)
                               roundNearestTiesToEven
                               (fp #b0 #x01 #b00000000000000000000000)))
                #x00000001
                #x00000000)))
(let ((a!4 (ite (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         (fp #b0 #x01 #b00000000000000000000000))
                       (fp #b0 #b00000000000 #x0000000000000))
                #x00000002
                (ite (not (= a!3 #x00000000)) #x00000004 #x00000003))))
(let ((a!5 (ite (not (= a!1 #x00000000))
                #x00000000
                (ite (not (= a!2 #x00000000)) #x00000001 a!4))))
  (= a!5 |c::main::$tmp::return_value___fpclassify$18@1!0&0#1|)))))
(assert (= (ite (not |goto_symex::guard@0!0&0#5|)
        |c::main::$tmp::return_value___fpclassify$18@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$18@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$18@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$15@1!0&0#1|)
                          (not |c::main::$tmp::tmp$17@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#6|)))
(assert (let ((a!1 (ite (fp.isNaN ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (fp #b0 #x01 #b00000000000000000000000)))
                #x00000001
                #x00000000))
      (a!2 (ite (fp.isInfinite ((_ to_fp 11 53)
                                 roundNearestTiesToEven
                                 (fp #b0 #x01 #b00000000000000000000000)))
                #x00000001
                #x00000000))
      (a!3 (ite (fp.isNormal ((_ to_fp 11 53)
                               roundNearestTiesToEven
                               (fp #b0 #x01 #b00000000000000000000000)))
                #x00000001
                #x00000000)))
(let ((a!4 (ite (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         (fp #b0 #x01 #b00000000000000000000000))
                       (fp #b0 #b00000000000 #x0000000000000))
                #x00000002
                (ite (not (= a!3 #x00000000)) #x00000004 #x00000003))))
(let ((a!5 (ite (not (= a!1 #x00000000))
                #x00000000
                (ite (not (= a!2 #x00000000)) #x00000001 a!4))))
  (= a!5 |c::main::$tmp::return_value___fpclassifyl$19@1!0&0#1|)))))
(assert (= (ite (not |goto_symex::guard@0!0&0#6|)
        |c::main::$tmp::return_value___fpclassifyl$19@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyl$19@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyl$19@1!0&0#2|))
(assert (= (= (ite |c::main::$tmp::tmp$15@1!0&0#1|
           |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#2|
           (ite |c::main::$tmp::tmp$17@1!0&0#1|
                |c::main::$tmp::return_value___fpclassify$18@1!0&0#2|
                |c::main::$tmp::return_value___fpclassifyl$19@1!0&0#2|))
      #x00000004)
   |c::main::$tmp::tmp$20@1!0&0#1|))
(assert (= |nondet$symex::nondet1| |c::main::main::1::f@1!0&0#2|))
(assert (= (= #x00000004 #x00000004) |c::main::$tmp::tmp$22@1!0&0#1|))
(assert (= |c::main::main::1::f@1!0&0#2| |c::math::__fpclassifyf::f@4!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyf::f@4!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyf::f@4!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyf::f@4!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyf::f@4!0&0#1|
                            (fp #b0 #x00 #b00000000000000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$22@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::main::$tmp::tmp$24@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$22@1!0&0#1|)
                          |c::main::$tmp::tmp$24@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#7|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#2|)
   |c::math::__fpclassify::d@4!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassify::d@4!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassify::d@4!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassify::d@4!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassify::d@4!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassify$25@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#7|)
        |c::main::$tmp::return_value___fpclassify$25@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$25@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$25@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$22@1!0&0#1|)
                          (not |c::main::$tmp::tmp$24@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#8|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#2|)
   |c::math::__fpclassifyl::f@4!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyl::f@4!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyl::f@4!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyl::f@4!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyl::f@4!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#8|)
        |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#2|))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#2|)
   |c::math::fabs::x@1!0&0#1|))
(assert (= (ite (fp.lt |c::math::fabs::x@1!0&0#1|
               (fp #b0 #b00000000000 #x0000000000000))
        (fp.neg |c::math::fabs::x@1!0&0#1|)
        |c::math::fabs::x@1!0&0#1|)
   |c::main::$tmp::return_value_fabs$27@1!0&0#1|))
(assert (= (fp.leq ((_ to_fp 11 53)
             roundNearestTiesToEven
             (fp #b0 #x01 #b00000000000000000000000))
           |c::main::$tmp::return_value_fabs$27@1!0&0#1|)
   |c::main::$tmp::tmp$28@1!0&0#1|))
(assert (= (fp.lt (fp #b0 #x00 #b11111111111111111111111)
          (fp #b0 #x01 #b00000000000000000000000))
   |c::main::$tmp::tmp$30@1!0&0#1|))
(assert (= (fp.lt ((_ to_fp 11 53)
            roundNearestTiesToEven
            (fp #b0 #x00 #b11111111111111111111111))
          ((_ to_fp 11 53)
            roundNearestTiesToEven
            (fp #b0 #x01 #b00000000000000000000000)))
   |c::main::$tmp::tmp$32@1!0&0#1|))
(assert (= (fp.lt ((_ to_fp 11 53)
            roundNearestTiesToEven
            (fp #b0 #x00 #b11111111111111111111111))
          (fp #b0 #b01110000000 #xffffff0000000))
   |c::main::$tmp::tmp$34@1!0&0#1|))
(assert (= (fp.lt (fp #b0 #b01110000000 #xffffff0000000)
          ((_ to_fp 11 53)
            roundNearestTiesToEven
            (fp #b0 #x01 #b00000000000000000000000)))
   |c::main::$tmp::tmp$36@1!0&0#1|))
(assert (let ((a!1 (fp.eq ((_ to_fp 8 24)
                    roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (fp #b0 #x00 #b11111111111111111111111)))
                  (fp #b0 #x00 #b11111111111111111111111))))
  (= a!1 |c::main::$tmp::tmp$38@1!0&0#1|)))
(assert (let ((a!1 (fp.eq ((_ to_fp 8 24)
                    roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (fp #b0 #x01 #b00000000000000000000000)))
                  (fp #b0 #x01 #b00000000000000000000000))))
  (= a!1 |c::main::$tmp::tmp$40@1!0&0#1|)))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (fp #b0 #x01 #b00000000000000000000000))
                           (fp #b0 #b01110000000 #xffffff0000000))
                   (fp.sub roundNearestTiesToEven
                           (fp #b0 #b01110000000 #xffffff0000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (fp #b0 #x00 #b11111111111111111111111))))))
  (= a!1 |c::main::$tmp::tmp$42@1!0&0#1|)))
(assert (= (fp.eq ((_ to_fp 8 24)
            roundNearestTiesToEven
            (fp #b0 #b01110000000 #xffffff0000000))
          (fp #b0 #x01 #b00000000000000000000000))
   |c::main::$tmp::tmp$44@1!0&0#1|))
(assert (= |nondet$symex::nondet2| |c::main::main::1::f@1!0&0#3|))
(assert (= (= #x00000004 #x00000004) |c::main::$tmp::tmp$46@1!0&0#1|))
(assert (= |c::main::main::1::f@1!0&0#3| |c::math::__fpclassifyf::f@5!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyf::f@5!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyf::f@5!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyf::f@5!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyf::f@5!0&0#1|
                            (fp #b0 #x00 #b00000000000000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyf$47@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$46@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$47@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$47@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$47@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::main::$tmp::tmp$48@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$46@1!0&0#1|)
                          |c::main::$tmp::tmp$48@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#9|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#3|)
   |c::math::__fpclassify::d@5!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassify::d@5!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassify::d@5!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassify::d@5!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassify::d@5!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassify$49@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#9|)
        |c::main::$tmp::return_value___fpclassify$49@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$49@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$49@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$46@1!0&0#1|)
                          (not |c::main::$tmp::tmp$48@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#10|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#3|)
   |c::math::__fpclassifyl::f@5!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyl::f@5!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyl::f@5!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyl::f@5!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyl::f@5!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyl$50@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#10|)
        |c::main::$tmp::return_value___fpclassifyl$50@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyl$50@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyl$50@1!0&0#2|))
(assert (= (fp.eq ((_ to_fp 8 24)
            roundNearestTiesToEven
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              |c::main::main::1::f@1!0&0#3|))
          |c::main::main::1::f@1!0&0#3|)
   |c::main::$tmp::tmp$51@1!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$6@1!0&0#1|) false))))
      (a!2 (and true
                (= (ite |c::main::$tmp::tmp$8@1!0&0#1|
                        |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#2|
                        (ite |c::main::$tmp::tmp$10@1!0&0#1|
                             |c::main::$tmp::return_value___fpclassify$11@1!0&0#2|
                             |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#2|))
                   #x00000003)))
      (a!3 (and (= (ite |c::main::$tmp::tmp$8@1!0&0#1|
                        |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#2|
                        (ite |c::main::$tmp::tmp$10@1!0&0#1|
                             |c::main::$tmp::return_value___fpclassify$11@1!0&0#2|
                             |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#2|))
                   #x00000003)
                (not |c::main::$tmp::tmp$13@1!0&0#1|)))
      (a!5 (and (= (ite |c::main::$tmp::tmp$8@1!0&0#1|
                        |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#2|
                        (ite |c::main::$tmp::tmp$10@1!0&0#1|
                             |c::main::$tmp::return_value___fpclassify$11@1!0&0#2|
                             |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#2|))
                   #x00000003)
                (not |c::main::$tmp::tmp$20@1!0&0#1|)))
      (a!7 (=> (= (ite |c::main::$tmp::tmp$8@1!0&0#1|
                       |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#2|
                       (ite |c::main::$tmp::tmp$10@1!0&0#1|
                            |c::main::$tmp::return_value___fpclassify$11@1!0&0#2|
                            |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#2|))
                  #x00000003)
               (= (ite |c::main::$tmp::tmp$22@1!0&0#1|
                       |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#2|
                       (ite |c::main::$tmp::tmp$24@1!0&0#1|
                            |c::main::$tmp::return_value___fpclassify$25@1!0&0#2|
                            |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#2|))
                  #x00000004)))
      (a!8 (and (= (ite |c::main::$tmp::tmp$8@1!0&0#1|
                        |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#2|
                        (ite |c::main::$tmp::tmp$10@1!0&0#1|
                             |c::main::$tmp::return_value___fpclassify$11@1!0&0#2|
                             |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#2|))
                   #x00000003)
                (= (ite |c::main::$tmp::tmp$22@1!0&0#1|
                        |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#2|
                        (ite |c::main::$tmp::tmp$24@1!0&0#1|
                             |c::main::$tmp::return_value___fpclassify$25@1!0&0#2|
                             |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#2|))
                   #x00000004))))
(let ((a!4 (not (=> a!2
                    (=> |execution_statet::__guard_exec@0!0| (=> a!3 false)))))
      (a!6 (not (=> a!2
                    (=> |execution_statet::__guard_exec@0!0| (=> a!5 false)))))
      (a!9 (=> |execution_statet::__guard_exec@0!0|
               (=> (and a!8 (not |c::main::$tmp::tmp$28@1!0&0#1|)) false)))
      (a!10 (=> |execution_statet::__guard_exec@0!0|
                (=> (and a!8 (not |c::main::$tmp::tmp$30@1!0&0#1|)) false)))
      (a!11 (=> |execution_statet::__guard_exec@0!0|
                (=> (and a!8 (not |c::main::$tmp::tmp$32@1!0&0#1|)) false)))
      (a!12 (=> |execution_statet::__guard_exec@0!0|
                (=> (and a!8 (not |c::main::$tmp::tmp$34@1!0&0#1|)) false)))
      (a!13 (=> |execution_statet::__guard_exec@0!0|
                (=> (and a!8 (not |c::main::$tmp::tmp$36@1!0&0#1|)) false)))
      (a!14 (=> |execution_statet::__guard_exec@0!0|
                (=> (and a!8 (not |c::main::$tmp::tmp$38@1!0&0#1|)) false)))
      (a!15 (=> |execution_statet::__guard_exec@0!0|
                (=> (and a!8 (not |c::main::$tmp::tmp$40@1!0&0#1|)) false)))
      (a!16 (=> |execution_statet::__guard_exec@0!0|
                (=> (and a!8 (not |c::main::$tmp::tmp$42@1!0&0#1|)) false)))
      (a!17 (=> |execution_statet::__guard_exec@0!0|
                (=> (and a!8 (not |c::main::$tmp::tmp$44@1!0&0#1|)) false)))
      (a!18 (=> a!8
                (= (ite |c::main::$tmp::tmp$46@1!0&0#1|
                        |c::main::$tmp::return_value___fpclassifyf$47@1!0&0#2|
                        (ite |c::main::$tmp::tmp$48@1!0&0#1|
                             |c::main::$tmp::return_value___fpclassify$49@1!0&0#2|
                             |c::main::$tmp::return_value___fpclassifyl$50@1!0&0#2|))
                   #x00000003)))
      (a!19 (and a!8
                 (= (ite |c::main::$tmp::tmp$46@1!0&0#1|
                         |c::main::$tmp::return_value___fpclassifyf$47@1!0&0#2|
                         (ite |c::main::$tmp::tmp$48@1!0&0#1|
                              |c::main::$tmp::return_value___fpclassify$49@1!0&0#2|
                              |c::main::$tmp::return_value___fpclassifyl$50@1!0&0#2|))
                    #x00000003)
                 (not |c::main::$tmp::tmp$51@1!0&0#1|))))
(let ((a!20 (not (=> (and (and a!2 a!7) a!18)
                     (=> |execution_statet::__guard_exec@0!0| (=> a!19 false))))))
  (or (not a!1)
      a!4
      a!6
      (not (=> (and a!2 a!7) a!9))
      (not (=> (and a!2 a!7) a!10))
      (not (=> (and a!2 a!7) a!11))
      (not (=> (and a!2 a!7) a!12))
      (not (=> (and a!2 a!7) a!13))
      (not (=> (and a!2 a!7) a!14))
      (not (=> (and a!2 a!7) a!15))
      (not (=> (and a!2 a!7) a!16))
      (not (=> (and a!2 a!7) a!17))
      a!20)))))

(check-sat)
(exit)
