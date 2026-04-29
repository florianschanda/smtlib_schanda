(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::$tmp::return_value_nondet_float$1@1!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |nondet$symex::nondet0| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::main::1::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::main::1::ff@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::tmp$2@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$3@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#1| () Bool)
(declare-fun |c::math::__isnanf::f@1!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value___isnanf$4@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnanf$4@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnanf$4@1!0&0#0| () (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$5@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#2| () Bool)
(declare-fun |c::math::__isnan::d@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___isnan$6@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnan$6@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnan$6@1!0&0#0| () (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#3| () Bool)
(declare-fun |c::math::__isnanl::ld@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___isnanl$7@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnanl$7@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnanl$7@1!0&0#0| () (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$8@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::tmp$9@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#4| () Bool)
(declare-fun |c::math::__isnanf::f@2!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::$tmp::return_value___isnanf$10@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnanf$10@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnanf$10@1!0&0#0| () (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$11@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#5| () Bool)
(declare-fun |c::math::__isnan::d@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___isnan$12@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnan$12@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnan$12@1!0&0#0| () (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#6| () Bool)
(declare-fun |c::math::__isnanl::ld@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::return_value___isnanl$13@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnanl$13@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___isnanl$13@1!0&0#0| () (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$14@1!0&0#1| () Bool)
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= |nondet$symex::nondet0| |c::main::$tmp::return_value_nondet_float$1@1!0&0#1|))
(assert (= |c::main::$tmp::return_value_nondet_float$1@1!0&0#1|
   |c::main::main::1::f@1!0&0#1|))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#1|)
   |c::main::main::1::d@1!0&0#1|))
(assert (= ((_ to_fp 8 24) roundNearestTiesToEven |c::main::main::1::d@1!0&0#1|)
   |c::main::main::1::ff@1!0&0#1|))
(assert (= (fp.eq |c::main::main::1::f@1!0&0#1| |c::main::main::1::ff@1!0&0#1|)
   |c::main::$tmp::tmp$2@1!0&0#1|))
(assert (= (= #x00000004 #x00000004) |c::main::$tmp::tmp$3@1!0&0#1|))
(assert (let ((a!1 (not (and (not (fp.eq |c::main::main::1::f@1!0&0#1|
                                 |c::main::main::1::ff@1!0&0#1|))
                     |c::main::$tmp::tmp$3@1!0&0#1|))))
  (= (not a!1) |goto_symex::guard@0!0&0#1|)))
(assert (= |c::main::main::1::f@1!0&0#1| |c::math::__isnanf::f@1!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::__isnanf::f@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___isnanf$4@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#1|)
        |c::main::$tmp::return_value___isnanf$4@1!0&0#0|
        |c::main::$tmp::return_value___isnanf$4@1!0&0#1|)
   |c::main::$tmp::return_value___isnanf$4@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::main::$tmp::tmp$5@1!0&0#1|))
(assert (let ((a!1 (not (and (not (fp.eq |c::main::main::1::f@1!0&0#1|
                                 |c::main::main::1::ff@1!0&0#1|))
                     (not |c::main::$tmp::tmp$3@1!0&0#1|)
                     |c::main::$tmp::tmp$5@1!0&0#1|))))
  (= (not a!1) |goto_symex::guard@0!0&0#2|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#1|)
   |c::math::__isnan::d@1!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::__isnan::d@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___isnan$6@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#2|)
        |c::main::$tmp::return_value___isnan$6@1!0&0#0|
        |c::main::$tmp::return_value___isnan$6@1!0&0#1|)
   |c::main::$tmp::return_value___isnan$6@1!0&0#2|))
(assert (let ((a!1 (not (and (not (fp.eq |c::main::main::1::f@1!0&0#1|
                                 |c::main::main::1::ff@1!0&0#1|))
                     (not |c::main::$tmp::tmp$3@1!0&0#1|)
                     (not |c::main::$tmp::tmp$5@1!0&0#1|)))))
  (= (not a!1) |goto_symex::guard@0!0&0#3|)))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::f@1!0&0#1|)
   |c::math::__isnanl::ld@1!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::__isnanl::ld@1!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___isnanl$7@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#3|)
        |c::main::$tmp::return_value___isnanl$7@1!0&0#0|
        |c::main::$tmp::return_value___isnanl$7@1!0&0#1|)
   |c::main::$tmp::return_value___isnanl$7@1!0&0#2|))
(assert (let ((a!1 (not (= (ite |c::main::$tmp::tmp$3@1!0&0#1|
                        |c::main::$tmp::return_value___isnanf$4@1!0&0#2|
                        (ite |c::main::$tmp::tmp$5@1!0&0#1|
                             |c::main::$tmp::return_value___isnan$6@1!0&0#2|
                             |c::main::$tmp::return_value___isnanl$7@1!0&0#2|))
                   #x00000000))))
  (= a!1 |c::main::$tmp::tmp$8@1!0&0#1|)))
(assert (= (= #x00000004 #x00000004) |c::main::$tmp::tmp$9@1!0&0#1|))
(assert (let ((a!1 (not (= (ite |c::main::$tmp::tmp$3@1!0&0#1|
                        |c::main::$tmp::return_value___isnanf$4@1!0&0#2|
                        (ite |c::main::$tmp::tmp$5@1!0&0#1|
                             |c::main::$tmp::return_value___isnan$6@1!0&0#2|
                             |c::main::$tmp::return_value___isnanl$7@1!0&0#2|))
                   #x00000000))))
(let ((a!2 (not (and (not (fp.eq |c::main::main::1::f@1!0&0#1|
                                 |c::main::main::1::ff@1!0&0#1|))
                     a!1
                     |c::main::$tmp::tmp$9@1!0&0#1|))))
  (= (not a!2) |goto_symex::guard@0!0&0#4|))))
(assert (= |c::main::main::1::ff@1!0&0#1| |c::math::__isnanf::f@2!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::__isnanf::f@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___isnanf$10@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#4|)
        |c::main::$tmp::return_value___isnanf$10@1!0&0#0|
        |c::main::$tmp::return_value___isnanf$10@1!0&0#1|)
   |c::main::$tmp::return_value___isnanf$10@1!0&0#2|))
(assert (= (= #x00000004 #x00000008) |c::main::$tmp::tmp$11@1!0&0#1|))
(assert (let ((a!1 (not (= (ite |c::main::$tmp::tmp$3@1!0&0#1|
                        |c::main::$tmp::return_value___isnanf$4@1!0&0#2|
                        (ite |c::main::$tmp::tmp$5@1!0&0#1|
                             |c::main::$tmp::return_value___isnan$6@1!0&0#2|
                             |c::main::$tmp::return_value___isnanl$7@1!0&0#2|))
                   #x00000000))))
(let ((a!2 (not (and (not (fp.eq |c::main::main::1::f@1!0&0#1|
                                 |c::main::main::1::ff@1!0&0#1|))
                     a!1
                     (not |c::main::$tmp::tmp$9@1!0&0#1|)
                     |c::main::$tmp::tmp$11@1!0&0#1|))))
  (= (not a!2) |goto_symex::guard@0!0&0#5|))))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::ff@1!0&0#1|)
   |c::math::__isnan::d@2!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::__isnan::d@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___isnan$12@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#5|)
        |c::main::$tmp::return_value___isnan$12@1!0&0#0|
        |c::main::$tmp::return_value___isnan$12@1!0&0#1|)
   |c::main::$tmp::return_value___isnan$12@1!0&0#2|))
(assert (let ((a!1 (not (= (ite |c::main::$tmp::tmp$3@1!0&0#1|
                        |c::main::$tmp::return_value___isnanf$4@1!0&0#2|
                        (ite |c::main::$tmp::tmp$5@1!0&0#1|
                             |c::main::$tmp::return_value___isnan$6@1!0&0#2|
                             |c::main::$tmp::return_value___isnanl$7@1!0&0#2|))
                   #x00000000))))
(let ((a!2 (not (and (not (fp.eq |c::main::main::1::f@1!0&0#1|
                                 |c::main::main::1::ff@1!0&0#1|))
                     a!1
                     (not |c::main::$tmp::tmp$9@1!0&0#1|)
                     (not |c::main::$tmp::tmp$11@1!0&0#1|)))))
  (= (not a!2) |goto_symex::guard@0!0&0#6|))))
(assert (= ((_ to_fp 11 53) roundNearestTiesToEven |c::main::main::1::ff@1!0&0#1|)
   |c::math::__isnanl::ld@2!0&0#1|))
(assert (= (ite (fp.isNaN |c::math::__isnanl::ld@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___isnanl$13@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#6|)
        |c::main::$tmp::return_value___isnanl$13@1!0&0#0|
        |c::main::$tmp::return_value___isnanl$13@1!0&0#1|)
   |c::main::$tmp::return_value___isnanl$13@1!0&0#2|))
(assert (let ((a!1 (not (= (ite |c::main::$tmp::tmp$9@1!0&0#1|
                        |c::main::$tmp::return_value___isnanf$10@1!0&0#2|
                        (ite |c::main::$tmp::tmp$11@1!0&0#1|
                             |c::main::$tmp::return_value___isnan$12@1!0&0#2|
                             |c::main::$tmp::return_value___isnanl$13@1!0&0#2|))
                   #x00000000))))
  (= (or |c::main::$tmp::tmp$2@1!0&0#1|
         (and |c::main::$tmp::tmp$8@1!0&0#1| a!1))
     |c::main::$tmp::tmp$14@1!0&0#1|)))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$14@1!0&0#1|) false)))))
  (not a!1)))

(check-sat)
(exit)
