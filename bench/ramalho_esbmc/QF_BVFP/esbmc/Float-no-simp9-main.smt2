(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::main::$tmp::tmp$1@1!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value___signbitf$2@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$2@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitf$2@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$3@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#1| () Bool)
(declare-fun |c::main::$tmp::return_value___signbit$4@1!0&0#1| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$4@1!0&0#2| () (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbit$4@1!0&0#0| () (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#2| () Bool)
(declare-fun |c::main::$tmp::return_value___signbitl$5@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$5@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::return_value___signbitl$5@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::main::$tmp::tmp$6@1!0&0#1| () Bool)
(declare-fun |c::main::main::1::minusZero@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::$tmp::tmp$8@1!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@2!0&0#1| () (_ FloatingPoint 8 24))
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
(declare-fun |c::math::__signbit::d@2!0&0#1| () (_ FloatingPoint 11 53))
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
(declare-fun |c::math::__signbitl::ld@2!0&0#1| () (_ FloatingPoint 11 53))
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
(declare-fun |c::__ESBMC_rounding_mode&0#2| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@1!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@1!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@1!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@1!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@1!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@3!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#5| () Bool)
(declare-fun |c::math::__signbit::d@3!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#6| () Bool)
(declare-fun |c::math::__signbitl::ld@3!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@1!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@1!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@4!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@1!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#7| () Bool)
(declare-fun |c::math::__signbit::d@4!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#8| () Bool)
(declare-fun |c::math::__signbitl::ld@4!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@1!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@1!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@1!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@1!0&0#1| () Bool)
(declare-fun |c::main::testAdd::f@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::g@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#3| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@2!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@2!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@2!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@2!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@2!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@5!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@2!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@2!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@2!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@2!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#9| () Bool)
(declare-fun |c::math::__signbit::d@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@2!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@2!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@2!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#10| () Bool)
(declare-fun |c::math::__signbitl::ld@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@2!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@2!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@2!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@2!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@2!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@6!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@2!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@2!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@2!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@2!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#11| () Bool)
(declare-fun |c::math::__signbit::d@6!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@2!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@2!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@2!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#12| () Bool)
(declare-fun |c::math::__signbitl::ld@6!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@2!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@2!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@2!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@2!0&0#1| () Bool)
(declare-fun |c::main::testAdd::g@3!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#4| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@3!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@3!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@3!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@3!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@3!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@3!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@7!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@3!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@3!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@3!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@3!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#13| () Bool)
(declare-fun |c::math::__signbit::d@7!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@3!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@3!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@3!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#14| () Bool)
(declare-fun |c::math::__signbitl::ld@7!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@3!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@3!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@3!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@3!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@3!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@8!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@3!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@3!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@3!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@3!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#15| () Bool)
(declare-fun |c::math::__signbit::d@8!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@3!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@3!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@3!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#16| () Bool)
(declare-fun |c::math::__signbitl::ld@8!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@3!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@3!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@3!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@3!0&0#1| () Bool)
(declare-fun |c::main::testAdd::g@4!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#5| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@4!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@4!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@4!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@4!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@4!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@4!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@9!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@4!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@4!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@4!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@4!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#17| () Bool)
(declare-fun |c::math::__signbit::d@9!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@4!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@4!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@4!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#18| () Bool)
(declare-fun |c::math::__signbitl::ld@9!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@4!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@4!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@4!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@4!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@4!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@10!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@4!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@4!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@4!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@4!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#19| () Bool)
(declare-fun |c::math::__signbit::d@10!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@4!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@4!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@4!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#20| () Bool)
(declare-fun |c::math::__signbitl::ld@10!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@4!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@4!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@4!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@4!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#6| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@5!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@5!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@5!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@5!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@5!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@11!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@5!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@5!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@5!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@5!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#21| () Bool)
(declare-fun |c::math::__signbit::d@11!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@5!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@5!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@5!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#22| () Bool)
(declare-fun |c::math::__signbitl::ld@11!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@5!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@5!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@5!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@5!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@5!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@12!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@5!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@5!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@5!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@5!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#23| () Bool)
(declare-fun |c::math::__signbit::d@12!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@5!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@5!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@5!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#24| () Bool)
(declare-fun |c::math::__signbitl::ld@12!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@5!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@5!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@5!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@5!0&0#1| () Bool)
(declare-fun |c::main::testAdd::f@6!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::g@6!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#7| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@6!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@6!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@6!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@6!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@6!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@6!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@13!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@6!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@6!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@6!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@6!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#25| () Bool)
(declare-fun |c::math::__signbit::d@13!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@6!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@6!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@6!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#26| () Bool)
(declare-fun |c::math::__signbitl::ld@13!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@6!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@6!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@6!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@6!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@6!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@14!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@6!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@6!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@6!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@6!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#27| () Bool)
(declare-fun |c::math::__signbit::d@14!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@6!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@6!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@6!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#28| () Bool)
(declare-fun |c::math::__signbitl::ld@14!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@6!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@6!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@6!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@6!0&0#1| () Bool)
(declare-fun |c::main::testAdd::g@7!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#8| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@7!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@7!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@7!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@7!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@7!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@7!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@15!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@7!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@7!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@7!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@7!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#29| () Bool)
(declare-fun |c::math::__signbit::d@15!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@7!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@7!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@7!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#30| () Bool)
(declare-fun |c::math::__signbitl::ld@15!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@7!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@7!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@7!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@7!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@7!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@16!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@7!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@7!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@7!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@7!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#31| () Bool)
(declare-fun |c::math::__signbit::d@16!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@7!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@7!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@7!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#32| () Bool)
(declare-fun |c::math::__signbitl::ld@16!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@7!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@7!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@7!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@7!0&0#1| () Bool)
(declare-fun |c::main::testAdd::g@8!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#9| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@8!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@8!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@8!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@8!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@8!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@8!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@17!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@8!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@8!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@8!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@8!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#33| () Bool)
(declare-fun |c::math::__signbit::d@17!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@8!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@8!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@8!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#34| () Bool)
(declare-fun |c::math::__signbitl::ld@17!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@8!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@8!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@8!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@8!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@8!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@18!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@8!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@8!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@8!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@8!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#35| () Bool)
(declare-fun |c::math::__signbit::d@18!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@8!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@8!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@8!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#36| () Bool)
(declare-fun |c::math::__signbitl::ld@18!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@8!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@8!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@8!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@8!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#10| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@9!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@9!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@9!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@9!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@9!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@9!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@19!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@9!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@9!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@9!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@9!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#37| () Bool)
(declare-fun |c::math::__signbit::d@19!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@9!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@9!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@9!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#38| () Bool)
(declare-fun |c::math::__signbitl::ld@19!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@9!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@9!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@9!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@9!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@9!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@20!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@9!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@9!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@9!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@9!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#39| () Bool)
(declare-fun |c::math::__signbit::d@20!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@9!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@9!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@9!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#40| () Bool)
(declare-fun |c::math::__signbitl::ld@20!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@9!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@9!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@9!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@9!0&0#1| () Bool)
(declare-fun |c::main::testAdd::f@10!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::g@10!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#11| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@10!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@10!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@10!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@10!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@10!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@10!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@21!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@10!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@10!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@10!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@10!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#41| () Bool)
(declare-fun |c::math::__signbit::d@21!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@10!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@10!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@10!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#42| () Bool)
(declare-fun |c::math::__signbitl::ld@21!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@10!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@10!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@10!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@10!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@10!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@22!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@10!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@10!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@10!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@10!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#43| () Bool)
(declare-fun |c::math::__signbit::d@22!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@10!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@10!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@10!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#44| () Bool)
(declare-fun |c::math::__signbitl::ld@22!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@10!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@10!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@10!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@10!0&0#1| () Bool)
(declare-fun |c::main::testAdd::g@11!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#12| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@11!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@11!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@11!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@11!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@11!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@11!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@23!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@11!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@11!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@11!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@11!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#45| () Bool)
(declare-fun |c::math::__signbit::d@23!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@11!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@11!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@11!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#46| () Bool)
(declare-fun |c::math::__signbitl::ld@23!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@11!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@11!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@11!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@11!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@11!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@24!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@11!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@11!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@11!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@11!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#47| () Bool)
(declare-fun |c::math::__signbit::d@24!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@11!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@11!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@11!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#48| () Bool)
(declare-fun |c::math::__signbitl::ld@24!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@11!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@11!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@11!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@11!0&0#1| () Bool)
(declare-fun |c::main::testAdd::g@12!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#13| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@12!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@12!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@12!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@12!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@12!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@12!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@25!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@12!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@12!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@12!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@12!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#49| () Bool)
(declare-fun |c::math::__signbit::d@25!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@12!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@12!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@12!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#50| () Bool)
(declare-fun |c::math::__signbitl::ld@25!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@12!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@12!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@12!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@12!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@12!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@26!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@12!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@12!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@12!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@12!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#51| () Bool)
(declare-fun |c::math::__signbit::d@26!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@12!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@12!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@12!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#52| () Bool)
(declare-fun |c::math::__signbitl::ld@26!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@12!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@12!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@12!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@12!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#14| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@13!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@13!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@13!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@13!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@13!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@13!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@27!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@13!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@13!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@13!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@13!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#53| () Bool)
(declare-fun |c::math::__signbit::d@27!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@13!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@13!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@13!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#54| () Bool)
(declare-fun |c::math::__signbitl::ld@27!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@13!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@13!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@13!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@13!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@13!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@28!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@13!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@13!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@13!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@13!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#55| () Bool)
(declare-fun |c::math::__signbit::d@28!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@13!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@13!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@13!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#56| () Bool)
(declare-fun |c::math::__signbitl::ld@28!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@13!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@13!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@13!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@13!0&0#1| () Bool)
(declare-fun |c::main::testAdd::f@14!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::g@14!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#15| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@14!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@14!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@14!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@14!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@14!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@14!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@29!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@14!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@14!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@14!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@14!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#57| () Bool)
(declare-fun |c::math::__signbit::d@29!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@14!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@14!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@14!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#58| () Bool)
(declare-fun |c::math::__signbitl::ld@29!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@14!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@14!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@14!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@14!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@14!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@30!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@14!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@14!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@14!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@14!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#59| () Bool)
(declare-fun |c::math::__signbit::d@30!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@14!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@14!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@14!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#60| () Bool)
(declare-fun |c::math::__signbitl::ld@30!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@14!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@14!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@14!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@14!0&0#1| () Bool)
(declare-fun |c::main::testAdd::g@15!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#16| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@15!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@15!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@15!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@15!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@15!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@15!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@31!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@15!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@15!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@15!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@15!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#61| () Bool)
(declare-fun |c::math::__signbit::d@31!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@15!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@15!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@15!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#62| () Bool)
(declare-fun |c::math::__signbitl::ld@31!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@15!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@15!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@15!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@15!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@15!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@32!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@15!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@15!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@15!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@15!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#63| () Bool)
(declare-fun |c::math::__signbit::d@32!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@15!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@15!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@15!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#64| () Bool)
(declare-fun |c::math::__signbitl::ld@32!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@15!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@15!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@15!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@15!0&0#1| () Bool)
(declare-fun |c::main::testAdd::g@16!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#17| () (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$2@16!0&0#1| () Bool)
(declare-fun |c::main::testAdd::1::f_plus_g@16!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::main::testAdd::1::g_plus_f@16!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::tmp$4@16!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$6@16!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$8@16!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@33!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@16!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@16!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$9@16!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$10@16!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#65| () Bool)
(declare-fun |c::math::__signbit::d@33!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@16!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@16!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$11@16!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#66| () Bool)
(declare-fun |c::math::__signbitl::ld@33!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@16!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@16!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$12@16!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$13@16!0&0#1| () Bool)
(declare-fun |c::testAdd::$tmp::tmp$15@16!0&0#1| () Bool)
(declare-fun |c::math::__signbitf::f@34!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@16!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@16!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitf$16@16!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$17@16!0&0#1| () Bool)
(declare-fun |goto_symex::guard@0!0&0#67| () Bool)
(declare-fun |c::math::__signbit::d@34!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@16!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@16!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbit$18@16!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |goto_symex::guard@0!0&0#68| () Bool)
(declare-fun |c::math::__signbitl::ld@34!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@16!0&0#1|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@16!0&0#2|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::return_value___signbitl$19@16!0&0#0|
             ()
             (_ BitVec 32))
(declare-fun |c::testAdd::$tmp::tmp$20@16!0&0#1| () Bool)
(declare-fun |c::argc'&0#0| () (_ BitVec 32))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$1@1!0&0#1|))
(assert (let ((a!1 (ite (fp.isNegative ((_ to_fp 8 24)
                                 roundNearestTiesToEven
                                 (fp #b0 #b00000000000 #x0000000000000)))
                #x00000001
                #x00000000)))
  (= a!1 |c::main::$tmp::return_value___signbitf$2@1!0&0#1|)))
(assert (= (ite (not |c::main::$tmp::tmp$1@1!0&0#1|)
        |c::main::$tmp::return_value___signbitf$2@1!0&0#0|
        |c::main::$tmp::return_value___signbitf$2@1!0&0#1|)
   |c::main::$tmp::return_value___signbitf$2@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$3@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$1@1!0&0#1|)
                          |c::main::$tmp::tmp$3@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#1|)))
(assert (= (ite (fp.isNegative (fp #b0 #b00000000000 #x0000000000000))
        #x00000001
        #x00000000)
   |c::main::$tmp::return_value___signbit$4@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#1|)
        |c::main::$tmp::return_value___signbit$4@1!0&0#0|
        |c::main::$tmp::return_value___signbit$4@1!0&0#1|)
   |c::main::$tmp::return_value___signbit$4@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$1@1!0&0#1|)
                          (not |c::main::$tmp::tmp$3@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#2|)))
(assert (= (ite (fp.isNegative (fp #b0 #b00000000000 #x0000000000000))
        #x00000001
        #x00000000)
   |c::main::$tmp::return_value___signbitl$5@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#2|)
        |c::main::$tmp::return_value___signbitl$5@1!0&0#0|
        |c::main::$tmp::return_value___signbitl$5@1!0&0#1|)
   |c::main::$tmp::return_value___signbitl$5@1!0&0#2|))
(assert (= (= (ite |c::main::$tmp::tmp$1@1!0&0#1|
           |c::main::$tmp::return_value___signbitf$2@1!0&0#2|
           (ite |c::main::$tmp::tmp$3@1!0&0#1|
                |c::main::$tmp::return_value___signbit$4@1!0&0#2|
                |c::main::$tmp::return_value___signbitl$5@1!0&0#2|))
      #x00000000)
   |c::main::$tmp::tmp$6@1!0&0#1|))
(assert (= (fp.neg (fp #b0 #b00000000000 #x0000000000000))
   |c::main::main::1::minusZero@1!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::main::$tmp::tmp$8@1!0&0#1|))
(assert (= ((_ to_fp 8 24) roundNearestTiesToEven |c::main::main::1::minusZero@1!0&0#1|)
   |c::math::__signbitf::f@2!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___signbitf$9@1!0&0#1|))
(assert (= (ite (not |c::main::$tmp::tmp$8@1!0&0#1|)
        |c::main::$tmp::return_value___signbitf$9@1!0&0#0|
        |c::main::$tmp::return_value___signbitf$9@1!0&0#1|)
   |c::main::$tmp::return_value___signbitf$9@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::main::$tmp::tmp$10@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$8@1!0&0#1|)
                          |c::main::$tmp::tmp$10@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#3|)))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::math::__signbit::d@2!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___signbit$11@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#3|)
        |c::main::$tmp::return_value___signbit$11@1!0&0#0|
        |c::main::$tmp::return_value___signbit$11@1!0&0#1|)
   |c::main::$tmp::return_value___signbit$11@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::main::$tmp::tmp$8@1!0&0#1|)
                          (not |c::main::$tmp::tmp$10@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#4|)))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::math::__signbitl::ld@2!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@2!0&0#1|) #x00000001 #x00000000)
   |c::main::$tmp::return_value___signbitl$12@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#4|)
        |c::main::$tmp::return_value___signbitl$12@1!0&0#0|
        |c::main::$tmp::return_value___signbitl$12@1!0&0#1|)
   |c::main::$tmp::return_value___signbitl$12@1!0&0#2|))
(assert (let ((a!1 (not (= (ite |c::main::$tmp::tmp$8@1!0&0#1|
                        |c::main::$tmp::return_value___signbitf$9@1!0&0#2|
                        (ite |c::main::$tmp::tmp$10@1!0&0#1|
                             |c::main::$tmp::return_value___signbit$11@1!0&0#2|
                             |c::main::$tmp::return_value___signbitl$12@1!0&0#2|))
                   #x00000000))))
  (= a!1 |c::main::$tmp::tmp$13@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#2|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@1!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::f_plus_g@1!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::g_plus_f@1!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@1!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@1!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@1!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@1!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@1!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@1!0&0#1|)
     |c::math::__signbitf::f@3!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@3!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@1!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@1!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@1!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@1!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@1!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#5|)))
(assert (= |c::main::testAdd::1::f_plus_g@1!0&0#1| |c::math::__signbit::d@3!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@3!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#5|)
        |c::testAdd::$tmp::return_value___signbit$11@1!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@1!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@1!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#6|)))
(assert (= |c::main::testAdd::1::f_plus_g@1!0&0#1| |c::math::__signbitl::ld@3!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@3!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#6|)
        |c::testAdd::$tmp::return_value___signbitl$12@1!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@1!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@1!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@1!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@1!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@1!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@1!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@1!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@1!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@1!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@1!0&0#1|)
     |c::math::__signbitf::f@4!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@4!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@1!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@1!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@1!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@1!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@1!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@1!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@1!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@1!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#7|)))
(assert (= |c::main::testAdd::1::g_plus_f@1!0&0#1| |c::math::__signbit::d@4!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@4!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#7|)
        |c::testAdd::$tmp::return_value___signbit$18@1!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@1!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@1!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@1!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@1!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#8|)))
(assert (= |c::main::testAdd::1::g_plus_f@1!0&0#1| |c::math::__signbitl::ld@4!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@4!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@1!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#8|)
        |c::testAdd::$tmp::return_value___signbitl$19@1!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@1!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@1!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@1!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@1!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@1!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@1!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@1!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@1!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::f@2!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::g@2!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#3|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@2!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1 |c::main::testAdd::f@2!0&0#1| |c::main::testAdd::g@2!0&0#1|)
     |c::main::testAdd::1::f_plus_g@2!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1 |c::main::testAdd::g@2!0&0#1| |c::main::testAdd::f@2!0&0#1|)
     |c::main::testAdd::1::g_plus_f@2!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@2!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@2!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@2!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@2!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@2!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@2!0&0#1|)
     |c::math::__signbitf::f@5!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@5!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@2!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@2!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@2!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@2!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@2!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@2!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@2!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@2!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#9|)))
(assert (= |c::main::testAdd::1::f_plus_g@2!0&0#1| |c::math::__signbit::d@5!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@5!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@2!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#9|)
        |c::testAdd::$tmp::return_value___signbit$11@2!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@2!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@2!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@2!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@2!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#10|)))
(assert (= |c::main::testAdd::1::f_plus_g@2!0&0#1| |c::math::__signbitl::ld@5!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@5!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@2!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#10|)
        |c::testAdd::$tmp::return_value___signbitl$12@2!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@2!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@2!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@2!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@2!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@2!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@2!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@2!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$13@2!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@2!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@2!0&0#1|)
     |c::math::__signbitf::f@6!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@6!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@2!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@2!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@2!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@2!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@2!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@2!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@2!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@2!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#11|)))
(assert (= |c::main::testAdd::1::g_plus_f@2!0&0#1| |c::math::__signbit::d@6!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@6!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@2!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#11|)
        |c::testAdd::$tmp::return_value___signbit$18@2!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@2!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@2!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@2!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@2!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#12|)))
(assert (= |c::main::testAdd::1::g_plus_f@2!0&0#1| |c::math::__signbitl::ld@6!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@6!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@2!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#12|)
        |c::testAdd::$tmp::return_value___signbitl$19@2!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@2!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@2!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@2!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@2!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@2!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@2!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@2!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$20@2!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::g@3!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#4|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@3!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             |c::main::testAdd::g@3!0&0#1|)
     |c::main::testAdd::1::f_plus_g@3!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::testAdd::g@3!0&0#1|
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::g_plus_f@3!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@3!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@3!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@3!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@3!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@3!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@3!0&0#1|)
     |c::math::__signbitf::f@7!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@7!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@3!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@3!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@3!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@3!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@3!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@3!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@3!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@3!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#13|)))
(assert (= |c::main::testAdd::1::f_plus_g@3!0&0#1| |c::math::__signbit::d@7!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@7!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@3!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#13|)
        |c::testAdd::$tmp::return_value___signbit$11@3!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@3!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@3!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@3!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@3!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#14|)))
(assert (= |c::main::testAdd::1::f_plus_g@3!0&0#1| |c::math::__signbitl::ld@7!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@7!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@3!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#14|)
        |c::testAdd::$tmp::return_value___signbitl$12@3!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@3!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@3!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@3!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@3!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@3!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@3!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@3!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@3!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@3!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@3!0&0#1|)
     |c::math::__signbitf::f@8!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@8!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@3!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@3!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@3!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@3!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@3!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@3!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@3!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@3!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#15|)))
(assert (= |c::main::testAdd::1::g_plus_f@3!0&0#1| |c::math::__signbit::d@8!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@8!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@3!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#15|)
        |c::testAdd::$tmp::return_value___signbit$18@3!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@3!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@3!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@3!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@3!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#16|)))
(assert (= |c::main::testAdd::1::g_plus_f@3!0&0#1| |c::math::__signbitl::ld@8!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@8!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@3!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#16|)
        |c::testAdd::$tmp::return_value___signbitl$19@3!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@3!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@3!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@3!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@3!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@3!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@3!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@3!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@3!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10000000011 #x73b7985271bce))
   |c::main::testAdd::g@4!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#5|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@4!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b10000000011 #x73b7985271bce)
             |c::main::testAdd::g@4!0&0#1|)
     |c::main::testAdd::1::f_plus_g@4!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::testAdd::g@4!0&0#1|
             (fp #b0 #b10000000011 #x73b7985271bce))
     |c::main::testAdd::1::g_plus_f@4!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@4!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@4!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@4!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@4!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@4!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@4!0&0#1|)
     |c::math::__signbitf::f@9!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@9!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@4!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@4!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@4!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@4!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@4!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@4!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@4!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@4!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#17|)))
(assert (= |c::main::testAdd::1::f_plus_g@4!0&0#1| |c::math::__signbit::d@9!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@9!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@4!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#17|)
        |c::testAdd::$tmp::return_value___signbit$11@4!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@4!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@4!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@4!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@4!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#18|)))
(assert (= |c::main::testAdd::1::f_plus_g@4!0&0#1| |c::math::__signbitl::ld@9!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@9!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@4!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#18|)
        |c::testAdd::$tmp::return_value___signbitl$12@4!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@4!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@4!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@4!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@4!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@4!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@4!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@4!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@4!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@4!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@4!0&0#1|)
     |c::math::__signbitf::f@10!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@10!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@4!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@4!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@4!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@4!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@4!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@4!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@4!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@4!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#19|)))
(assert (= |c::main::testAdd::1::g_plus_f@4!0&0#1| |c::math::__signbit::d@10!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@10!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@4!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#19|)
        |c::testAdd::$tmp::return_value___signbit$18@4!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@4!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@4!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@4!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@4!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#20|)))
(assert (= |c::main::testAdd::1::g_plus_f@4!0&0#1| |c::math::__signbitl::ld@10!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@10!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@4!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#20|)
        |c::testAdd::$tmp::return_value___signbitl$19@4!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@4!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@4!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@4!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@4!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@4!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@4!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@4!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@4!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#6|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@5!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::f_plus_g@5!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::g_plus_f@5!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@5!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@5!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@5!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@5!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@5!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@5!0&0#1|)
     |c::math::__signbitf::f@11!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@11!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@5!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@5!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@5!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@5!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@5!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@5!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@5!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@5!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#21|)))
(assert (= |c::main::testAdd::1::f_plus_g@5!0&0#1| |c::math::__signbit::d@11!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@11!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@5!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#21|)
        |c::testAdd::$tmp::return_value___signbit$11@5!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@5!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@5!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@5!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@5!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#22|)))
(assert (= |c::main::testAdd::1::f_plus_g@5!0&0#1| |c::math::__signbitl::ld@11!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@11!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@5!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#22|)
        |c::testAdd::$tmp::return_value___signbitl$12@5!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@5!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@5!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@5!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@5!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@5!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@5!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@5!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@5!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@5!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@5!0&0#1|)
     |c::math::__signbitf::f@12!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@12!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@5!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@5!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@5!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@5!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@5!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@5!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@5!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@5!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#23|)))
(assert (= |c::main::testAdd::1::g_plus_f@5!0&0#1| |c::math::__signbit::d@12!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@12!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@5!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#23|)
        |c::testAdd::$tmp::return_value___signbit$18@5!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@5!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@5!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@5!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@5!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#24|)))
(assert (= |c::main::testAdd::1::g_plus_f@5!0&0#1| |c::math::__signbitl::ld@12!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@12!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@5!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#24|)
        |c::testAdd::$tmp::return_value___signbitl$19@5!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@5!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@5!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@5!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@5!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@5!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@5!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@5!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@5!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::f@6!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::g@6!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#7|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@6!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1 |c::main::testAdd::f@6!0&0#1| |c::main::testAdd::g@6!0&0#1|)
     |c::main::testAdd::1::f_plus_g@6!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1 |c::main::testAdd::g@6!0&0#1| |c::main::testAdd::f@6!0&0#1|)
     |c::main::testAdd::1::g_plus_f@6!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@6!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@6!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@6!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@6!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@6!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@6!0&0#1|)
     |c::math::__signbitf::f@13!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@13!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@6!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@6!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@6!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@6!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@6!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@6!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@6!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@6!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#25|)))
(assert (= |c::main::testAdd::1::f_plus_g@6!0&0#1| |c::math::__signbit::d@13!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@13!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@6!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#25|)
        |c::testAdd::$tmp::return_value___signbit$11@6!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@6!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@6!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@6!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@6!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#26|)))
(assert (= |c::main::testAdd::1::f_plus_g@6!0&0#1| |c::math::__signbitl::ld@13!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@13!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@6!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#26|)
        |c::testAdd::$tmp::return_value___signbitl$12@6!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@6!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@6!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@6!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@6!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@6!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@6!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@6!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$13@6!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@6!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@6!0&0#1|)
     |c::math::__signbitf::f@14!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@14!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@6!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@6!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@6!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@6!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@6!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@6!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@6!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@6!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#27|)))
(assert (= |c::main::testAdd::1::g_plus_f@6!0&0#1| |c::math::__signbit::d@14!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@14!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@6!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#27|)
        |c::testAdd::$tmp::return_value___signbit$18@6!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@6!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@6!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@6!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@6!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#28|)))
(assert (= |c::main::testAdd::1::g_plus_f@6!0&0#1| |c::math::__signbitl::ld@14!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@14!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@6!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#28|)
        |c::testAdd::$tmp::return_value___signbitl$19@6!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@6!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@6!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@6!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@6!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@6!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@6!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@6!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$20@6!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::g@7!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#8|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@7!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             |c::main::testAdd::g@7!0&0#1|)
     |c::main::testAdd::1::f_plus_g@7!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::testAdd::g@7!0&0#1|
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::g_plus_f@7!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@7!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@7!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@7!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@7!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@7!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@7!0&0#1|)
     |c::math::__signbitf::f@15!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@15!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@7!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@7!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@7!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@7!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@7!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@7!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@7!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@7!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#29|)))
(assert (= |c::main::testAdd::1::f_plus_g@7!0&0#1| |c::math::__signbit::d@15!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@15!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@7!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#29|)
        |c::testAdd::$tmp::return_value___signbit$11@7!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@7!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@7!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@7!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@7!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#30|)))
(assert (= |c::main::testAdd::1::f_plus_g@7!0&0#1| |c::math::__signbitl::ld@15!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@15!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@7!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#30|)
        |c::testAdd::$tmp::return_value___signbitl$12@7!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@7!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@7!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@7!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@7!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@7!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@7!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@7!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@7!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@7!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@7!0&0#1|)
     |c::math::__signbitf::f@16!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@16!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@7!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@7!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@7!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@7!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@7!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@7!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@7!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@7!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#31|)))
(assert (= |c::main::testAdd::1::g_plus_f@7!0&0#1| |c::math::__signbit::d@16!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@16!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@7!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#31|)
        |c::testAdd::$tmp::return_value___signbit$18@7!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@7!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@7!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@7!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@7!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#32|)))
(assert (= |c::main::testAdd::1::g_plus_f@7!0&0#1| |c::math::__signbitl::ld@16!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@16!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@7!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#32|)
        |c::testAdd::$tmp::return_value___signbitl$19@7!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@7!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@7!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@7!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@7!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@7!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@7!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@7!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@7!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10000000011 #x73b7985271bce))
   |c::main::testAdd::g@8!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#9|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@8!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b10000000011 #x73b7985271bce)
             |c::main::testAdd::g@8!0&0#1|)
     |c::main::testAdd::1::f_plus_g@8!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::testAdd::g@8!0&0#1|
             (fp #b0 #b10000000011 #x73b7985271bce))
     |c::main::testAdd::1::g_plus_f@8!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@8!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@8!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@8!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@8!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@8!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@8!0&0#1|)
     |c::math::__signbitf::f@17!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@17!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@8!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@8!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@8!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@8!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@8!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@8!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@8!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@8!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#33|)))
(assert (= |c::main::testAdd::1::f_plus_g@8!0&0#1| |c::math::__signbit::d@17!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@17!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@8!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#33|)
        |c::testAdd::$tmp::return_value___signbit$11@8!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@8!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@8!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@8!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@8!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#34|)))
(assert (= |c::main::testAdd::1::f_plus_g@8!0&0#1| |c::math::__signbitl::ld@17!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@17!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@8!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#34|)
        |c::testAdd::$tmp::return_value___signbitl$12@8!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@8!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@8!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@8!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@8!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@8!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@8!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@8!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@8!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@8!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@8!0&0#1|)
     |c::math::__signbitf::f@18!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@18!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@8!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@8!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@8!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@8!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@8!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@8!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@8!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@8!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#35|)))
(assert (= |c::main::testAdd::1::g_plus_f@8!0&0#1| |c::math::__signbit::d@18!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@18!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@8!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#35|)
        |c::testAdd::$tmp::return_value___signbit$18@8!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@8!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@8!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@8!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@8!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#36|)))
(assert (= |c::main::testAdd::1::g_plus_f@8!0&0#1| |c::math::__signbitl::ld@18!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@18!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@8!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#36|)
        |c::testAdd::$tmp::return_value___signbitl$19@8!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@8!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@8!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@8!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@8!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@8!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@8!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@8!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@8!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#10|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@9!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::f_plus_g@9!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::g_plus_f@9!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@9!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@9!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@9!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@9!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@9!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@9!0&0#1|)
     |c::math::__signbitf::f@19!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@19!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@9!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@9!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@9!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@9!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@9!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@9!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@9!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@9!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#37|)))
(assert (= |c::main::testAdd::1::f_plus_g@9!0&0#1| |c::math::__signbit::d@19!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@19!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@9!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#37|)
        |c::testAdd::$tmp::return_value___signbit$11@9!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@9!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@9!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@9!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@9!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#38|)))
(assert (= |c::main::testAdd::1::f_plus_g@9!0&0#1| |c::math::__signbitl::ld@19!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@19!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@9!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#38|)
        |c::testAdd::$tmp::return_value___signbitl$12@9!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@9!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@9!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@9!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@9!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@9!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@9!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@9!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@9!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@9!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@9!0&0#1|)
     |c::math::__signbitf::f@20!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@20!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@9!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@9!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@9!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@9!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@9!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@9!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@9!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@9!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#39|)))
(assert (= |c::main::testAdd::1::g_plus_f@9!0&0#1| |c::math::__signbit::d@20!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@20!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@9!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#39|)
        |c::testAdd::$tmp::return_value___signbit$18@9!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@9!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@9!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@9!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@9!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#40|)))
(assert (= |c::main::testAdd::1::g_plus_f@9!0&0#1| |c::math::__signbitl::ld@20!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@20!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@9!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#40|)
        |c::testAdd::$tmp::return_value___signbitl$19@9!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@9!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@9!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@9!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@9!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@9!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@9!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@9!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@9!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::f@10!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::g@10!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#11|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@10!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1 |c::main::testAdd::f@10!0&0#1| |c::main::testAdd::g@10!0&0#1|)
     |c::main::testAdd::1::f_plus_g@10!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1 |c::main::testAdd::g@10!0&0#1| |c::main::testAdd::f@10!0&0#1|)
     |c::main::testAdd::1::g_plus_f@10!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@10!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@10!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@10!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@10!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@10!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@10!0&0#1|)
     |c::math::__signbitf::f@21!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@21!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@10!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@10!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@10!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@10!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@10!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@10!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@10!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@10!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#41|)))
(assert (= |c::main::testAdd::1::f_plus_g@10!0&0#1| |c::math::__signbit::d@21!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@21!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@10!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#41|)
        |c::testAdd::$tmp::return_value___signbit$11@10!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@10!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@10!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@10!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@10!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#42|)))
(assert (= |c::main::testAdd::1::f_plus_g@10!0&0#1| |c::math::__signbitl::ld@21!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@21!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@10!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#42|)
        |c::testAdd::$tmp::return_value___signbitl$12@10!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@10!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@10!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@10!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@10!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@10!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@10!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@10!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$13@10!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@10!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@10!0&0#1|)
     |c::math::__signbitf::f@22!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@22!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@10!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@10!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@10!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@10!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@10!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@10!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@10!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@10!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#43|)))
(assert (= |c::main::testAdd::1::g_plus_f@10!0&0#1| |c::math::__signbit::d@22!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@22!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@10!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#43|)
        |c::testAdd::$tmp::return_value___signbit$18@10!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@10!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@10!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@10!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@10!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#44|)))
(assert (= |c::main::testAdd::1::g_plus_f@10!0&0#1| |c::math::__signbitl::ld@22!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@22!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@10!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#44|)
        |c::testAdd::$tmp::return_value___signbitl$19@10!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@10!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@10!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@10!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@10!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@10!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@10!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@10!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$20@10!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::g@11!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#12|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@11!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             |c::main::testAdd::g@11!0&0#1|)
     |c::main::testAdd::1::f_plus_g@11!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::testAdd::g@11!0&0#1|
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::g_plus_f@11!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@11!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@11!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@11!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@11!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@11!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@11!0&0#1|)
     |c::math::__signbitf::f@23!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@23!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@11!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@11!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@11!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@11!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@11!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@11!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@11!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@11!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#45|)))
(assert (= |c::main::testAdd::1::f_plus_g@11!0&0#1| |c::math::__signbit::d@23!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@23!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@11!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#45|)
        |c::testAdd::$tmp::return_value___signbit$11@11!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@11!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@11!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@11!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@11!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#46|)))
(assert (= |c::main::testAdd::1::f_plus_g@11!0&0#1| |c::math::__signbitl::ld@23!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@23!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@11!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#46|)
        |c::testAdd::$tmp::return_value___signbitl$12@11!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@11!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@11!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@11!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@11!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@11!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@11!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@11!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$13@11!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@11!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@11!0&0#1|)
     |c::math::__signbitf::f@24!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@24!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@11!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@11!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@11!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@11!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@11!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@11!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@11!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@11!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#47|)))
(assert (= |c::main::testAdd::1::g_plus_f@11!0&0#1| |c::math::__signbit::d@24!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@24!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@11!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#47|)
        |c::testAdd::$tmp::return_value___signbit$18@11!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@11!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@11!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@11!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@11!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#48|)))
(assert (= |c::main::testAdd::1::g_plus_f@11!0&0#1| |c::math::__signbitl::ld@24!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@24!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@11!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#48|)
        |c::testAdd::$tmp::return_value___signbitl$19@11!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@11!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@11!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@11!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@11!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@11!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@11!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@11!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$20@11!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10000000011 #x73b7985271bce))
   |c::main::testAdd::g@12!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#13|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@12!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b10000000011 #x73b7985271bce)
             |c::main::testAdd::g@12!0&0#1|)
     |c::main::testAdd::1::f_plus_g@12!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::testAdd::g@12!0&0#1|
             (fp #b0 #b10000000011 #x73b7985271bce))
     |c::main::testAdd::1::g_plus_f@12!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@12!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@12!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@12!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@12!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@12!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@12!0&0#1|)
     |c::math::__signbitf::f@25!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@25!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@12!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@12!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@12!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@12!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@12!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@12!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@12!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@12!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#49|)))
(assert (= |c::main::testAdd::1::f_plus_g@12!0&0#1| |c::math::__signbit::d@25!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@25!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@12!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#49|)
        |c::testAdd::$tmp::return_value___signbit$11@12!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@12!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@12!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@12!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@12!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#50|)))
(assert (= |c::main::testAdd::1::f_plus_g@12!0&0#1| |c::math::__signbitl::ld@25!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@25!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@12!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#50|)
        |c::testAdd::$tmp::return_value___signbitl$12@12!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@12!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@12!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@12!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@12!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@12!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@12!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@12!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$13@12!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@12!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@12!0&0#1|)
     |c::math::__signbitf::f@26!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@26!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@12!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@12!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@12!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@12!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@12!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@12!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@12!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@12!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#51|)))
(assert (= |c::main::testAdd::1::g_plus_f@12!0&0#1| |c::math::__signbit::d@26!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@26!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@12!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#51|)
        |c::testAdd::$tmp::return_value___signbit$18@12!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@12!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@12!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@12!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@12!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#52|)))
(assert (= |c::main::testAdd::1::g_plus_f@12!0&0#1| |c::math::__signbitl::ld@26!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@26!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@12!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#52|)
        |c::testAdd::$tmp::return_value___signbitl$19@12!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@12!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@12!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@12!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@12!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@12!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@12!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@12!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$20@12!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#14|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@13!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::f_plus_g@13!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::g_plus_f@13!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@13!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@13!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@13!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@13!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@13!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@13!0&0#1|)
     |c::math::__signbitf::f@27!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@27!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@13!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@13!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@13!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@13!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@13!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@13!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@13!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@13!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#53|)))
(assert (= |c::main::testAdd::1::f_plus_g@13!0&0#1| |c::math::__signbit::d@27!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@27!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@13!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#53|)
        |c::testAdd::$tmp::return_value___signbit$11@13!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@13!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@13!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@13!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@13!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#54|)))
(assert (= |c::main::testAdd::1::f_plus_g@13!0&0#1| |c::math::__signbitl::ld@27!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@27!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@13!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#54|)
        |c::testAdd::$tmp::return_value___signbitl$12@13!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@13!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@13!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@13!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@13!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@13!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@13!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@13!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@13!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@13!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@13!0&0#1|)
     |c::math::__signbitf::f@28!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@28!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@13!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@13!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@13!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@13!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@13!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@13!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@13!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@13!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#55|)))
(assert (= |c::main::testAdd::1::g_plus_f@13!0&0#1| |c::math::__signbit::d@28!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@28!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@13!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#55|)
        |c::testAdd::$tmp::return_value___signbit$18@13!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@13!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@13!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@13!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@13!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#56|)))
(assert (= |c::main::testAdd::1::g_plus_f@13!0&0#1| |c::math::__signbitl::ld@28!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@28!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@13!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#56|)
        |c::testAdd::$tmp::return_value___signbitl$19@13!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@13!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@13!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@13!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@13!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@13!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@13!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@13!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@13!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::f@14!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::g@14!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#15|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@14!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1 |c::main::testAdd::f@14!0&0#1| |c::main::testAdd::g@14!0&0#1|)
     |c::main::testAdd::1::f_plus_g@14!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1 |c::main::testAdd::g@14!0&0#1| |c::main::testAdd::f@14!0&0#1|)
     |c::main::testAdd::1::g_plus_f@14!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@14!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@14!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@14!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@14!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@14!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@14!0&0#1|)
     |c::math::__signbitf::f@29!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@29!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@14!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@14!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@14!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@14!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@14!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@14!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@14!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@14!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#57|)))
(assert (= |c::main::testAdd::1::f_plus_g@14!0&0#1| |c::math::__signbit::d@29!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@29!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@14!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#57|)
        |c::testAdd::$tmp::return_value___signbit$11@14!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@14!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@14!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@14!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@14!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#58|)))
(assert (= |c::main::testAdd::1::f_plus_g@14!0&0#1| |c::math::__signbitl::ld@29!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@29!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@14!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#58|)
        |c::testAdd::$tmp::return_value___signbitl$12@14!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@14!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@14!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@14!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@14!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@14!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@14!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@14!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$13@14!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@14!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@14!0&0#1|)
     |c::math::__signbitf::f@30!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@30!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@14!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@14!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@14!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@14!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@14!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@14!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@14!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@14!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#59|)))
(assert (= |c::main::testAdd::1::g_plus_f@14!0&0#1| |c::math::__signbit::d@30!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@30!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@14!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#59|)
        |c::testAdd::$tmp::return_value___signbit$18@14!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@14!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@14!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@14!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@14!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#60|)))
(assert (= |c::main::testAdd::1::g_plus_f@14!0&0#1| |c::math::__signbitl::ld@30!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@30!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@14!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#60|)
        |c::testAdd::$tmp::return_value___signbitl$19@14!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@14!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@14!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@14!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@14!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@14!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@14!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@14!0&0#2|))
      #x00000001)
   |c::testAdd::$tmp::tmp$20@14!0&0#1|))
(assert (= |c::main::main::1::minusZero@1!0&0#1| |c::main::testAdd::g@15!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#16|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@15!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b00000000000 #x0000000000000)
             |c::main::testAdd::g@15!0&0#1|)
     |c::main::testAdd::1::f_plus_g@15!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::testAdd::g@15!0&0#1|
             (fp #b0 #b00000000000 #x0000000000000))
     |c::main::testAdd::1::g_plus_f@15!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@15!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@15!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@15!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@15!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@15!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@15!0&0#1|)
     |c::math::__signbitf::f@31!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@31!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@15!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@15!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@15!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@15!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@15!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@15!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@15!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@15!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#61|)))
(assert (= |c::main::testAdd::1::f_plus_g@15!0&0#1| |c::math::__signbit::d@31!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@31!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@15!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#61|)
        |c::testAdd::$tmp::return_value___signbit$11@15!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@15!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@15!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@15!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@15!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#62|)))
(assert (= |c::main::testAdd::1::f_plus_g@15!0&0#1| |c::math::__signbitl::ld@31!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@31!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@15!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#62|)
        |c::testAdd::$tmp::return_value___signbitl$12@15!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@15!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@15!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@15!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@15!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@15!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@15!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@15!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@15!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@15!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@15!0&0#1|)
     |c::math::__signbitf::f@32!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@32!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@15!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@15!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@15!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@15!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@15!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@15!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@15!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@15!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#63|)))
(assert (= |c::main::testAdd::1::g_plus_f@15!0&0#1| |c::math::__signbit::d@32!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@32!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@15!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#63|)
        |c::testAdd::$tmp::return_value___signbit$18@15!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@15!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@15!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@15!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@15!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#64|)))
(assert (= |c::main::testAdd::1::g_plus_f@15!0&0#1| |c::math::__signbitl::ld@32!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@32!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@15!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#64|)
        |c::testAdd::$tmp::return_value___signbitl$19@15!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@15!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@15!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@15!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@15!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@15!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@15!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@15!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@15!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10000000011 #x73b7985271bce))
   |c::main::testAdd::g@16!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#17|)))
(assert (= (= #x00000000 #x00000000) |c::testAdd::$tmp::tmp$2@16!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             (fp #b0 #b10000000011 #x73b7985271bce)
             |c::main::testAdd::g@16!0&0#1|)
     |c::main::testAdd::1::f_plus_g@16!0&0#1|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.add a!1
             |c::main::testAdd::g@16!0&0#1|
             (fp #b0 #b10000000011 #x73b7985271bce))
     |c::main::testAdd::1::g_plus_f@16!0&0#1|)))
(assert (= (fp.eq |c::main::testAdd::1::f_plus_g@16!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$4@16!0&0#1|))
(assert (= (fp.eq |c::main::testAdd::1::g_plus_f@16!0&0#1|
          (fp #b0 #b00000000000 #x0000000000000))
   |c::testAdd::$tmp::tmp$6@16!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$8@16!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::f_plus_g@16!0&0#1|)
     |c::math::__signbitf::f@33!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@33!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$9@16!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$8@16!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$9@16!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$9@16!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$9@16!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$10@16!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@16!0&0#1|)
                          |c::testAdd::$tmp::tmp$10@16!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#65|)))
(assert (= |c::main::testAdd::1::f_plus_g@16!0&0#1| |c::math::__signbit::d@33!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@33!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$11@16!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#65|)
        |c::testAdd::$tmp::return_value___signbit$11@16!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$11@16!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$11@16!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$8@16!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$10@16!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#66|)))
(assert (= |c::main::testAdd::1::f_plus_g@16!0&0#1| |c::math::__signbitl::ld@33!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@33!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$12@16!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#66|)
        |c::testAdd::$tmp::return_value___signbitl$12@16!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$12@16!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$12@16!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$8@16!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$9@16!0&0#2|
           (ite |c::testAdd::$tmp::tmp$10@16!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$11@16!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$12@16!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$13@16!0&0#1|))
(assert (= (= #x00000008 #x00000004) |c::testAdd::$tmp::tmp$15@16!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::testAdd::1::g_plus_f@16!0&0#1|)
     |c::math::__signbitf::f@34!0&0#1|)))
(assert (= (ite (fp.isNegative |c::math::__signbitf::f@34!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbitf$16@16!0&0#1|))
(assert (= (ite (not |c::testAdd::$tmp::tmp$15@16!0&0#1|)
        |c::testAdd::$tmp::return_value___signbitf$16@16!0&0#0|
        |c::testAdd::$tmp::return_value___signbitf$16@16!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitf$16@16!0&0#2|))
(assert (= (= #x00000008 #x00000008) |c::testAdd::$tmp::tmp$17@16!0&0#1|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@16!0&0#1|)
                          |c::testAdd::$tmp::tmp$17@16!0&0#1|)))))
  (= a!1 |goto_symex::guard@0!0&0#67|)))
(assert (= |c::main::testAdd::1::g_plus_f@16!0&0#1| |c::math::__signbit::d@34!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbit::d@34!0&0#1|) #x00000001 #x00000000)
   |c::testAdd::$tmp::return_value___signbit$18@16!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#67|)
        |c::testAdd::$tmp::return_value___signbit$18@16!0&0#0|
        |c::testAdd::$tmp::return_value___signbit$18@16!0&0#1|)
   |c::testAdd::$tmp::return_value___signbit$18@16!0&0#2|))
(assert (let ((a!1 (not (not (and (not |c::testAdd::$tmp::tmp$15@16!0&0#1|)
                          (not |c::testAdd::$tmp::tmp$17@16!0&0#1|))))))
  (= a!1 |goto_symex::guard@0!0&0#68|)))
(assert (= |c::main::testAdd::1::g_plus_f@16!0&0#1| |c::math::__signbitl::ld@34!0&0#1|))
(assert (= (ite (fp.isNegative |c::math::__signbitl::ld@34!0&0#1|)
        #x00000001
        #x00000000)
   |c::testAdd::$tmp::return_value___signbitl$19@16!0&0#1|))
(assert (= (ite (not |goto_symex::guard@0!0&0#68|)
        |c::testAdd::$tmp::return_value___signbitl$19@16!0&0#0|
        |c::testAdd::$tmp::return_value___signbitl$19@16!0&0#1|)
   |c::testAdd::$tmp::return_value___signbitl$19@16!0&0#2|))
(assert (= (= (ite |c::testAdd::$tmp::tmp$15@16!0&0#1|
           |c::testAdd::$tmp::return_value___signbitf$16@16!0&0#2|
           (ite |c::testAdd::$tmp::tmp$17@16!0&0#1|
                |c::testAdd::$tmp::return_value___signbit$18@16!0&0#2|
                |c::testAdd::$tmp::return_value___signbitl$19@16!0&0#2|))
      #x00000000)
   |c::testAdd::$tmp::tmp$20@16!0&0#1|))
(assert (let ((a!1 (and true
                (bvsge |c::argc'&0#0| #x00000001)
                (=> (bvsge |c::argc'&0#0| #x00000001)
                    (bvsle |c::argc'&0#0| #x7ffffffe))))
      (a!2 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::main::$tmp::tmp$6@1!0&0#1|))
               false))
      (a!3 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::main::$tmp::tmp$13@1!0&0#1|))
               false))
      (a!4 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::testAdd::$tmp::tmp$2@1!0&0#1|))
               false))
      (a!5 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::testAdd::$tmp::tmp$4@1!0&0#1|))
               false))
      (a!6 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::testAdd::$tmp::tmp$6@1!0&0#1|))
               false))
      (a!7 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::testAdd::$tmp::tmp$13@1!0&0#1|))
               false))
      (a!8 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::testAdd::$tmp::tmp$20@1!0&0#1|))
               false))
      (a!9 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                         (bvsle |c::argc'&0#0| #x7ffffffe))
                    (not |c::testAdd::$tmp::tmp$2@2!0&0#1|))
               false))
      (a!10 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@2!0&0#1|))
                false))
      (a!11 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@2!0&0#1|))
                false))
      (a!12 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@2!0&0#1|))
                false))
      (a!13 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@2!0&0#1|))
                false))
      (a!14 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@3!0&0#1|))
                false))
      (a!15 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@3!0&0#1|))
                false))
      (a!16 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@3!0&0#1|))
                false))
      (a!17 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@3!0&0#1|))
                false))
      (a!18 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@3!0&0#1|))
                false))
      (a!19 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@4!0&0#1|))
                false))
      (a!20 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@4!0&0#1|))
                false))
      (a!21 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@4!0&0#1|))
                false))
      (a!22 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@4!0&0#1|))
                false))
      (a!23 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@4!0&0#1|))
                false))
      (a!24 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@5!0&0#1|))
                false))
      (a!25 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@5!0&0#1|))
                false))
      (a!26 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@5!0&0#1|))
                false))
      (a!27 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@5!0&0#1|))
                false))
      (a!28 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@5!0&0#1|))
                false))
      (a!29 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@6!0&0#1|))
                false))
      (a!30 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@6!0&0#1|))
                false))
      (a!31 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@6!0&0#1|))
                false))
      (a!32 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@6!0&0#1|))
                false))
      (a!33 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@6!0&0#1|))
                false))
      (a!34 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@7!0&0#1|))
                false))
      (a!35 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@7!0&0#1|))
                false))
      (a!36 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@7!0&0#1|))
                false))
      (a!37 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@7!0&0#1|))
                false))
      (a!38 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@7!0&0#1|))
                false))
      (a!39 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@8!0&0#1|))
                false))
      (a!40 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@8!0&0#1|))
                false))
      (a!41 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@8!0&0#1|))
                false))
      (a!42 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@8!0&0#1|))
                false))
      (a!43 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@8!0&0#1|))
                false))
      (a!44 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@9!0&0#1|))
                false))
      (a!45 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@9!0&0#1|))
                false))
      (a!46 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@9!0&0#1|))
                false))
      (a!47 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@9!0&0#1|))
                false))
      (a!48 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@9!0&0#1|))
                false))
      (a!49 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@10!0&0#1|))
                false))
      (a!50 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@10!0&0#1|))
                false))
      (a!51 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@10!0&0#1|))
                false))
      (a!52 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@10!0&0#1|))
                false))
      (a!53 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@10!0&0#1|))
                false))
      (a!54 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@11!0&0#1|))
                false))
      (a!55 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@11!0&0#1|))
                false))
      (a!56 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@11!0&0#1|))
                false))
      (a!57 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@11!0&0#1|))
                false))
      (a!58 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@11!0&0#1|))
                false))
      (a!59 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@12!0&0#1|))
                false))
      (a!60 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@12!0&0#1|))
                false))
      (a!61 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@12!0&0#1|))
                false))
      (a!62 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@12!0&0#1|))
                false))
      (a!63 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@12!0&0#1|))
                false))
      (a!64 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@13!0&0#1|))
                false))
      (a!65 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@13!0&0#1|))
                false))
      (a!66 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@13!0&0#1|))
                false))
      (a!67 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@13!0&0#1|))
                false))
      (a!68 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@13!0&0#1|))
                false))
      (a!69 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@14!0&0#1|))
                false))
      (a!70 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@14!0&0#1|))
                false))
      (a!71 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@14!0&0#1|))
                false))
      (a!72 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@14!0&0#1|))
                false))
      (a!73 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@14!0&0#1|))
                false))
      (a!74 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@15!0&0#1|))
                false))
      (a!75 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@15!0&0#1|))
                false))
      (a!76 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@15!0&0#1|))
                false))
      (a!77 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@15!0&0#1|))
                false))
      (a!78 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@15!0&0#1|))
                false))
      (a!79 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$2@16!0&0#1|))
                false))
      (a!80 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$4@16!0&0#1|))
                false))
      (a!81 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$6@16!0&0#1|))
                false))
      (a!82 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$13@16!0&0#1|))
                false))
      (a!83 (=> (and (and (bvsge |c::argc'&0#0| #x00000001)
                          (bvsle |c::argc'&0#0| #x7ffffffe))
                     (not |c::testAdd::$tmp::tmp$20@16!0&0#1|))
                false)))
  (or (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!2)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!3)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!4)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!5)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!6)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!7)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!8)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!9)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!10)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!11)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!12)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!13)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!14)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!15)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!16)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!17)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!18)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!19)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!20)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!21)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!22)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!23)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!24)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!25)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!26)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!27)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!28)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!29)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!30)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!31)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!32)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!33)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!34)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!35)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!36)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!37)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!38)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!39)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!40)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!41)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!42)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!43)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!44)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!45)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!46)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!47)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!48)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!49)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!50)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!51)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!52)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!53)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!54)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!55)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!56)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!57)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!58)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!59)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!60)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!61)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!62)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!63)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!64)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!65)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!66)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!67)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!68)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!69)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!70)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!71)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!72)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!73)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!74)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!75)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!76)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!77)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!78)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!79)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!80)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!81)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!82)))
      (not (=> a!1 (=> |execution_statet::__guard_exec@0!0| a!83))))))

(check-sat)
(exit)
