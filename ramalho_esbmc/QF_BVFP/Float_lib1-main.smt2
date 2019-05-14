(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::math::__fpclassifyf::f@1!0&0#1| () (_ FloatingPoint 8 24))
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
(declare-fun |c::math::__fpclassify::d@1!0&0#1| () (_ FloatingPoint 11 53))
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
(declare-fun |c::math::__fpclassifyl::f@1!0&0#1| () (_ FloatingPoint 11 53))
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
(declare-fun |c::main::$tmp::tmp$22@1!0&0#1| () Bool)
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
(declare-fun |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$27@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$29@1!0&0#1| () Bool)
(declare-fun |c::math::__fpclassifyf::f@5!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$30@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$30@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$30@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$31@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#9| () Bool)
(declare-fun |c::math::__fpclassify::d@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassify$32@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$32@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$32@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#10| () Bool)
(declare-fun |c::math::__fpclassifyl::f@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$33@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$33@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$33@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$34@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$36@1!0&0#1| () Bool)
(declare-fun |c::math::__fpclassifyf::f@6!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$37@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$37@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyf$37@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$38@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#11| () Bool)
(declare-fun |c::math::__fpclassify::d@6!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassify$39@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$39@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassify$39@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#12| () Bool)
(declare-fun |c::math::__fpclassifyl::f@6!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$40@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$40@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___fpclassifyl$40@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$41@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$43@1!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value___signbitf$44@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$44@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$44@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$45@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#13| () Bool)
(declare-fun |c::math::__signbit::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___signbit$46@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$46@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$46@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#14| () Bool)
(declare-fun |c::math::__signbitl::ld@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___signbitl$47@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$47@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$47@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$48@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$50@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value___signbitf$51@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$51@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$51@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$52@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#15| () Bool)
(declare-fun |c::main::$tmp::return_value___signbit$53@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$53@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$53@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#16| () Bool)
(declare-fun |c::main::$tmp::return_value___signbitl$54@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$54@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$54@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$55@1!0&0#1| () Bool)
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$1@1!0&0#1|))
(assert (= ((_ to_fp 8 24)
     roundNearestTiesToEven
     (fp.add roundNearestTiesToEven
             (fp #b0 #b11111111110 #xfffffffffffff)
             (fp #b0 #b11111111110 #xfffffffffffff)))
   |c::math::__fpclassifyf::f@1!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyf::f@1!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyf::f@1!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyf::f@1!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyf::f@1!0&0#1|
                            (fp #b0 #x00 #b00000000000000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$1@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$3@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$1@1!0&0#1|)
                          |c::main::$tmp::tmp$3@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#1|)))
(assert (= (fp.add roundNearestTiesToEven
           (fp #b0 #b11111111110 #xfffffffffffff)
           (fp #b0 #b11111111110 #xfffffffffffff))
   |c::math::__fpclassify::d@1!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassify::d@1!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassify::d@1!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassify::d@1!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassify::d@1!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassify$4@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#1|)
        |c::main::$tmp::return_value___fpclassify$4@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$4@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$4@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$1@1!0&0#1|)
                          (not |c::main::$tmp::tmp$3@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#2|)))
(assert (= (fp.add roundNearestTiesToEven
           (fp #b0 #b11111111110 #xfffffffffffff)
           (fp #b0 #b11111111110 #xfffffffffffff))
   |c::math::__fpclassifyl::f@1!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyl::f@1!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyl::f@1!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyl::f@1!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyl::f@1!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#2|)
        |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#2|))
(assert (= (= (ite |c::main::$tmp::tmp$1@1!0&0#1|
           |c::main::$tmp::return_value___fpclassifyf$2@1!0&0#2|
           (ite |c::main::$tmp::tmp$3@1!0&0#1|
                |c::main::$tmp::return_value___fpclassify$4@1!0&0#2|
                |c::main::$tmp::return_value___fpclassifyl$5@1!0&0#2|))
      #x00000001)
   |c::main::$tmp::tmp$6@1!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$8@1!0&0#1|))
(assert (let ((a!1 ((_ to_fp 8 24)
             roundNearestTiesToEven
             (fp.mul roundNearestTiesToEven
                     (fp #b0 #b00000000000 #x0000000000000)
                     (fp.add roundNearestTiesToEven
                             (fp #b0 #b11111111110 #xfffffffffffff)
                             (fp #b0 #b11111111110 #xfffffffffffff))))))
  (= a!1 |c::math::__fpclassifyf::f@2!0&0#1|)))
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
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$10@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$8@1!0&0#1|)
                          |c::main::$tmp::tmp$10@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#3|)))
(assert (= (fp.mul roundNearestTiesToEven
           (fp #b0 #b00000000000 #x0000000000000)
           (fp.add roundNearestTiesToEven
                   (fp #b0 #b11111111110 #xfffffffffffff)
                   (fp #b0 #b11111111110 #xfffffffffffff)))
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
(assert (= (fp.mul roundNearestTiesToEven
           (fp #b0 #b00000000000 #x0000000000000)
           (fp.add roundNearestTiesToEven
                   (fp #b0 #b11111111110 #xfffffffffffff)
                   (fp #b0 #b11111111110 #xfffffffffffff)))
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
(assert (= (= (ite |c::main::$tmp::tmp$8@1!0&0#1|
           |c::main::$tmp::return_value___fpclassifyf$9@1!0&0#2|
           (ite |c::main::$tmp::tmp$10@1!0&0#1|
                |c::main::$tmp::return_value___fpclassify$11@1!0&0#2|
                |c::main::$tmp::return_value___fpclassifyl$12@1!0&0#2|))
      #x00000000)
   |c::main::$tmp::tmp$13@1!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$15@1!0&0#1|))
(assert (let ((a!1 (= (ite (fp.isNaN (fp #b0 #x7f #b00000000000000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!2 (= (ite (fp.isInfinite (fp #b0 #x7f #b00000000000000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!3 (= (ite (fp.isNormal (fp #b0 #x7f #b00000000000000000000000))
                   #x00000001
                   #x00000000)
              #x00000000)))
(let ((a!4 (ite (not a!2)
                #x00000001
                (ite (fp.eq (fp #b0 #x7f #b00000000000000000000000)
                            (fp #b0 #x00 #b00000000000000000000000))
                     #x00000002
                     (ite (not a!3) #x00000004 #x00000003)))))
  (= (ite (not a!1) #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$15@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$16@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$17@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$15@1!0&0#1|)
                          |c::main::$tmp::tmp$17@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#5|)))
(assert (let ((a!1 (= (ite (fp.isNaN (fp #b0 #b01111111111 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!2 (= (ite (fp.isInfinite (fp #b0 #b01111111111 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!3 (= (ite (fp.isNormal (fp #b0 #b01111111111 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000)))
(let ((a!4 (ite (not a!2)
                #x00000001
                (ite (fp.eq (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite (not a!3) #x00000004 #x00000003)))))
  (= (ite (not a!1) #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassify$18@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#5|)
        |c::main::$tmp::return_value___fpclassify$18@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$18@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$18@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$15@1!0&0#1|)
                          (not |c::main::$tmp::tmp$17@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#6|)))
(assert (let ((a!1 (= (ite (fp.isNaN (fp #b0 #b01111111111 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!2 (= (ite (fp.isInfinite (fp #b0 #b01111111111 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!3 (= (ite (fp.isNormal (fp #b0 #b01111111111 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000)))
(let ((a!4 (ite (not a!2)
                #x00000001
                (ite (fp.eq (fp #b0 #b01111111111 #x0000000000000)
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite (not a!3) #x00000004 #x00000003)))))
  (= (ite (not a!1) #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyl$19@1!0&0#1|))))
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
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$22@1!0&0#1|))
(assert (let ((a!1 (= (ite (fp.isNaN (fp #b0 #x00 #b00000000000000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!2 (= (ite (fp.isInfinite (fp #b0 #x00 #b00000000000000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!3 (= (ite (fp.isNormal (fp #b0 #x00 #b00000000000000000000000))
                   #x00000001
                   #x00000000)
              #x00000000)))
(let ((a!4 (ite (not a!2)
                #x00000001
                (ite (fp.eq (fp #b0 #x00 #b00000000000000000000000)
                            (fp #b0 #x00 #b00000000000000000000000))
                     #x00000002
                     (ite (not a!3) #x00000004 #x00000003)))))
  (= (ite (not a!1) #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$22@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$24@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$22@1!0&0#1|)
                          |c::main::$tmp::tmp$24@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#7|)))
(assert (let ((a!1 (= (ite (fp.isNaN (fp #b0 #b00000000001 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!2 (= (ite (fp.isInfinite (fp #b0 #b00000000001 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!3 (= (ite (fp.isNormal (fp #b0 #b00000000001 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000)))
(let ((a!4 (ite (not a!2)
                #x00000001
                (ite (fp.eq (fp #b0 #b00000000001 #x0000000000000)
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite (not a!3) #x00000004 #x00000003)))))
  (= (ite (not a!1) #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassify$25@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#7|)
        |c::main::$tmp::return_value___fpclassify$25@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$25@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$25@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$22@1!0&0#1|)
                          (not |c::main::$tmp::tmp$24@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#8|)))
(assert (let ((a!1 (= (ite (fp.isNaN (fp #b0 #b00000000001 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!2 (= (ite (fp.isInfinite (fp #b0 #b00000000001 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000))
      (a!3 (= (ite (fp.isNormal (fp #b0 #b00000000001 #x0000000000000))
                   #x00000001
                   #x00000000)
              #x00000000)))
(let ((a!4 (ite (not a!2)
                #x00000001
                (ite (fp.eq (fp #b0 #b00000000001 #x0000000000000)
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite (not a!3) #x00000004 #x00000003)))))
  (= (ite (not a!1) #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#8|)
        |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#2|))
(assert (= (= (ite |c::main::$tmp::tmp$22@1!0&0#1|
           |c::main::$tmp::return_value___fpclassifyf$23@1!0&0#2|
           (ite |c::main::$tmp::tmp$24@1!0&0#1|
                |c::main::$tmp::return_value___fpclassify$25@1!0&0#2|
                |c::main::$tmp::return_value___fpclassifyl$26@1!0&0#2|))
      #x00000004)
   |c::main::$tmp::tmp$27@1!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$29@1!0&0#1|))
(assert (= ((_ to_fp 8 24)
     roundNearestTiesToEven
     (fp.div roundNearestTiesToEven
             (fp #b0 #b00000000001 #x0000000000000)
             (fp #b0 #b10000000000 #x0000000000000)))
   |c::math::__fpclassifyf::f@5!0&0#1|))
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
     |c::main::$tmp::return_value___fpclassifyf$30@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$29@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$30@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$30@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$30@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$31@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$29@1!0&0#1|)
                          |c::main::$tmp::tmp$31@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#9|)))
(assert (= (fp.div roundNearestTiesToEven
           (fp #b0 #b00000000001 #x0000000000000)
           (fp #b0 #b10000000000 #x0000000000000))
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
     |c::main::$tmp::return_value___fpclassify$32@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#9|)
        |c::main::$tmp::return_value___fpclassify$32@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$32@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$32@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$29@1!0&0#1|)
                          (not |c::main::$tmp::tmp$31@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#10|)))
(assert (= (fp.div roundNearestTiesToEven
           (fp #b0 #b00000000001 #x0000000000000)
           (fp #b0 #b10000000000 #x0000000000000))
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
     |c::main::$tmp::return_value___fpclassifyl$33@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#10|)
        |c::main::$tmp::return_value___fpclassifyl$33@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyl$33@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyl$33@1!0&0#2|))
(assert (= (= (ite |c::main::$tmp::tmp$29@1!0&0#1|
           |c::main::$tmp::return_value___fpclassifyf$30@1!0&0#2|
           (ite |c::main::$tmp::tmp$31@1!0&0#1|
                |c::main::$tmp::return_value___fpclassify$32@1!0&0#2|
                |c::main::$tmp::return_value___fpclassifyl$33@1!0&0#2|))
      #x00000003)
   |c::main::$tmp::tmp$34@1!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$36@1!0&0#1|))
(assert (= ((_ to_fp 8 24)
     roundNearestTiesToEven
     (fp.neg (fp #b0 #b00000000000 #x0000000000000)))
   |c::math::__fpclassifyf::f@6!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyf::f@6!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyf::f@6!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyf::f@6!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyf::f@6!0&0#1|
                            (fp #b0 #x00 #b00000000000000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyf$37@1!0&0#1|))))
(assert (= (ite (not |c::main::$tmp::tmp$36@1!0&0#1|)
        |c::main::$tmp::return_value___fpclassifyf$37@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyf$37@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyf$37@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$38@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$36@1!0&0#1|)
                          |c::main::$tmp::tmp$38@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#11|)))
(assert (= (fp.neg (fp #b0 #b00000000000 #x0000000000000))
   |c::math::__fpclassify::d@6!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassify::d@6!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassify::d@6!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassify::d@6!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassify::d@6!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassify$39@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#11|)
        |c::main::$tmp::return_value___fpclassify$39@1!0&0#0|
        |c::main::$tmp::return_value___fpclassify$39@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassify$39@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$36@1!0&0#1|)
                          (not |c::main::$tmp::tmp$38@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#12|)))
(assert (= (fp.neg (fp #b0 #b00000000000 #x0000000000000))
   |c::math::__fpclassifyl::f@6!0&0#1|))
(assert (let ((a!1 (not (= (ite (fp.isNaN |c::math::__fpclassifyl::f@6!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!2 (not (= (ite (fp.isInfinite |c::math::__fpclassifyl::f@6!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000)))
      (a!3 (not (= (ite (fp.isNormal |c::math::__fpclassifyl::f@6!0&0#1|)
                        #x00000001
                        #x00000000)
                   #x00000000))))
(let ((a!4 (ite a!2
                #x00000001
                (ite (fp.eq |c::math::__fpclassifyl::f@6!0&0#1|
                            (fp #b0 #b00000000000 #x0000000000000))
                     #x00000002
                     (ite a!3 #x00000004 #x00000003)))))
  (= (ite a!1 #x00000000 a!4)
     |c::main::$tmp::return_value___fpclassifyl$40@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#12|)
        |c::main::$tmp::return_value___fpclassifyl$40@1!0&0#0|
        |c::main::$tmp::return_value___fpclassifyl$40@1!0&0#1|)
   |c::main::$tmp::return_value___fpclassifyl$40@1!0&0#2|))
(assert (= (= (ite |c::main::$tmp::tmp$36@1!0&0#1|
           |c::main::$tmp::return_value___fpclassifyf$37@1!0&0#2|
           (ite |c::main::$tmp::tmp$38@1!0&0#1|
                |c::main::$tmp::return_value___fpclassify$39@1!0&0#2|
                |c::main::$tmp::return_value___fpclassifyl$40@1!0&0#2|))
      #x00000002)
   |c::main::$tmp::tmp$41@1!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$43@1!0&0#1|))
(assert (= ((_ to_fp 8 24)
     roundNearestTiesToEven
     (fp.neg (fp #b0 #b01111111111 #x0000000000000)))
   |c::math::__signbitf::f@1!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___signbitf$44@1!0&0#1|))
(assert (= (ite (not |c::main::$tmp::tmp$43@1!0&0#1|)
        |c::main::$tmp::return_value___signbitf$44@1!0&0#0|
        |c::main::$tmp::return_value___signbitf$44@1!0&0#1|)
   |c::main::$tmp::return_value___signbitf$44@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$45@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$43@1!0&0#1|)
                          |c::main::$tmp::tmp$45@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#13|)))
(assert (= (fp.neg (fp #b0 #b01111111111 #x0000000000000))
   |c::math::__signbit::d@1!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___signbit$46@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#13|)
        |c::main::$tmp::return_value___signbit$46@1!0&0#0|
        |c::main::$tmp::return_value___signbit$46@1!0&0#1|)
   |c::main::$tmp::return_value___signbit$46@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$43@1!0&0#1|)
                          (not |c::main::$tmp::tmp$45@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#14|)))
(assert (= (fp.neg (fp #b0 #b01111111111 #x0000000000000))
   |c::math::__signbitl::ld@1!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___signbitl$47@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#14|)
        |c::main::$tmp::return_value___signbitl$47@1!0&0#0|
        |c::main::$tmp::return_value___signbitl$47@1!0&0#1|)
   |c::main::$tmp::return_value___signbitl$47@1!0&0#2|))
(assert (let ((a!1 (not (= (ite |c::main::$tmp::tmp$43@1!0&0#1|
                        |c::main::$tmp::return_value___signbitf$44@1!0&0#2|
                        (ite |c::main::$tmp::tmp$45@1!0&0#1|
                             |c::main::$tmp::return_value___signbit$46@1!0&0#2|
                             |c::main::$tmp::return_value___signbitl$47@1!0&0#2|))
                   #x00000000))))
  (= a!1 |c::main::$tmp::tmp$48@1!0&0#1|)))
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$50@1!0&0#1|))
(assert (= (ite (fp.isNegative (fp #b0 #x7f #b00000000000000000000000))
        #x00000001
        #x00000000)
   |c::main::$tmp::return_value___signbitf$51@1!0&0#1|))
(assert (= (ite (not |c::main::$tmp::tmp$50@1!0&0#1|)
        |c::main::$tmp::return_value___signbitf$51@1!0&0#0|
        |c::main::$tmp::return_value___signbitf$51@1!0&0#1|)
   |c::main::$tmp::return_value___signbitf$51@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$52@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$50@1!0&0#1|)
                          |c::main::$tmp::tmp$52@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#15|)))
(assert (= (ite (fp.isNegative (fp #b0 #b01111111111 #x0000000000000))
        #x00000001
        #x00000000)
   |c::main::$tmp::return_value___signbit$53@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#15|)
        |c::main::$tmp::return_value___signbit$53@1!0&0#0|
        |c::main::$tmp::return_value___signbit$53@1!0&0#1|)
   |c::main::$tmp::return_value___signbit$53@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$50@1!0&0#1|)
                          (not |c::main::$tmp::tmp$52@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#16|)))
(assert (= (ite (fp.isNegative (fp #b0 #b01111111111 #x0000000000000))
        #x00000001
        #x00000000)
   |c::main::$tmp::return_value___signbitl$54@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#16|)
        |c::main::$tmp::return_value___signbitl$54@1!0&0#0|
        |c::main::$tmp::return_value___signbitl$54@1!0&0#1|)
   |c::main::$tmp::return_value___signbitl$54@1!0&0#2|))
(assert (= (= (ite |c::main::$tmp::tmp$50@1!0&0#1|
           |c::main::$tmp::return_value___signbitf$51@1!0&0#2|
           (ite |c::main::$tmp::tmp$52@1!0&0#1|
                |c::main::$tmp::return_value___signbit$53@1!0&0#2|
                |c::main::$tmp::return_value___signbitl$54@1!0&0#2|))
      #x00000000)
   |c::main::$tmp::tmp$55@1!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$6@1!0&0#1|) false))))
      (a!2 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$13@1!0&0#1|) false))))
      (a!3 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$20@1!0&0#1|) false))))
      (a!4 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$27@1!0&0#1|) false))))
      (a!5 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$34@1!0&0#1|) false))))
      (a!6 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$41@1!0&0#1|) false))))
      (a!7 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$48@1!0&0#1|) false))))
      (a!8 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$55@1!0&0#1|) false)))))
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
