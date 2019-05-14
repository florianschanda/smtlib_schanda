(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::d1@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::_d1@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |c::math::isnormal::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isnormal$1@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isnan::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isnan$2@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isinf::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isinf$3@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isfinite::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isfinite$4@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::main::1::d2@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::_d2@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |c::math::isinf::d@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isinf$5@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isnormal::d@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isnormal$6@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isnan::d@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isnan$7@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::main::1::d3@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::_d3@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |c::math::isnan::d@3!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isnan$8@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isnormal::d@3!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isnormal$9@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isinf::d@3!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isinf$10@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::main::1::d4@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::_d4@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |c::math::isfinite::d@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isfinite$11@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isnan::d@4!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isnan$12@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::math::isinf::d@4!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isinf$13@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::main::1::d5@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::_d5@1!0&0#0| () (_ FloatingPoint 11 53))
(declare-fun |c::math::isnan::d@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isnan$14@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$15@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#1| () Bool)
(declare-fun |c::math::isinf::d@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isinf$16@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value_isinf$16@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value_isinf$16@1!0&0#0| () (_ BitVec 32))
(declare-fun |c::math::isfinite::d@3!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value_isfinite$17@1!0&0#1| () (_ BitVec 32))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= |c::main::main::1::_d1@1!0&0#0| |c::main::main::1::d1@1!0&0#1|))
(assert (= |c::main::main::1::d1@1!0&0#1| |c::math::isnormal::d@1!0&0#1|))
(assert (= (ite (fp.isNormal |c::math::isnormal::d@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isnormal$1@1!0&0#1|))
(assert (= |c::main::main::1::d1@1!0&0#1| |c::math::isnan::d@1!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::isnan::d@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isnan$2@1!0&0#1|))
(assert (= |c::main::main::1::d1@1!0&0#1| |c::math::isinf::d@1!0&0#1|))
(assert (= (ite (fp.isInfinite |c::math::isinf::d@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isinf$3@1!0&0#1|))
(assert (= |c::main::main::1::d1@1!0&0#1| |c::math::isfinite::d@1!0&0#1|))
(assert (let ((a!1 (ite (not (or (fp.isInfinite |c::math::isfinite::d@1!0&0#1|)
                         (fp.isNaN |c::math::isfinite::d@1!0&0#1|)))
                #x00000001
                #x00000000)))
  (= a!1 |c::main::$tmp::return_value_isfinite$4@1!0&0#1|)))
(assert (= |c::main::main::1::_d2@1!0&0#0| |c::main::main::1::d2@1!0&0#1|))
(assert (= |c::main::main::1::d2@1!0&0#1| |c::math::isinf::d@2!0&0#1|))
(assert (= (ite (fp.isInfinite |c::math::isinf::d@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isinf$5@1!0&0#1|))
(assert (= |c::main::main::1::d2@1!0&0#1| |c::math::isnormal::d@2!0&0#1|))
(assert (= (ite (fp.isNormal |c::math::isnormal::d@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isnormal$6@1!0&0#1|))
(assert (= |c::main::main::1::d2@1!0&0#1| |c::math::isnan::d@2!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::isnan::d@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isnan$7@1!0&0#1|))
(assert (= |c::main::main::1::_d3@1!0&0#0| |c::main::main::1::d3@1!0&0#1|))
(assert (= |c::main::main::1::d3@1!0&0#1| |c::math::isnan::d@3!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::isnan::d@3!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isnan$8@1!0&0#1|))
(assert (= |c::main::main::1::d3@1!0&0#1| |c::math::isnormal::d@3!0&0#1|))
(assert (= (ite (fp.isNormal |c::math::isnormal::d@3!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isnormal$9@1!0&0#1|))
(assert (= |c::main::main::1::d3@1!0&0#1| |c::math::isinf::d@3!0&0#1|))
(assert (= (ite (fp.isInfinite |c::math::isinf::d@3!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isinf$10@1!0&0#1|))
(assert (= |c::main::main::1::_d4@1!0&0#0| |c::main::main::1::d4@1!0&0#1|))
(assert (= |c::main::main::1::d4@1!0&0#1| |c::math::isfinite::d@2!0&0#1|))
(assert (let ((a!1 (ite (not (or (fp.isInfinite |c::math::isfinite::d@2!0&0#1|)
                         (fp.isNaN |c::math::isfinite::d@2!0&0#1|)))
                #x00000001
                #x00000000)))
  (= a!1 |c::main::$tmp::return_value_isfinite$11@1!0&0#1|)))
(assert (= |c::main::main::1::d4@1!0&0#1| |c::math::isnan::d@4!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::isnan::d@4!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isnan$12@1!0&0#1|))
(assert (= |c::main::main::1::d4@1!0&0#1| |c::math::isinf::d@4!0&0#1|))
(assert (= (ite (fp.isInfinite |c::math::isinf::d@4!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isinf$13@1!0&0#1|))
(assert (= |c::main::main::1::_d5@1!0&0#0| |c::main::main::1::d5@1!0&0#1|))
(assert (= |c::main::main::1::d5@1!0&0#1| |c::math::isnan::d@5!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::isnan::d@5!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isnan$14@1!0&0#1|))
(assert (= (not (not (= |c::main::$tmp::return_value_isnan$14@1!0&0#1| #x00000000)))
   |c::main::$tmp::tmp$15@1!0&0#1|))
(assert (= (not (not (= |c::main::$tmp::return_value_isnan$14@1!0&0#1| #x00000000)))
   |goto_symex::guard@0!0&0#1|))
(assert (= |c::main::main::1::d5@1!0&0#1| |c::math::isinf::d@5!0&0#1|))
(assert (= (ite (fp.isInfinite |c::math::isinf::d@5!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value_isinf$16@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#1|)
        |c::main::$tmp::return_value_isinf$16@1!0&0#0|
        |c::main::$tmp::return_value_isinf$16@1!0&0#1|)
   |c::main::$tmp::return_value_isinf$16@1!0&0#2|))
(assert (= |c::main::main::1::d5@1!0&0#1| |c::math::isfinite::d@3!0&0#1|))
(assert (let ((a!1 (ite (not (or (fp.isInfinite |c::math::isfinite::d@3!0&0#1|)
                         (fp.isNaN |c::math::isfinite::d@3!0&0#1|)))
                #x00000001
                #x00000000)))
  (= a!1 |c::main::$tmp::return_value_isfinite$17@1!0&0#1|)))
(assert (let ((a!1 (=> (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                       #x00000000))
               (not (not (= |c::main::$tmp::return_value_isnan$2@1!0&0#1|
                            #x00000000)))))
      (a!3 (=> (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                       #x00000000))
               (not (not (= |c::main::$tmp::return_value_isinf$3@1!0&0#1|
                            #x00000000)))))
      (a!5 (=> |execution_statet::__guard_exec@0!0|
               (=> (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                           #x00000000))
                   (not (= |c::main::$tmp::return_value_isfinite$4@1!0&0#1|
                           #x00000000)))))
      (a!7 (and (and true
                     (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                             #x00000000)))
                (=> (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                            #x00000000))
                    (not (= |c::main::$tmp::return_value_isinf$5@1!0&0#1|
                            #x00000000)))))
      (a!8 (=> (and (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                            #x00000000))
                    (not (= |c::main::$tmp::return_value_isinf$5@1!0&0#1|
                            #x00000000)))
               (not (not (= |c::main::$tmp::return_value_isnormal$6@1!0&0#1|
                            #x00000000)))))
      (a!9 (=> (and (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                            #x00000000))
                    (not (= |c::main::$tmp::return_value_isinf$5@1!0&0#1|
                            #x00000000)))
               (not (not (= |c::main::$tmp::return_value_isnan$7@1!0&0#1|
                            #x00000000)))))
      (a!10 (=> (and (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                             #x00000000))
                     (not (= |c::main::$tmp::return_value_isinf$5@1!0&0#1|
                             #x00000000)))
                (not (= |c::main::$tmp::return_value_isnan$8@1!0&0#1|
                        #x00000000))))
      (a!11 (and (and (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                              #x00000000))
                      (not (= |c::main::$tmp::return_value_isinf$5@1!0&0#1|
                              #x00000000)))
                 (not (= |c::main::$tmp::return_value_isnan$8@1!0&0#1|
                         #x00000000))))
      (a!18 (and |c::main::$tmp::tmp$15@1!0&0#1|
                 (not (not (= |c::main::$tmp::return_value_isinf$16@1!0&0#2|
                              #x00000000))))))
(let ((a!2 (=> (and true
                    (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                            #x00000000)))
               (=> |execution_statet::__guard_exec@0!0| a!1)))
      (a!4 (=> (and true
                    (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                            #x00000000)))
               (=> |execution_statet::__guard_exec@0!0| a!3)))
      (a!6 (=> (and true
                    (not (= |c::main::$tmp::return_value_isnormal$1@1!0&0#1|
                            #x00000000)))
               a!5))
      (a!12 (=> a!11
                (not (not (= |c::main::$tmp::return_value_isnormal$9@1!0&0#1|
                             #x00000000)))))
      (a!13 (=> a!11
                (not (not (= |c::main::$tmp::return_value_isinf$10@1!0&0#1|
                             #x00000000)))))
      (a!14 (=> |execution_statet::__guard_exec@0!0|
                (=> a!11
                    (not (fp.eq |c::main::main::1::d3@1!0&0#1|
                                |c::main::main::1::d3@1!0&0#1|)))))
      (a!15 (and (and a!7 a!10)
                 (=> a!11
                     (not (= |c::main::$tmp::return_value_isfinite$11@1!0&0#1|
                             #x00000000)))))
      (a!16 (=> (and a!11
                     (not (= |c::main::$tmp::return_value_isfinite$11@1!0&0#1|
                             #x00000000)))
                (not (not (= |c::main::$tmp::return_value_isnan$12@1!0&0#1|
                             #x00000000)))))
      (a!17 (=> (and a!11
                     (not (= |c::main::$tmp::return_value_isfinite$11@1!0&0#1|
                             #x00000000)))
                (not (not (= |c::main::$tmp::return_value_isinf$13@1!0&0#1|
                             #x00000000)))))
      (a!19 (=> (and a!11
                     (not (= |c::main::$tmp::return_value_isfinite$11@1!0&0#1|
                             #x00000000)))
                a!18))
      (a!20 (and (and a!11
                      (not (= |c::main::$tmp::return_value_isfinite$11@1!0&0#1|
                              #x00000000)))
                 |c::main::$tmp::tmp$15@1!0&0#1|
                 (not (not (= |c::main::$tmp::return_value_isinf$16@1!0&0#2|
                              #x00000000))))))
(let ((a!21 (=> |execution_statet::__guard_exec@0!0|
                (=> a!20
                    (not (= |c::main::$tmp::return_value_isfinite$17@1!0&0#1|
                            #x00000000))))))
  (or (not a!2)
      (not a!4)
      (not a!6)
      (not (=> a!7 (=> |execution_statet::__guard_exec@0!0| a!8)))
      (not (=> a!7 (=> |execution_statet::__guard_exec@0!0| a!9)))
      (not (=> (and a!7 a!10) (=> |execution_statet::__guard_exec@0!0| a!12)))
      (not (=> (and a!7 a!10) (=> |execution_statet::__guard_exec@0!0| a!13)))
      (not (=> (and a!7 a!10) a!14))
      (not (=> a!15 (=> |execution_statet::__guard_exec@0!0| a!16)))
      (not (=> a!15 (=> |execution_statet::__guard_exec@0!0| a!17)))
      (not (=> (and a!15 a!19) a!21)))))))

(check-sat)
(exit)
