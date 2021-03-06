;; This file has been translated by CVC4 from an earlier
;; version of SMTLIB to 2.6 using the script
;; translate_benchmarks.py in repo smtlib_schanda.

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :source |Benchmarks generated from industrial code by Florian Schanda using SPARK 2014 and an SMTLIB Obfuscation Script|)
(set-info :category industrial)
(set-info :status unsat)
(set-logic AUFFPDTNIRA)

(define-fun spoon_1 ((kitten_1 (_ FloatingPoint 8 24))) Bool (not (or (fp.isInfinite kitten_1) (fp.isNaN kitten_1))))
(define-fun spoon_2 ((kitten_2 (_ FloatingPoint 8 24))) Bool (or (fp.isZero kitten_2) (and (fp.isNormal kitten_2) (= kitten_2 (fp.roundToIntegral roundNearestTiesToEven kitten_2)))))
(declare-datatypes ((potato_1 0)) (((mk_potato_1))))

(declare-sort potato_2 0)
(declare-fun spoon_3 (potato_2 potato_2) Bool)
(declare-fun cat_4 () potato_2)
(declare-sort potato_3 0)
(declare-datatypes ((potato_4 0)) (((mk_potato_4 (get_potato_4_a potato_3)))))

(declare-sort potato_5 0)
(declare-datatypes ((potato_6 0)) (((mk_potato_6 (get_potato_6_a Int)))))

(declare-datatypes ((potato_7 0)) (((mk_potato_7 (get_potato_7_a Bool)))))

(declare-datatypes ((potato_8 0)) (((mk_potato_8 (get_potato_8_a Real)))))

(declare-datatypes ((potato_9 0)) (((mk_potato_9 (get_potato_9_a potato_2)))))

(define-fun spoon_5 ((kitten_3 potato_6)) Int (get_potato_6_a kitten_3))
(define-fun spoon_6 ((kitten_4 potato_7)) Bool (get_potato_7_a kitten_4))
(define-fun spoon_7 ((kitten_5 potato_8)) Real (get_potato_8_a kitten_5))
(define-fun spoon_8 ((kitten_6 potato_9)) potato_2 (get_potato_9_a kitten_6))
(declare-fun spoon_9 (Int) Int)
(define-fun spoon_10 ((kitten_7 (_ FloatingPoint 8 24))) Bool (and (fp.isInfinite kitten_7) (fp.isPositive kitten_7)))
(define-fun spoon_11 ((kitten_8 (_ FloatingPoint 8 24))) Bool (and (fp.isInfinite kitten_8) (fp.isNegative kitten_8)))
(define-fun spoon_12 ((kitten_9 (_ FloatingPoint 8 24))) Bool (and (fp.isZero kitten_9) (fp.isPositive kitten_9)))
(define-fun spoon_13 ((kitten_10 (_ FloatingPoint 8 24))) Bool (and (fp.isZero kitten_10) (fp.isNegative kitten_10)))
(declare-fun cat_14 () Int)
(define-fun spoon_15 ((kitten_11 Int)) Bool (and (<= (- cat_14) kitten_11) (<= kitten_11 cat_14)))
(define-fun spoon_16 ((kitten_12 Int)) Bool (and (<= (- 16777216) kitten_12) (<= kitten_12 16777216)))
(define-fun spoon_17 ((kitten_13 (_ FloatingPoint 8 24)) (kitten_14 (_ FloatingPoint 8 24))) Bool (or (and (fp.isPositive kitten_13) (fp.isPositive kitten_14)) (and (fp.isNegative kitten_13) (fp.isNegative kitten_14))))
(define-fun spoon_18 ((kitten_15 (_ FloatingPoint 8 24)) (kitten_16 (_ FloatingPoint 8 24))) Bool (or (and (fp.isPositive kitten_15) (fp.isNegative kitten_16)) (and (fp.isNegative kitten_15) (fp.isPositive kitten_16))))
(define-fun spoon_19 ((kitten_17 (_ FloatingPoint 8 24)) (kitten_18 (_ FloatingPoint 8 24)) (kitten_19 (_ FloatingPoint 8 24))) Bool (and (=> (spoon_17 kitten_18 kitten_19) (fp.isPositive kitten_17)) (=> (spoon_18 kitten_18 kitten_19) (fp.isNegative kitten_17))))
(define-fun spoon_20 ((kitten_20 Real)) Real (* kitten_20 kitten_20))
(declare-fun spoon_21 (Real) Real)
(define-fun spoon_22 ((kitten_21 (_ FloatingPoint 8 24)) (kitten_22 Real)) Bool (let ((_let_0 (/ 0 1))) (or (and (fp.isPositive kitten_21) (< _let_0 kitten_22)) (and (fp.isNegative kitten_21) (< kitten_22 _let_0)))))
(declare-datatypes ((potato_10 0)) (((mk_potato_10 (get_potato_10_a (_ FloatingPoint 8 24))))))

(define-fun spoon_23 ((kitten_23 Int)) Bool (or (= kitten_23 0) (= kitten_23 1)))
(declare-fun spoon_24 (Bool) potato_5)
(declare-fun spoon_25 (potato_5) Bool)
(declare-fun spoon_26 (potato_5) Bool)
(declare-fun spoon_27 ((_ FloatingPoint 8 24) (_ FloatingPoint 8 24)) (_ FloatingPoint 8 24))
(declare-fun spoon_28 ((_ FloatingPoint 8 24) (_ FloatingPoint 8 24) (_ FloatingPoint 8 24)) Bool)
(declare-sort potato_11 0)
(define-fun spoon_29 ((kitten_24 (_ FloatingPoint 8 24))) Bool (and (spoon_1 kitten_24) (and (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) kitten_24) (fp.leq kitten_24 (fp (_ bv0 1) (_ bv147 8) (_ bv56192 23))))))
(declare-fun spoon_30 (potato_11 potato_11) Bool)
(declare-fun spoon_31 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_32 (potato_5) Bool)
(declare-fun spoon_33 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_34 () potato_11)
(declare-datatypes ((potato_12 0)) (((mk_potato_12 (get_potato_12_a potato_11)))))

(define-fun spoon_35 ((kitten_25 potato_12)) potato_11 (get_potato_12_a kitten_25))
(define-fun spoon_36 ((kitten_26 (_ FloatingPoint 8 24)) (kitten_27 Bool) (kitten_28 Bool) (kitten_29 Bool) (kitten_30 Bool)) Bool (=> (or (= kitten_27 true) (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv147 8) (_ bv56192 23)))) (spoon_29 kitten_26)))
(assert (forall ((kitten_31 (_ FloatingPoint 8 24)) (kitten_32 (_ FloatingPoint 8 24))) (! (=> (and (spoon_36 kitten_31 true true true true) (spoon_36 kitten_32 true true true true)) (spoon_36 (spoon_27 kitten_31 kitten_32) true false true true)) :pattern ((spoon_27 kitten_31 kitten_32)))))
(declare-sort potato_13 0)
(declare-fun spoon_37 (potato_13) Int)
(assert (forall ((kitten_33 potato_13)) (let ((_let_0 (spoon_37 kitten_33))) (and (<= 3 _let_0) (<= _let_0 30))) ))
(define-fun spoon_38 ((kitten_34 Int)) Bool (and (<= 3 kitten_34) (<= kitten_34 30)))
(declare-fun spoon_39 (Int) potato_5)
(declare-fun spoon_40 (potato_5) Bool)
(declare-fun spoon_41 (potato_5) Int)
(declare-fun spoon_42 (potato_13 potato_13) Bool)
(declare-fun cat_43 () potato_13)
(declare-datatypes ((potato_14 0)) (((mk_potato_14 (get_potato_14_a potato_13)))))

(define-fun spoon_44 ((kitten_35 potato_14)) potato_13 (get_potato_14_a kitten_35))
(define-fun spoon_45 ((kitten_36 potato_13)) Int (spoon_37 kitten_36))
(declare-fun spoon_46 (Int) potato_13)
(assert (forall ((kitten_37 potato_13)) (! (= (spoon_46 (spoon_45 kitten_37)) kitten_37) :pattern ((spoon_45 kitten_37)))))
(assert (forall ((kitten_38 potato_13)) (! (spoon_38 (spoon_45 kitten_38)) :pattern ((spoon_45 kitten_38)))))
(assert (forall ((kitten_39 Int)) (! (=> (spoon_38 kitten_39) (= (spoon_45 (spoon_46 kitten_39)) kitten_39)) :pattern ((spoon_45 (spoon_46 kitten_39))))))
(declare-sort potato_15 0)
(define-fun spoon_47 ((kitten_40 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv139 8) (_ bv0 23)))) (and (spoon_1 kitten_40) (and (fp.leq (fp.neg _let_0) kitten_40) (fp.leq kitten_40 _let_0)))))
(declare-fun spoon_48 (potato_15 potato_15) Bool)
(declare-fun spoon_49 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_50 (potato_5) Bool)
(declare-fun spoon_51 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_52 () potato_15)
(declare-datatypes ((potato_16 0)) (((mk_potato_16 (get_potato_16_a potato_15)))))

(define-fun spoon_53 ((kitten_41 potato_16)) potato_15 (get_potato_16_a kitten_41))
(declare-fun spoon_54 (potato_15) (_ FloatingPoint 8 24))
(declare-fun spoon_55 ((_ FloatingPoint 8 24)) potato_15)
(assert (forall ((kitten_42 potato_15)) (! (= (spoon_55 (spoon_54 kitten_42)) kitten_42) :pattern ((spoon_54 kitten_42)))))
(assert (forall ((kitten_43 potato_15)) (! (spoon_47 (spoon_54 kitten_43)) :pattern ((spoon_54 kitten_43)))))
(assert (forall ((kitten_44 (_ FloatingPoint 8 24))) (! (=> (spoon_47 kitten_44) (= (spoon_54 (spoon_55 kitten_44)) kitten_44)) :pattern ((spoon_54 (spoon_55 kitten_44))))))
(declare-datatypes ((potato_17 0)) (((mk_potato_17 (get_potato_17_a potato_15) (get_potato_17_b potato_15)))))

(define-fun spoon_56 ((kitten_45 potato_17)) potato_15 (get_potato_17_a kitten_45))
(define-fun spoon_57 ((kitten_46 potato_17)) potato_15 (get_potato_17_b kitten_46))
(declare-datatypes ((potato_18 0)) (((mk_potato_18 (get_potato_18_a potato_17)))))

(define-fun spoon_58 ((kitten_47 potato_18)) potato_17 (get_potato_18_a kitten_47))
(declare-datatypes ((potato_19 0)) (((mk_potato_19 (get_potato_19_a potato_17)))))

(define-fun spoon_59 ((kitten_48 potato_19)) potato_17 (get_potato_19_a kitten_48))
(define-fun spoon_60 ((kitten_49 potato_19) (kitten_50 potato_19)) Bool (let ((_let_0 (get_potato_19_a kitten_49))) (let ((_let_1 (get_potato_19_a kitten_50))) (ite (and (= (spoon_54 (get_potato_17_a _let_0)) (spoon_54 (get_potato_17_a _let_1))) (= (spoon_54 (get_potato_17_b _let_0)) (spoon_54 (get_potato_17_b _let_1)))) true false))))
(declare-fun cat_61 () Int)
(declare-fun spoon_62 (potato_19) Int)
(declare-fun cat_63 () Int)
(declare-fun spoon_64 (potato_19) Int)
(assert (<= 0 cat_61))
(assert (forall ((kitten_51 potato_19)) (<= 0 (spoon_62 kitten_51)) ))
(assert (<= 0 cat_63))
(assert (forall ((kitten_52 potato_19)) (<= 0 (spoon_64 kitten_52)) ))
(declare-fun cat_65 () Int)
(declare-fun cat_66 () Int)
(declare-fun cat_67 () Int)
(assert (<= 0 cat_65))
(assert (< cat_65 cat_66))
(assert (<= 0 cat_67))
(declare-fun cat_68 () Int)
(declare-fun cat_69 () Int)
(declare-fun cat_70 () Int)
(assert (<= 0 cat_68))
(assert (< cat_68 cat_69))
(assert (<= 0 cat_70))
(declare-fun spoon_71 (potato_19 potato_19) Bool)
(declare-fun cat_72 () potato_19)
(declare-datatypes ((potato_20 0)) (((mk_potato_20 (get_potato_20_a potato_19)))))

(define-fun spoon_73 ((kitten_53 potato_20)) potato_19 (get_potato_20_a kitten_53))
(declare-datatypes ((potato_21 0)) (((mk_potato_21 (get_potato_21_a (Array Int potato_19))))))

(declare-fun spoon_74 ((Array Int potato_19) Int Int) (Array Int potato_19))
(assert (forall ((kitten_54 (Array Int potato_19))) (forall ((kitten_55 Int)) (! (= (spoon_74 kitten_54 kitten_55 kitten_55) kitten_54) :pattern ((spoon_74 kitten_54 kitten_55 kitten_55)))) ))
(assert (forall ((kitten_56 (Array Int potato_19))) (forall ((kitten_57 Int)) (forall ((kitten_58 Int)) (forall ((kitten_59 Int)) (! (= (select (spoon_74 kitten_56 kitten_57 kitten_58) kitten_59) (select kitten_56 (- kitten_59 (- kitten_58 kitten_57)))) :pattern ((select (spoon_74 kitten_56 kitten_57 kitten_58) kitten_59)))) ) ) ))
(define-fun spoon_75 ((kitten_60 (Array Int potato_19)) (kitten_61 Int) (kitten_62 Int) (kitten_63 (Array Int potato_19)) (kitten_64 Int) (kitten_65 Int)) Bool (ite (and (ite (<= kitten_61 kitten_62) (and (<= kitten_64 kitten_65) (= (- kitten_62 kitten_61) (- kitten_65 kitten_64))) (< kitten_65 kitten_64)) (forall ((kitten_66 Int)) (=> (and (<= kitten_61 kitten_66) (<= kitten_66 kitten_62)) (= (spoon_60 (select kitten_60 kitten_66) (select kitten_63 (+ (- kitten_64 kitten_61) kitten_66))) true)) )) true false))
(assert (forall ((kitten_67 (Array Int potato_19)) (kitten_68 (Array Int potato_19))) (forall ((kitten_69 Int) (kitten_70 Int) (kitten_71 Int) (kitten_72 Int)) (=> (= (spoon_75 kitten_68 kitten_71 kitten_72 kitten_67 kitten_69 kitten_70) true) (and (ite (<= kitten_69 kitten_70) (and (<= kitten_71 kitten_72) (= (- kitten_70 kitten_69) (- kitten_72 kitten_71))) (< kitten_72 kitten_71)) (forall ((kitten_73 Int)) (=> (and (<= kitten_69 kitten_73) (<= kitten_73 kitten_70)) (= (spoon_60 (select kitten_67 kitten_73) (select kitten_68 (+ (- kitten_71 kitten_69) kitten_73))) true)) ))) ) ))
(declare-fun cat_76 () (Array Int potato_19))
(declare-fun cat_77 () Int)
(declare-fun spoon_78 ((Array Int potato_19)) Int)
(declare-fun cat_79 () Int)
(declare-fun spoon_80 ((Array Int potato_19)) Int)
(declare-fun cat_81 () Int)
(declare-fun spoon_82 ((Array Int potato_19)) Int)
(assert (<= 0 cat_77))
(assert (forall ((kitten_74 (Array Int potato_19))) (<= 0 (spoon_78 kitten_74)) ))
(assert (<= 0 cat_79))
(assert (forall ((kitten_75 (Array Int potato_19))) (<= 0 (spoon_80 kitten_75)) ))
(assert (<= 0 cat_81))
(assert (forall ((kitten_76 (Array Int potato_19))) (<= 0 (spoon_82 kitten_76)) ))
(declare-fun spoon_83 ((Array Int potato_19) (Array Int potato_19)) Bool)
(declare-datatypes ((potato_22 0)) (((mk_potato_22 (get_potato_22_a potato_13) (get_potato_22_b (Array Int potato_19))))))

(define-fun spoon_84 ((kitten_77 potato_22)) potato_13 (get_potato_22_a kitten_77))
(define-fun spoon_85 ((kitten_78 potato_22)) (Array Int potato_19) (get_potato_22_b kitten_78))
(declare-datatypes ((potato_23 0)) (((mk_potato_23 (get_potato_23_a potato_22)))))

(define-fun spoon_86 ((kitten_79 potato_23)) potato_22 (get_potato_23_a kitten_79))
(declare-datatypes ((potato_24 0)) (((mk_potato_24 (get_potato_24_a potato_22)))))

(define-fun spoon_87 ((kitten_80 potato_24)) potato_22 (get_potato_24_a kitten_80))
(define-fun spoon_88 ((kitten_81 potato_24) (kitten_82 potato_24)) Bool (let ((_let_0 (get_potato_24_a kitten_81))) (let ((_let_1 (get_potato_24_a kitten_82))) (ite (and (= (spoon_45 (get_potato_22_a _let_0)) (spoon_45 (get_potato_22_a _let_1))) (= (spoon_75 (get_potato_22_b _let_0) 1 30 (get_potato_22_b _let_1) 1 30) true)) true false))))
(declare-fun cat_89 () Int)
(declare-fun spoon_90 (potato_24) Int)
(declare-fun cat_91 () Int)
(declare-fun spoon_92 (potato_24) Int)
(assert (<= 0 cat_89))
(assert (forall ((kitten_83 potato_24)) (<= 0 (spoon_90 kitten_83)) ))
(assert (<= 0 cat_91))
(assert (forall ((kitten_84 potato_24)) (<= 0 (spoon_92 kitten_84)) ))
(declare-fun cat_93 () Int)
(declare-fun cat_94 () Int)
(declare-fun cat_95 () Int)
(assert (<= 0 cat_93))
(assert (< cat_93 cat_94))
(assert (<= 0 cat_95))
(declare-fun cat_96 () Int)
(declare-fun cat_97 () Int)
(declare-fun cat_98 () Int)
(assert (<= 0 cat_96))
(assert (< cat_96 cat_97))
(assert (<= 0 cat_98))
(declare-fun spoon_99 (potato_24 potato_24) Bool)
(declare-fun cat_100 () potato_24)
(declare-datatypes ((potato_25 0)) (((mk_potato_25 (get_potato_25_a potato_24)))))

(define-fun spoon_101 ((kitten_85 potato_25)) potato_24 (get_potato_25_a kitten_85))
(declare-fun spoon_102 (potato_19 potato_19) (_ FloatingPoint 8 24))
(declare-fun spoon_103 ((_ FloatingPoint 8 24) potato_19 potato_19) Bool)
(declare-sort potato_26 0)
(define-fun spoon_104 ((kitten_86 (_ FloatingPoint 8 24))) Bool (and (spoon_1 kitten_86) (and (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) kitten_86) (fp.leq kitten_86 (fp (_ bv0 1) (_ bv140 8) (_ bv3489792 23))))))
(declare-fun spoon_105 (potato_26 potato_26) Bool)
(declare-fun spoon_106 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_107 (potato_5) Bool)
(declare-fun spoon_108 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_109 () potato_26)
(declare-datatypes ((potato_27 0)) (((mk_potato_27 (get_potato_27_a potato_26)))))

(define-fun spoon_110 ((kitten_87 potato_27)) potato_26 (get_potato_27_a kitten_87))
(define-fun spoon_111 ((kitten_88 (_ FloatingPoint 8 24)) (kitten_89 Bool) (kitten_90 Bool) (kitten_91 Bool) (kitten_92 Bool)) Bool (=> (or (= kitten_89 true) (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv140 8) (_ bv3489792 23)))) (spoon_104 kitten_88)))
(assert (forall ((kitten_93 potato_19) (kitten_94 potato_19)) (! (spoon_111 (spoon_102 kitten_93 kitten_94) true false true true) :pattern ((spoon_102 kitten_93 kitten_94)))))
(declare-sort potato_28 0)
(declare-fun spoon_112 (potato_28) Int)
(assert (forall ((kitten_95 potato_28)) (let ((_let_0 (spoon_112 kitten_95))) (and (<= (- 128) _let_0) (<= _let_0 127))) ))
(define-fun spoon_113 ((kitten_96 Int)) Bool (and (<= (- 128) kitten_96) (<= kitten_96 127)))
(declare-fun spoon_114 (Int) potato_5)
(declare-fun spoon_115 (potato_5) Bool)
(declare-fun spoon_116 (potato_5) Int)
(declare-fun spoon_117 (potato_28 potato_28) Bool)
(declare-fun cat_118 () potato_28)
(declare-datatypes ((potato_29 0)) (((mk_potato_29 (get_potato_29_a potato_28)))))

(define-fun spoon_119 ((kitten_97 potato_29)) potato_28 (get_potato_29_a kitten_97))
(declare-sort potato_30 0)
(declare-fun spoon_120 (potato_30) Int)
(assert (forall ((kitten_98 potato_30)) (let ((_let_0 (spoon_120 kitten_98))) (and (<= 1 _let_0) (<= _let_0 30))) ))
(define-fun spoon_121 ((kitten_99 Int)) Bool (and (<= 1 kitten_99) (<= kitten_99 30)))
(declare-fun spoon_122 (Int) potato_5)
(declare-fun spoon_123 (potato_5) Bool)
(declare-fun spoon_124 (potato_5) Int)
(declare-fun spoon_125 (potato_30 potato_30) Bool)
(declare-fun cat_126 () potato_30)
(declare-datatypes ((potato_31 0)) (((mk_potato_31 (get_potato_31_a potato_30)))))

(define-fun spoon_127 ((kitten_100 potato_31)) potato_30 (get_potato_31_a kitten_100))
(declare-fun cat_128 () potato_24)
(declare-fun cat_129 () Int)
(declare-fun cat_130 () Int)
(declare-fun cat_131 () Int)
(define-fun spoon_132 ((kitten_101 (_ FloatingPoint 8 24)) (kitten_102 Bool) (kitten_103 Bool) (kitten_104 Bool) (kitten_105 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv139 8) (_ bv0 23)))) (=> (or (= kitten_102 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_47 kitten_101))))
(define-fun spoon_133 ((kitten_106 Int) (kitten_107 Bool) (kitten_108 Bool) (kitten_109 Bool) (kitten_110 Bool)) Bool (=> (or (= kitten_107 true) (<= 1 30)) (spoon_121 kitten_106)))
(define-fun spoon_134 ((kitten_111 Int) (kitten_112 Bool) (kitten_113 Bool) (kitten_114 Bool) (kitten_115 Bool)) Bool (=> (or (= kitten_112 true) (<= 3 30)) (spoon_38 kitten_111)))
(declare-fun cat_135 () (_ FloatingPoint 8 24))
(declare-fun cat_136 () (_ FloatingPoint 8 24))
(declare-fun cat_137 () Int)
(declare-fun cat_138 () Int)
(declare-fun cat_139 () (_ FloatingPoint 8 24))
(declare-fun cat_140 () Int)
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv147 8) (_ bv56192 23))) (spoon_29 cat_135)))
(assert (let ((_let_0 (get_potato_24_a cat_128))) (let ((_let_1 (get_potato_22_b _let_0))) (= cat_136 (spoon_102 (select _let_1 1) (select _let_1 (spoon_45 (get_potato_22_a _let_0))))))))
(assert (spoon_104 cat_136))
(assert (= cat_138 1))
(assert (<= 1 cat_138))
(assert (<= cat_138 (- (spoon_45 (get_potato_22_a (get_potato_24_a cat_128))) 1)))
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv147 8) (_ bv56192 23))) (spoon_29 cat_139)))
(assert (<= 1 cat_140))
(assert (<= cat_140 (- (spoon_45 (get_potato_22_a (get_potato_24_a cat_128))) 1)))
(assert (= cat_137 (+ cat_140 1)))
(assert (spoon_113 (+ cat_140 1)))
(assert (not (<= cat_137 30)))
(check-sat)
(exit)
