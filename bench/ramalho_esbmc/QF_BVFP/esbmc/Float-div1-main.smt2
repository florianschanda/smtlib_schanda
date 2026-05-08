(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::inductiveStepHunt::startState@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::f@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |c::inductiveStepHunt::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::inductiveStepHunt::$tmp::tmp$2@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#1| () Bool)
(declare-fun |c::math::__fpclassifyf::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::inductiveStepHunt::$tmp::return_value___fpclassifyf$3@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::inductiveStepHunt::$tmp::return_value___fpclassifyf$3@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::inductiveStepHunt::$tmp::return_value___fpclassifyf$3@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::inductiveStepHunt::$tmp::tmp$4@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#2| () Bool)
(declare-fun |c::math::__fpclassify::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::inductiveStepHunt::$tmp::return_value___fpclassify$5@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::inductiveStepHunt::$tmp::return_value___fpclassify$5@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::inductiveStepHunt::$tmp::return_value___fpclassify$5@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#3| () Bool)
(declare-fun |c::math::__fpclassifyl::f@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::inductiveStepHunt::$tmp::return_value___fpclassifyl$6@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::inductiveStepHunt::$tmp::return_value___fpclassifyl$6@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::inductiveStepHunt::$tmp::return_value___fpclassifyl$6@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::inductiveStepHunt::1::secondPoint@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::inductiveStepHunt::1::nextState@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::inductiveStepHunt::1::oneAfter@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::inductiveStepHunt::$tmp::tmp$7@1!0&0#1| () Bool)
(declare-fun |c::main::simplifiedInductiveStepHunt::nextState@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::g@1!0&0#0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::simplifiedInductiveStepHunt::1::oneAfter@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::simplifiedInductiveStepHunt::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::simplifiedInductiveStepHunt::$tmp::tmp$3@1!0&0#1| () Bool)
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= |c::main::main::1::f@1!0&0#0|
   |c::main::inductiveStepHunt::startState@1!0&0#1|))
(assert (= (fp.lt (fp #b0 #x00 #b00000000000000000000000)
          |c::main::inductiveStepHunt::startState@1!0&0#1|)
   |c::inductiveStepHunt::$tmp::tmp$1@1!0&0#1|))
(assert (= (= #x00000004 #x00000004) |c::inductiveStepHunt::$tmp::tmp$2@1!0&0#1|))
(assert (let ((a!1 (not (and (fp.lt (fp #b0 #x00 #b00000000000000000000000)
                            |c::main::inductiveStepHunt::startState@1!0&0#1|)
                     |c::inductiveStepHunt::$tmp::tmp$2@1!0&0#1|))))
  (= (not a!1) |goto_symex::guard@0!0&0#1|)))
(assert (= |c::main::inductiveStepHunt::startState@1!0&0#1|
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
     |c::inductiveStepHunt::$tmp::return_value___fpclassifyf$3@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#1|)
        |c::inductiveStepHunt::$tmp::return_value___fpclassifyf$3@1!0&0#0|
        |c::inductiveStepHunt::$tmp::return_value___fpclassifyf$3@1!0&0#1|)
   |c::inductiveStepHunt::$tmp::return_value___fpclassifyf$3@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::inductiveStepHunt::$tmp::tmp$4@1!0&0#1|))
(assert (let ((a!1 (not (and (fp.lt (fp #b0 #x00 #b00000000000000000000000)
                            |c::main::inductiveStepHunt::startState@1!0&0#1|)
                     (not |c::inductiveStepHunt::$tmp::tmp$2@1!0&0#1|)
                     |c::inductiveStepHunt::$tmp::tmp$4@1!0&0#1|))))
  (= (not a!1) |goto_symex::guard@0!0&0#2|)))
(assert (= ((_ to_fp 11 53)
     roundNearestTiesToEven
     |c::main::inductiveStepHunt::startState@1!0&0#1|)
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
     |c::inductiveStepHunt::$tmp::return_value___fpclassify$5@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#2|)
        |c::inductiveStepHunt::$tmp::return_value___fpclassify$5@1!0&0#0|
        |c::inductiveStepHunt::$tmp::return_value___fpclassify$5@1!0&0#1|)
   |c::inductiveStepHunt::$tmp::return_value___fpclassify$5@1!0&0#2|))
(assert (let ((a!1 (not (and (fp.lt (fp #b0 #x00 #b00000000000000000000000)
                            |c::main::inductiveStepHunt::startState@1!0&0#1|)
                     (not |c::inductiveStepHunt::$tmp::tmp$2@1!0&0#1|)
                     (not |c::inductiveStepHunt::$tmp::tmp$4@1!0&0#1|)))))
  (= (not a!1) |goto_symex::guard@0!0&0#3|)))
(assert (= ((_ to_fp 11 53)
     roundNearestTiesToEven
     |c::main::inductiveStepHunt::startState@1!0&0#1|)
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
     |c::inductiveStepHunt::$tmp::return_value___fpclassifyl$6@1!0&0#1|))))
(assert (= (ite (not |goto_symex::guard@0!0&0#3|)
        |c::inductiveStepHunt::$tmp::return_value___fpclassifyl$6@1!0&0#0|
        |c::inductiveStepHunt::$tmp::return_value___fpclassifyl$6@1!0&0#1|)
   |c::inductiveStepHunt::$tmp::return_value___fpclassifyl$6@1!0&0#2|))
(assert (= (fp.div roundNearestTiesToEven
           (fp #b0 #x7c #b11111111111111111111111)
           |c::main::inductiveStepHunt::startState@1!0&0#1|)
   |c::main::inductiveStepHunt::1::secondPoint@1!0&0#1|))
(assert (= (fp.div roundNearestTiesToEven
           (fp.add roundNearestTiesToEven
                   |c::main::inductiveStepHunt::startState@1!0&0#1|
                   |c::main::inductiveStepHunt::1::secondPoint@1!0&0#1|)
           (fp #b0 #x80 #b00000000000000000000000))
   |c::main::inductiveStepHunt::1::nextState@1!0&0#1|))
(assert (= (fp.div roundNearestTiesToEven
           (fp #b0 #x7c #b11111111111111111111111)
           |c::main::inductiveStepHunt::1::nextState@1!0&0#1|)
   |c::main::inductiveStepHunt::1::oneAfter@1!0&0#1|))
(assert (= (fp.gt |c::main::inductiveStepHunt::1::oneAfter@1!0&0#1|
          (fp #b0 #x00 #b00000000000000000000000))
   |c::inductiveStepHunt::$tmp::tmp$7@1!0&0#1|))
(assert (= |c::main::main::1::g@1!0&0#0|
   |c::main::simplifiedInductiveStepHunt::nextState@1!0&0#1|))
(assert (= (fp.div roundNearestTiesToEven
           (fp #b0 #x7c #b11111111111111111111111)
           |c::main::simplifiedInductiveStepHunt::nextState@1!0&0#1|)
   |c::main::simplifiedInductiveStepHunt::1::oneAfter@1!0&0#1|))
(assert (= (fp.eq (fp.div roundNearestTiesToEven
                  (fp #b0 #x7c #b11111111111111111111111)
                  (fp #b0 #xfb #b00000000000000000000000))
          (fp #b0 #x01 #b00000000000000000000000))
   |c::simplifiedInductiveStepHunt::$tmp::tmp$1@1!0&0#1|))
(assert (= (fp.gt |c::main::simplifiedInductiveStepHunt::1::oneAfter@1!0&0#1|
          (fp #b0 #x00 #b00000000000000000000000))
   |c::simplifiedInductiveStepHunt::$tmp::tmp$3@1!0&0#1|))
(assert (let ((a!1 (and |c::inductiveStepHunt::$tmp::tmp$1@1!0&0#1|
                (= (ite |c::inductiveStepHunt::$tmp::tmp$2@1!0&0#1|
                        |c::inductiveStepHunt::$tmp::return_value___fpclassifyf$3@1!0&0#2|
                        (ite |c::inductiveStepHunt::$tmp::tmp$4@1!0&0#1|
                             |c::inductiveStepHunt::$tmp::return_value___fpclassify$5@1!0&0#2|
                             |c::inductiveStepHunt::$tmp::return_value___fpclassifyl$6@1!0&0#2|))
                   #x00000004)
                (fp.leq (fp #b0 #x01 #b00000000000000000000000)
                        |c::main::inductiveStepHunt::startState@1!0&0#1|))))
(let ((a!2 (=> |execution_statet::__guard_exec@0!0|
               (=> (and a!1 (not |c::inductiveStepHunt::$tmp::tmp$7@1!0&0#1|))
                   false)))
      (a!3 (=> a!1
               (and (fp.lt (fp #b0 #xfa #b11111111111111111111111)
                           |c::main::simplifiedInductiveStepHunt::nextState@1!0&0#1|)
                    (fp.lt |c::main::simplifiedInductiveStepHunt::nextState@1!0&0#1|
                           (fp #b0 #xfb #b00000000000000000000001)))))
      (a!4 (and a!1
                (fp.lt (fp #b0 #xfa #b11111111111111111111111)
                       |c::main::simplifiedInductiveStepHunt::nextState@1!0&0#1|)
                (fp.lt |c::main::simplifiedInductiveStepHunt::nextState@1!0&0#1|
                       (fp #b0 #xfb #b00000000000000000000001)))))
(let ((a!5 (=> |execution_statet::__guard_exec@0!0|
               (=> (and a!4
                        (not |c::simplifiedInductiveStepHunt::$tmp::tmp$1@1!0&0#1|))
                   false)))
      (a!7 (=> |execution_statet::__guard_exec@0!0|
               (=> (and a!4
                        (not |c::simplifiedInductiveStepHunt::$tmp::tmp$3@1!0&0#1|))
                   false))))
(let ((a!6 (not (=> (and (and true a!1) a!3) a!5)))
      (a!8 (not (=> (and (and true a!1) a!3) a!7))))
  (or (not (=> (and true a!1) a!2)) a!6 a!8))))))

(check-sat)
(exit)
