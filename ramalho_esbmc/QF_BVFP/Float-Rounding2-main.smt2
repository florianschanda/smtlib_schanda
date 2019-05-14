(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::__ESBMC_rounding_mode&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value_fegetround$1@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$2@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#3| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value_fegetround$4@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$5@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#4| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value_fegetround$7@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$8@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#5| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value_fegetround$10@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$11@1!0&0#1| () Bool)
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#2|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000000)
                #x00000000
                (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000003)
                     #x00000c00
                     (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000002)
                          #x00000800
                          (bvneg #x00000001))))))
  (= (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000001) #x00000400 a!1)
     |c::main::$tmp::return_value_fegetround$1@1!0&0#1|)))
(assert (= (= |c::main::$tmp::return_value_fegetround$1@1!0&0#1| #x00000400)
   |c::main::$tmp::tmp$2@1!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#3|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000000)
                #x00000000
                (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000003)
                     #x00000c00
                     (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000002)
                          #x00000800
                          (bvneg #x00000001))))))
  (= (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000001) #x00000400 a!1)
     |c::main::$tmp::return_value_fegetround$4@1!0&0#1|)))
(assert (= (= |c::main::$tmp::return_value_fegetround$4@1!0&0#1| #x00000000)
   |c::main::$tmp::tmp$5@1!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#4|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000000)
                #x00000000
                (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000003)
                     #x00000c00
                     (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000002)
                          #x00000800
                          (bvneg #x00000001))))))
  (= (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000001) #x00000400 a!1)
     |c::main::$tmp::return_value_fegetround$7@1!0&0#1|)))
(assert (= (= |c::main::$tmp::return_value_fegetround$7@1!0&0#1| #x00000c00)
   |c::main::$tmp::tmp$8@1!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#5|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                #x00000000
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000003)
                     #x00000c00
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          #x00000800
                          (bvneg #x00000001))))))
  (= (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001) #x00000400 a!1)
     |c::main::$tmp::return_value_fegetround$10@1!0&0#1|)))
(assert (= (= |c::main::$tmp::return_value_fegetround$10@1!0&0#1| #x00000800)
   |c::main::$tmp::tmp$11@1!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$2@1!0&0#1|) false))))
      (a!2 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$5@1!0&0#1|) false))))
      (a!3 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$8@1!0&0#1|) false))))
      (a!4 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::main::$tmp::tmp$11@1!0&0#1|) false)))))
  (or (not a!1) (not a!2) (not a!3) (not a!4))))

(check-sat)
(exit)
