(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::__ESBMC_rounding_mode&0#2| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@1!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#3| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@2!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#4| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@3!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#5| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@4!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#6| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@5!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#7| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@6!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#8| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@7!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#9| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@8!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#10| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@9!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#11| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@10!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#12| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@11!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#13| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@12!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#14| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@13!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#15| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@14!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#16| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@15!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#17| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@16!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#18| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@17!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#19| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@18!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#20| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@19!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#21| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@20!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#22| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@21!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#23| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@22!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#24| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@23!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#25| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@24!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#26| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@25!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#27| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@26!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#28| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@27!0&0#1| () Bool)
(declare-fun |c::__ESBMC_rounding_mode&0#29| () (_ BitVec 32))
(declare-fun |c::test::$tmp::tmp$2@28!0&0#1| () Bool)
(declare-fun |c::main::test::d@29!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@29!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@29!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#30| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@29!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@29!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@29!0&0#1| () Bool)
(declare-fun |c::main::test::d@30!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@30!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@30!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#31| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@30!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@30!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@30!0&0#1| () Bool)
(declare-fun |c::main::test::d@31!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@31!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@31!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#32| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@31!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@31!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@31!0&0#1| () Bool)
(declare-fun |c::main::test::d@32!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@32!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@32!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#33| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@32!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@32!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@32!0&0#1| () Bool)
(declare-fun |c::main::test::d@33!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@33!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@33!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#34| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@33!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@33!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@33!0&0#1| () Bool)
(declare-fun |c::main::test::d@34!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@34!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@34!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#35| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@34!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@34!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@34!0&0#1| () Bool)
(declare-fun |c::main::test::d@35!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@35!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@35!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#36| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@35!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@35!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@35!0&0#1| () Bool)
(declare-fun |c::main::test::d@36!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@36!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@36!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#37| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@36!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@36!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@36!0&0#1| () Bool)
(declare-fun |c::main::test::d@37!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@37!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@37!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#38| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@37!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@37!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@37!0&0#1| () Bool)
(declare-fun |c::main::test::d@38!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@38!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@38!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#39| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@38!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@38!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@38!0&0#1| () Bool)
(declare-fun |c::main::test::d@39!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@39!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@39!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#40| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@39!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@39!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@39!0&0#1| () Bool)
(declare-fun |c::main::test::d@40!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@40!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@40!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#41| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@40!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@40!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@40!0&0#1| () Bool)
(declare-fun |c::main::test::d@41!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@41!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@41!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#42| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@41!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@41!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@41!0&0#1| () Bool)
(declare-fun |c::main::test::d@42!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@42!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@42!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#43| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@42!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@42!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@42!0&0#1| () Bool)
(declare-fun |c::main::test::d@43!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@43!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@43!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#44| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@43!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@43!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@43!0&0#1| () Bool)
(declare-fun |c::main::test::d@44!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@44!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@44!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#45| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@44!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@44!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@44!0&0#1| () Bool)
(declare-fun |c::main::test::d@45!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@45!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@45!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#46| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@45!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@45!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@45!0&0#1| () Bool)
(declare-fun |c::main::test::d@46!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@46!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@46!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#47| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@46!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@46!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@46!0&0#1| () Bool)
(declare-fun |c::main::test::d@47!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@47!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@47!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#48| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@47!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@47!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@47!0&0#1| () Bool)
(declare-fun |c::main::test::d@48!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@48!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@48!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#49| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@48!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@48!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@48!0&0#1| () Bool)
(declare-fun |c::main::test::d@49!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@49!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@49!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#50| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@49!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@49!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@49!0&0#1| () Bool)
(declare-fun |c::main::test::d@50!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@50!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@50!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#51| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@50!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@50!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@50!0&0#1| () Bool)
(declare-fun |c::main::test::d@51!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@51!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@51!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#52| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@51!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@51!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@51!0&0#1| () Bool)
(declare-fun |c::main::test::d@52!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@52!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@52!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#53| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@52!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@52!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@52!0&0#1| () Bool)
(declare-fun |c::main::test::d@53!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@53!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@53!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#54| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@53!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@53!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@53!0&0#1| () Bool)
(declare-fun |c::main::test::d@54!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@54!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@54!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#55| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@54!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@54!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@54!0&0#1| () Bool)
(declare-fun |c::main::test::d@55!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@55!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@55!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#56| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@55!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@55!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@55!0&0#1| () Bool)
(declare-fun |c::main::test::d@56!0&0#1| () (_ FloatingPoint 11 53))
(declare-fun |c::main::test::result@56!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::main::setRoundingModeAndCast::d@56!0&0#1|
             ()
             (_ FloatingPoint 11 53))
(declare-fun |c::__ESBMC_rounding_mode&0#57| () (_ BitVec 32))
(declare-fun |c::test::$tmp::return_value_setRoundingModeAndCast$1@56!0&0#1|
             ()
             (_ FloatingPoint 8 24))
(declare-fun |c::main::test::1::f@56!0&0#1| () (_ FloatingPoint 8 24))
(declare-fun |c::test::$tmp::tmp$2@56!0&0#1| () Bool)
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#2|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#2| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffe0000000))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@1!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#3|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#3| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffe0000000))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@2!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#4|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#4| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffe0000000))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@3!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#5|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffe0000000))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@4!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#6|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000002)
                          roundTowardPositive
                          roundTowardZero))))
      (a!2 (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#5| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 ((_ to_fp 11 53) a!2 (_ +oo 8 24)))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@5!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#7|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000002)
                          roundTowardPositive
                          roundTowardZero))))
      (a!2 (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#6| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 ((_ to_fp 11 53) a!2 (_ +oo 8 24)))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@6!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#8|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000002)
                          roundTowardPositive
                          roundTowardZero))))
      (a!2 (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#7| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 ((_ to_fp 11 53) a!2 (_ +oo 8 24)))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@7!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#9|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#9| #x00000002)
                          roundTowardPositive
                          roundTowardZero))))
      (a!2 (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#8| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 ((_ to_fp 11 53) a!2 (_ +oo 8 24)))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@8!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#10|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#10| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffe0000001))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@9!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#11|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#11| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffe0000001))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@10!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#12|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#12| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffe0000001))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@11!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#13|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#13| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffe0000001))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@12!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#14|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#14| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffefffffff))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@13!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#15|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#15| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffefffffff))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@14!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#16|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#16| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffefffffff))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@15!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#17|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#17| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xfffffefffffff))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@16!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#18|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#18| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#18| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#18| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xffffff0000000))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@17!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#19|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#19| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#19| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#19| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xffffff0000000))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@18!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#20|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#20| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#20| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#20| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xffffff0000000))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@19!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#21|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#21| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#21| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#21| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111110 #xffffff0000000))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@20!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#22|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#22| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#22| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#22| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111111 #x0000000000000))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@21!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#23|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#23| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#23| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#23| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111111 #x0000000000000))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@22!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#24|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#24| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#24| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#24| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111111 #x0000000000000))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@23!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#25|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#25| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#25| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#25| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b10001111111 #x0000000000000))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@24!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#26|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#26| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#26| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#26| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b11111111110 #xfffffffffffff))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@25!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#27|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#27| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#27| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#27| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b11111111110 #xfffffffffffff))
            (_ +oo 8 24))
     |c::test::$tmp::tmp$2@26!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#28|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#28| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#28| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#28| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b11111111110 #xfffffffffffff))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@27!0&0#1|)))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#29|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#29| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#29| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#29| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= (fp.eq ((_ to_fp 8 24) a!1 (fp #b0 #b11111111110 #xfffffffffffff))
            (fp #b0 #xfe #b11111111111111111111111))
     |c::test::$tmp::tmp$2@28!0&0#1|)))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)) |c::main::test::d@29!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#29| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#29| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#29| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@29!0&0#1|)))
(assert (= |c::main::test::d@29!0&0#1| |c::main::setRoundingModeAndCast::d@29!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#30|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#30| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#30| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#30| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@29!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@29!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@29!0&0#1|
   |c::main::test::1::f@29!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@29!0&0#1| |c::main::test::result@29!0&0#1|)
   |c::test::$tmp::tmp$2@29!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)) |c::main::test::d@30!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#30| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#30| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#30| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@30!0&0#1|)))
(assert (= |c::main::test::d@30!0&0#1| |c::main::setRoundingModeAndCast::d@30!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#31|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#31| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#31| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#31| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@30!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@30!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@30!0&0#1|
   |c::main::test::1::f@30!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@30!0&0#1| |c::main::test::result@30!0&0#1|)
   |c::test::$tmp::tmp$2@30!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)) |c::main::test::d@31!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#31| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#31| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#31| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@31!0&0#1|)))
(assert (= |c::main::test::d@31!0&0#1| |c::main::setRoundingModeAndCast::d@31!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#32|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#32| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#32| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#32| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@31!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@31!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@31!0&0#1|
   |c::main::test::1::f@31!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@31!0&0#1| |c::main::test::result@31!0&0#1|)
   |c::test::$tmp::tmp$2@31!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)) |c::main::test::d@32!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#32| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#32| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#32| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@32!0&0#1|)))
(assert (= |c::main::test::d@32!0&0#1| |c::main::setRoundingModeAndCast::d@32!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#33|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#33| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#33| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#33| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@32!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@32!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@32!0&0#1|
   |c::main::test::1::f@32!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@32!0&0#1| |c::main::test::result@32!0&0#1|)
   |c::test::$tmp::tmp$2@32!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#33| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#33| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#33| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 11 53) a!1 (fp.neg (_ +oo 8 24))) |c::main::test::d@33!0&0#1|)))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@33!0&0#1|))
(assert (= |c::main::test::d@33!0&0#1| |c::main::setRoundingModeAndCast::d@33!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#34|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#34| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#34| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#34| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@33!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@33!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@33!0&0#1|
   |c::main::test::1::f@33!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@33!0&0#1| |c::main::test::result@33!0&0#1|)
   |c::test::$tmp::tmp$2@33!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#34| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#34| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#34| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 11 53) a!1 (fp.neg (_ +oo 8 24))) |c::main::test::d@34!0&0#1|)))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@34!0&0#1|))
(assert (= |c::main::test::d@34!0&0#1| |c::main::setRoundingModeAndCast::d@34!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#35|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#35| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#35| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#35| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@34!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@34!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@34!0&0#1|
   |c::main::test::1::f@34!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@34!0&0#1| |c::main::test::result@34!0&0#1|)
   |c::test::$tmp::tmp$2@34!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#35| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#35| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#35| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 11 53) a!1 (fp.neg (_ +oo 8 24))) |c::main::test::d@35!0&0#1|)))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@35!0&0#1|))
(assert (= |c::main::test::d@35!0&0#1| |c::main::setRoundingModeAndCast::d@35!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#36|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#36| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#36| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#36| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@35!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@35!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@35!0&0#1|
   |c::main::test::1::f@35!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@35!0&0#1| |c::main::test::result@35!0&0#1|)
   |c::test::$tmp::tmp$2@35!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#36| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#36| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#36| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 11 53) a!1 (fp.neg (_ +oo 8 24))) |c::main::test::d@36!0&0#1|)))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@36!0&0#1|))
(assert (= |c::main::test::d@36!0&0#1| |c::main::setRoundingModeAndCast::d@36!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#37|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#37| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#37| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#37| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@36!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@36!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@36!0&0#1|
   |c::main::test::1::f@36!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@36!0&0#1| |c::main::test::result@36!0&0#1|)
   |c::test::$tmp::tmp$2@36!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffe0000001)) |c::main::test::d@37!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#37| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#37| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#37| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@37!0&0#1|)))
(assert (= |c::main::test::d@37!0&0#1| |c::main::setRoundingModeAndCast::d@37!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#38|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#38| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#38| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#38| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@37!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@37!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@37!0&0#1|
   |c::main::test::1::f@37!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@37!0&0#1| |c::main::test::result@37!0&0#1|)
   |c::test::$tmp::tmp$2@37!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffe0000001)) |c::main::test::d@38!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#38| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#38| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#38| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@38!0&0#1|)))
(assert (= |c::main::test::d@38!0&0#1| |c::main::setRoundingModeAndCast::d@38!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#39|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#39| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#39| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#39| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@38!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@38!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@38!0&0#1|
   |c::main::test::1::f@38!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@38!0&0#1| |c::main::test::result@38!0&0#1|)
   |c::test::$tmp::tmp$2@38!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffe0000001)) |c::main::test::d@39!0&0#1|))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@39!0&0#1|))
(assert (= |c::main::test::d@39!0&0#1| |c::main::setRoundingModeAndCast::d@39!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#40|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#40| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#40| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#40| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@39!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@39!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@39!0&0#1|
   |c::main::test::1::f@39!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@39!0&0#1| |c::main::test::result@39!0&0#1|)
   |c::test::$tmp::tmp$2@39!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffe0000001)) |c::main::test::d@40!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#40| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#40| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#40| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@40!0&0#1|)))
(assert (= |c::main::test::d@40!0&0#1| |c::main::setRoundingModeAndCast::d@40!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#41|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#41| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#41| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#41| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@40!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@40!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@40!0&0#1|
   |c::main::test::1::f@40!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@40!0&0#1| |c::main::test::result@40!0&0#1|)
   |c::test::$tmp::tmp$2@40!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffefffffff)) |c::main::test::d@41!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#41| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#41| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#41| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@41!0&0#1|)))
(assert (= |c::main::test::d@41!0&0#1| |c::main::setRoundingModeAndCast::d@41!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#42|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#42| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#42| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#42| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@41!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@41!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@41!0&0#1|
   |c::main::test::1::f@41!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@41!0&0#1| |c::main::test::result@41!0&0#1|)
   |c::test::$tmp::tmp$2@41!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffefffffff)) |c::main::test::d@42!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#42| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#42| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#42| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@42!0&0#1|)))
(assert (= |c::main::test::d@42!0&0#1| |c::main::setRoundingModeAndCast::d@42!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#43|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#43| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#43| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#43| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@42!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@42!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@42!0&0#1|
   |c::main::test::1::f@42!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@42!0&0#1| |c::main::test::result@42!0&0#1|)
   |c::test::$tmp::tmp$2@42!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffefffffff)) |c::main::test::d@43!0&0#1|))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@43!0&0#1|))
(assert (= |c::main::test::d@43!0&0#1| |c::main::setRoundingModeAndCast::d@43!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#44|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#44| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#44| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#44| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@43!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@43!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@43!0&0#1|
   |c::main::test::1::f@43!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@43!0&0#1| |c::main::test::result@43!0&0#1|)
   |c::test::$tmp::tmp$2@43!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xfffffefffffff)) |c::main::test::d@44!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#44| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#44| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#44| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@44!0&0#1|)))
(assert (= |c::main::test::d@44!0&0#1| |c::main::setRoundingModeAndCast::d@44!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#45|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#45| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#45| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#45| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@44!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@44!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@44!0&0#1|
   |c::main::test::1::f@44!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@44!0&0#1| |c::main::test::result@44!0&0#1|)
   |c::test::$tmp::tmp$2@44!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xffffff0000000)) |c::main::test::d@45!0&0#1|))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@45!0&0#1|))
(assert (= |c::main::test::d@45!0&0#1| |c::main::setRoundingModeAndCast::d@45!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#46|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#46| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#46| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#46| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@45!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@45!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@45!0&0#1|
   |c::main::test::1::f@45!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@45!0&0#1| |c::main::test::result@45!0&0#1|)
   |c::test::$tmp::tmp$2@45!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xffffff0000000)) |c::main::test::d@46!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#46| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#46| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#46| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@46!0&0#1|)))
(assert (= |c::main::test::d@46!0&0#1| |c::main::setRoundingModeAndCast::d@46!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#47|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#47| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#47| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#47| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@46!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@46!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@46!0&0#1|
   |c::main::test::1::f@46!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@46!0&0#1| |c::main::test::result@46!0&0#1|)
   |c::test::$tmp::tmp$2@46!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xffffff0000000)) |c::main::test::d@47!0&0#1|))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@47!0&0#1|))
(assert (= |c::main::test::d@47!0&0#1| |c::main::setRoundingModeAndCast::d@47!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#48|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#48| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#48| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#48| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@47!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@47!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@47!0&0#1|
   |c::main::test::1::f@47!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@47!0&0#1| |c::main::test::result@47!0&0#1|)
   |c::test::$tmp::tmp$2@47!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111110 #xffffff0000000)) |c::main::test::d@48!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#48| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#48| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#48| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@48!0&0#1|)))
(assert (= |c::main::test::d@48!0&0#1| |c::main::setRoundingModeAndCast::d@48!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#49|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#49| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#49| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#49| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@48!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@48!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@48!0&0#1|
   |c::main::test::1::f@48!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@48!0&0#1| |c::main::test::result@48!0&0#1|)
   |c::test::$tmp::tmp$2@48!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111111 #x0000000000000)) |c::main::test::d@49!0&0#1|))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@49!0&0#1|))
(assert (= |c::main::test::d@49!0&0#1| |c::main::setRoundingModeAndCast::d@49!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#50|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#50| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#50| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#50| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@49!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@49!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@49!0&0#1|
   |c::main::test::1::f@49!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@49!0&0#1| |c::main::test::result@49!0&0#1|)
   |c::test::$tmp::tmp$2@49!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111111 #x0000000000000)) |c::main::test::d@50!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#50| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#50| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#50| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@50!0&0#1|)))
(assert (= |c::main::test::d@50!0&0#1| |c::main::setRoundingModeAndCast::d@50!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#51|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#51| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#51| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#51| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@50!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@50!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@50!0&0#1|
   |c::main::test::1::f@50!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@50!0&0#1| |c::main::test::result@50!0&0#1|)
   |c::test::$tmp::tmp$2@50!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111111 #x0000000000000)) |c::main::test::d@51!0&0#1|))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@51!0&0#1|))
(assert (= |c::main::test::d@51!0&0#1| |c::main::setRoundingModeAndCast::d@51!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#52|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#52| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#52| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#52| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@51!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@51!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@51!0&0#1|
   |c::main::test::1::f@51!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@51!0&0#1| |c::main::test::result@51!0&0#1|)
   |c::test::$tmp::tmp$2@51!0&0#1|))
(assert (= (fp.neg (fp #b0 #b10001111111 #x0000000000000)) |c::main::test::d@52!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#52| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#52| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#52| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@52!0&0#1|)))
(assert (= |c::main::test::d@52!0&0#1| |c::main::setRoundingModeAndCast::d@52!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#53|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#53| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#53| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#53| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@52!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@52!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@52!0&0#1|
   |c::main::test::1::f@52!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@52!0&0#1| |c::main::test::result@52!0&0#1|)
   |c::test::$tmp::tmp$2@52!0&0#1|))
(assert (= (fp.neg (fp #b0 #b11111111110 #xfffffffffffff)) |c::main::test::d@53!0&0#1|))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@53!0&0#1|))
(assert (= |c::main::test::d@53!0&0#1| |c::main::setRoundingModeAndCast::d@53!0&0#1|))
(assert (let ((a!1 (ite (= #x00000000 #x00000000)
                #x00000000
                (ite (= #x00000000 #x00000c00)
                     #x00000003
                     (ite (= #x00000000 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000000 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#54|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#54| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#54| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#54| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@53!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@53!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@53!0&0#1|
   |c::main::test::1::f@53!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@53!0&0#1| |c::main::test::result@53!0&0#1|)
   |c::test::$tmp::tmp$2@53!0&0#1|))
(assert (= (fp.neg (fp #b0 #b11111111110 #xfffffffffffff)) |c::main::test::d@54!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#54| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#54| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#54| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@54!0&0#1|)))
(assert (= |c::main::test::d@54!0&0#1| |c::main::setRoundingModeAndCast::d@54!0&0#1|))
(assert (let ((a!1 (ite (= #x00000800 #x00000000)
                #x00000000
                (ite (= #x00000800 #x00000c00)
                     #x00000003
                     (ite (= #x00000800 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000800 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#55|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#55| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#55| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#55| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@54!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@54!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@54!0&0#1|
   |c::main::test::1::f@54!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@54!0&0#1| |c::main::test::result@54!0&0#1|)
   |c::test::$tmp::tmp$2@54!0&0#1|))
(assert (= (fp.neg (fp #b0 #b11111111110 #xfffffffffffff)) |c::main::test::d@55!0&0#1|))
(assert (= (fp.neg (_ +oo 8 24)) |c::main::test::result@55!0&0#1|))
(assert (= |c::main::test::d@55!0&0#1| |c::main::setRoundingModeAndCast::d@55!0&0#1|))
(assert (let ((a!1 (ite (= #x00000400 #x00000000)
                #x00000000
                (ite (= #x00000400 #x00000c00)
                     #x00000003
                     (ite (= #x00000400 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000400 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#56|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#56| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#56| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#56| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@55!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@55!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@55!0&0#1|
   |c::main::test::1::f@55!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@55!0&0#1| |c::main::test::result@55!0&0#1|)
   |c::test::$tmp::tmp$2@55!0&0#1|))
(assert (= (fp.neg (fp #b0 #b11111111110 #xfffffffffffff)) |c::main::test::d@56!0&0#1|))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#56| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#56| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#56| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 (fp.neg (fp #b0 #b10001111110 #xfffffe0000000)))
     |c::main::test::result@56!0&0#1|)))
(assert (= |c::main::test::d@56!0&0#1| |c::main::setRoundingModeAndCast::d@56!0&0#1|))
(assert (let ((a!1 (ite (= #x00000c00 #x00000000)
                #x00000000
                (ite (= #x00000c00 #x00000c00)
                     #x00000003
                     (ite (= #x00000c00 #x00000800) #x00000002 #x00000000)))))
  (= (ite (= #x00000c00 #x00000400) #x00000001 a!1)
     |c::__ESBMC_rounding_mode&0#57|)))
(assert (let ((a!1 (ite (= |c::__ESBMC_rounding_mode&0#57| #x00000000)
                roundNearestTiesToEven
                (ite (= |c::__ESBMC_rounding_mode&0#57| #x00000001)
                     roundTowardNegative
                     (ite (= |c::__ESBMC_rounding_mode&0#57| #x00000002)
                          roundTowardPositive
                          roundTowardZero)))))
  (= ((_ to_fp 8 24) a!1 |c::main::setRoundingModeAndCast::d@56!0&0#1|)
     |c::test::$tmp::return_value_setRoundingModeAndCast$1@56!0&0#1|)))
(assert (= |c::test::$tmp::return_value_setRoundingModeAndCast$1@56!0&0#1|
   |c::main::test::1::f@56!0&0#1|))
(assert (= (fp.eq |c::main::test::1::f@56!0&0#1| |c::main::test::result@56!0&0#1|)
   |c::test::$tmp::tmp$2@56!0&0#1|))
(assert (let ((a!1 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::test::$tmp::tmp$2@1!0&0#1|) false))))
      (a!2 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::test::$tmp::tmp$2@2!0&0#1|) false))))
      (a!3 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::test::$tmp::tmp$2@3!0&0#1|) false))))
      (a!4 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::test::$tmp::tmp$2@4!0&0#1|) false))))
      (a!5 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::test::$tmp::tmp$2@5!0&0#1|) false))))
      (a!6 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::test::$tmp::tmp$2@6!0&0#1|) false))))
      (a!7 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::test::$tmp::tmp$2@7!0&0#1|) false))))
      (a!8 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::test::$tmp::tmp$2@8!0&0#1|) false))))
      (a!9 (=> true
               (=> |execution_statet::__guard_exec@0!0|
                   (=> (not |c::test::$tmp::tmp$2@9!0&0#1|) false))))
      (a!10 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@10!0&0#1|) false))))
      (a!11 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@11!0&0#1|) false))))
      (a!12 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@12!0&0#1|) false))))
      (a!13 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@13!0&0#1|) false))))
      (a!14 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@14!0&0#1|) false))))
      (a!15 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@15!0&0#1|) false))))
      (a!16 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@16!0&0#1|) false))))
      (a!17 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@17!0&0#1|) false))))
      (a!18 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@18!0&0#1|) false))))
      (a!19 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@19!0&0#1|) false))))
      (a!20 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@20!0&0#1|) false))))
      (a!21 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@21!0&0#1|) false))))
      (a!22 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@22!0&0#1|) false))))
      (a!23 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@23!0&0#1|) false))))
      (a!24 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@24!0&0#1|) false))))
      (a!25 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@25!0&0#1|) false))))
      (a!26 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@26!0&0#1|) false))))
      (a!27 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@27!0&0#1|) false))))
      (a!28 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@28!0&0#1|) false))))
      (a!29 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@29!0&0#1|) false))))
      (a!30 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@30!0&0#1|) false))))
      (a!31 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@31!0&0#1|) false))))
      (a!32 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@32!0&0#1|) false))))
      (a!33 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@33!0&0#1|) false))))
      (a!34 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@34!0&0#1|) false))))
      (a!35 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@35!0&0#1|) false))))
      (a!36 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@36!0&0#1|) false))))
      (a!37 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@37!0&0#1|) false))))
      (a!38 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@38!0&0#1|) false))))
      (a!39 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@39!0&0#1|) false))))
      (a!40 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@40!0&0#1|) false))))
      (a!41 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@41!0&0#1|) false))))
      (a!42 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@42!0&0#1|) false))))
      (a!43 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@43!0&0#1|) false))))
      (a!44 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@44!0&0#1|) false))))
      (a!45 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@45!0&0#1|) false))))
      (a!46 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@46!0&0#1|) false))))
      (a!47 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@47!0&0#1|) false))))
      (a!48 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@48!0&0#1|) false))))
      (a!49 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@49!0&0#1|) false))))
      (a!50 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@50!0&0#1|) false))))
      (a!51 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@51!0&0#1|) false))))
      (a!52 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@52!0&0#1|) false))))
      (a!53 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@53!0&0#1|) false))))
      (a!54 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@54!0&0#1|) false))))
      (a!55 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@55!0&0#1|) false))))
      (a!56 (=> true
                (=> |execution_statet::__guard_exec@0!0|
                    (=> (not |c::test::$tmp::tmp$2@56!0&0#1|) false)))))
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
      (not a!56))))

(check-sat)
(exit)
