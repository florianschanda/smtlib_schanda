(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::main::1::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::result@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$3@1!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value___signbitf$4@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$4@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$4@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$5@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#1| () Bool)
(declare-fun |c::math::__signbit::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___signbit$6@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$6@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$6@1!0&0#0| () (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#2| () Bool)
(declare-fun |c::math::__signbitl::ld@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___signbitl$7@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$7@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$7@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$8@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value___signbitf$9@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$9@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$9@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$10@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#3| () Bool)
(declare-fun |c::main::$tmp::return_value___signbit$11@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$11@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$11@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#4| () Bool)
(declare-fun |c::main::$tmp::return_value___signbitl$12@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$12@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$12@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$13@1!0&0#1| () Bool)
(declare-fun |c::argc'&0#0| () (_ BitVec 32))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= (fp.neg (fp #b0 #x00 #b00100000000000000000000))
   |c::main::main::1::f@1!0&0#1|))
(assert (= (fp.add roundNearestTiesToEven
           |c::main::main::1::f@1!0&0#1|
           (fp #b0 #x00 #b00100000000000000000000))
   |c::main::main::1::result@1!0&0#1|))
(assert (= (fp.eq |c::main::main::1::result@1!0&0#1|
          (fp #b0 #x00 #b00000000000000000000000))
   |c::main::$tmp::tmp$1@1!0&0#1|))
(assert (= (= #x00000004 #x00000004) |c::main::$tmp::tmp$3@1!0&0#1|))
(assert (= |c::main::main::1::result@1!0&0#1| |c::math::__signbitf::f@1!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___signbitf$4@1!0&0#1|))
(assert (= (ite (not |c::main::$tmp::tmp$3@1!0&0#1|)
        |c::main::$tmp::return_value___signbitf$4@1!0&0#0|
        |c::main::$tmp::return_value___signbitf$4@1!0&0#1|)
   |c::main::$tmp::return_value___signbitf$4@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::main::$tmp::tmp$5@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$3@1!0&0#1|)
                          |c::main::$tmp::tmp$5@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#1|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::result@1!0&0#1|)
   |c::math::__signbit::d@1!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___signbit$6@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#1|)
        |c::main::$tmp::return_value___signbit$6@1!0&0#0|
        |c::main::$tmp::return_value___signbit$6@1!0&0#1|)
   |c::main::$tmp::return_value___signbit$6@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$3@1!0&0#1|)
                          (not |c::main::$tmp::tmp$5@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#2|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::result@1!0&0#1|)
   |c::math::__signbitl::ld@1!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___signbitl$7@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#2|)
        |c::main::$tmp::return_value___signbitl$7@1!0&0#0|
        |c::main::$tmp::return_value___signbitl$7@1!0&0#1|)
   |c::main::$tmp::return_value___signbitl$7@1!0&0#2|))
(assert (= (= #x00000004 #x00000004) |c::main::$tmp::tmp$8@1!0&0#1|))
(assert (= (ite (fp.isNegative (fp #b0 #x00 #b00000000000000000000000))
        #x00000001
        #x00000000)
   |c::main::$tmp::return_value___signbitf$9@1!0&0#1|))
(assert (= (ite (not |c::main::$tmp::tmp$8@1!0&0#1|)
        |c::main::$tmp::return_value___signbitf$9@1!0&0#0|
        |c::main::$tmp::return_value___signbitf$9@1!0&0#1|)
   |c::main::$tmp::return_value___signbitf$9@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::main::$tmp::tmp$10@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$8@1!0&0#1|)
                          |c::main::$tmp::tmp$10@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#3|)))
(assert (let ((a!1 (ite (fp.isNegative ((_ to_fp 11 53)
                                 roundNearestTiesToEven
                                 (fp #b0 #x00 #b00000000000000000000000)))
                #x00000001
                #x00000000)))
  (= a!1 |c::main::$tmp::return_value___signbit$11@1!0&0#1|)))
(assert (= (ite (not |goto_symex::guard@0!0&0#3|)
        |c::main::$tmp::return_value___signbit$11@1!0&0#0|
        |c::main::$tmp::return_value___signbit$11@1!0&0#1|)
   |c::main::$tmp::return_value___signbit$11@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$8@1!0&0#1|)
                          (not |c::main::$tmp::tmp$10@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#4|)))
(assert (let ((a!1 (ite (fp.isNegative ((_ to_fp 11 53)
                                 roundNearestTiesToEven
                                 (fp #b0 #x00 #b00000000000000000000000)))
                #x00000001
                #x00000000)))
  (= a!1 |c::main::$tmp::return_value___signbitl$12@1!0&0#1|)))
(assert (= (ite (not |goto_symex::guard@0!0&0#4|)
        |c::main::$tmp::return_value___signbitl$12@1!0&0#0|
        |c::main::$tmp::return_value___signbitl$12@1!0&0#1|)
   |c::main::$tmp::return_value___signbitl$12@1!0&0#2|))
(assert (= (= (ite |c::main::$tmp::tmp$3@1!0&0#1|
           |c::main::$tmp::return_value___signbitf$4@1!0&0#2|
           (ite |c::main::$tmp::tmp$5@1!0&0#1|
                |c::main::$tmp::return_value___signbit$6@1!0&0#2|
                |c::main::$tmp::return_value___signbitl$7@1!0&0#2|))
      (ite |c::main::$tmp::tmp$8@1!0&0#1|
           |c::main::$tmp::return_value___signbitf$9@1!0&0#2|
           (ite |c::main::$tmp::tmp$10@1!0&0#1|
                |c::main::$tmp::return_value___signbit$11@1!0&0#2|
                |c::main::$tmp::return_value___signbitl$12@1!0&0#2|)))
   |c::main::$tmp::tmp$13@1!0&0#1|))
(assert (let ((a!1 (and true
                (bvsge |c::argc'&0#0| #x00000001)
                (=> (bvsge |c::argc'&0#0| #x00000001)
                    (bvsle |c::argc'&0#0| #x7ffffffe))))
      (a!2 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::main::$tmp::tmp$1@1!0&0#1|))
               false))
      (a!3 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::main::$tmp::tmp$13@1!0&0#1|))
               false)))
  (or (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!2)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!3))))))

(check-sat)
(exit)
