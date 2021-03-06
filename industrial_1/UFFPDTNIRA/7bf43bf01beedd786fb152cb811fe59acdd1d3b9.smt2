;; This file has been translated by CVC4 from an earlier
;; version of SMTLIB to 2.6 using the script
;; translate_benchmarks.py in repo smtlib_schanda.

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :source |Benchmarks generated from industrial code by Florian Schanda using SPARK 2014 and an SMTLIB Obfuscation Script|)
(set-info :category industrial)
(set-info :status unsat)
(set-logic UFFPDTNIRA)

(define-fun spoon_1 ((kitten_1 (_ FloatingPoint 8 24))) Bool (not (or (fp.isInfinite kitten_1) (fp.isNaN kitten_1))))
(define-fun spoon_2 ((kitten_2 (_ FloatingPoint 8 24))) Bool (or (fp.isZero kitten_2) (and (fp.isNormal kitten_2) (= kitten_2 (fp.roundToIntegral roundNearestTiesToEven kitten_2)))))
(define-fun spoon_3 ((kitten_3 (_ FloatingPoint 11 53))) Bool (not (or (fp.isInfinite kitten_3) (fp.isNaN kitten_3))))
(define-fun spoon_4 ((kitten_4 (_ FloatingPoint 11 53))) Bool (or (fp.isZero kitten_4) (and (fp.isNormal kitten_4) (= kitten_4 (fp.roundToIntegral roundNearestTiesToEven kitten_4)))))
(declare-datatypes ((potato_1 0)) (((mk_potato_1))))

(declare-sort potato_2 0)
(declare-fun spoon_5 (potato_2 potato_2) Bool)
(declare-fun cat_6 () potato_2)
(declare-sort potato_3 0)
(declare-datatypes ((potato_4 0)) (((mk_potato_4 (get_potato_4_a potato_3)))))

(declare-sort potato_5 0)
(declare-datatypes ((potato_6 0)) (((mk_potato_6 (get_potato_6_a Int)))))

(declare-datatypes ((potato_7 0)) (((mk_potato_7 (get_potato_7_a Bool)))))

(declare-datatypes ((potato_8 0)) (((mk_potato_8 (get_potato_8_a Real)))))

(declare-datatypes ((potato_9 0)) (((mk_potato_9 (get_potato_9_a potato_2)))))

(define-fun spoon_7 ((kitten_5 potato_6)) Int (get_potato_6_a kitten_5))
(define-fun spoon_8 ((kitten_6 potato_7)) Bool (get_potato_7_a kitten_6))
(define-fun spoon_9 ((kitten_7 potato_8)) Real (get_potato_8_a kitten_7))
(define-fun spoon_10 ((kitten_8 potato_9)) potato_2 (get_potato_9_a kitten_8))
(declare-fun spoon_11 (Int) Int)
(define-fun spoon_12 ((kitten_9 (_ FloatingPoint 8 24))) Bool (and (fp.isInfinite kitten_9) (fp.isPositive kitten_9)))
(define-fun spoon_13 ((kitten_10 (_ FloatingPoint 8 24))) Bool (and (fp.isInfinite kitten_10) (fp.isNegative kitten_10)))
(define-fun spoon_14 ((kitten_11 (_ FloatingPoint 8 24))) Bool (and (fp.isZero kitten_11) (fp.isPositive kitten_11)))
(define-fun spoon_15 ((kitten_12 (_ FloatingPoint 8 24))) Bool (and (fp.isZero kitten_12) (fp.isNegative kitten_12)))
(declare-fun cat_16 () Int)
(define-fun spoon_17 ((kitten_13 Int)) Bool (and (<= (- cat_16) kitten_13) (<= kitten_13 cat_16)))
(define-fun spoon_18 ((kitten_14 Int)) Bool (and (<= (- 16777216) kitten_14) (<= kitten_14 16777216)))
(define-fun spoon_19 ((kitten_15 (_ FloatingPoint 8 24)) (kitten_16 (_ FloatingPoint 8 24))) Bool (or (and (fp.isPositive kitten_15) (fp.isPositive kitten_16)) (and (fp.isNegative kitten_15) (fp.isNegative kitten_16))))
(define-fun spoon_20 ((kitten_17 (_ FloatingPoint 8 24)) (kitten_18 (_ FloatingPoint 8 24))) Bool (or (and (fp.isPositive kitten_17) (fp.isNegative kitten_18)) (and (fp.isNegative kitten_17) (fp.isPositive kitten_18))))
(define-fun spoon_21 ((kitten_19 (_ FloatingPoint 8 24)) (kitten_20 (_ FloatingPoint 8 24)) (kitten_21 (_ FloatingPoint 8 24))) Bool (and (=> (spoon_19 kitten_20 kitten_21) (fp.isPositive kitten_19)) (=> (spoon_20 kitten_20 kitten_21) (fp.isNegative kitten_19))))
(define-fun spoon_22 ((kitten_22 Real)) Real (* kitten_22 kitten_22))
(declare-fun spoon_23 (Real) Real)
(define-fun spoon_24 ((kitten_23 (_ FloatingPoint 8 24)) (kitten_24 Real)) Bool (let ((_let_0 (/ 0 1))) (or (and (fp.isPositive kitten_23) (< _let_0 kitten_24)) (and (fp.isNegative kitten_23) (< kitten_24 _let_0)))))
(declare-datatypes ((potato_10 0)) (((mk_potato_10 (get_potato_10_a (_ FloatingPoint 8 24))))))

(define-fun spoon_25 ((kitten_25 (_ FloatingPoint 11 53))) Bool (and (fp.isInfinite kitten_25) (fp.isPositive kitten_25)))
(define-fun spoon_26 ((kitten_26 (_ FloatingPoint 11 53))) Bool (and (fp.isInfinite kitten_26) (fp.isNegative kitten_26)))
(define-fun spoon_27 ((kitten_27 (_ FloatingPoint 11 53))) Bool (and (fp.isZero kitten_27) (fp.isPositive kitten_27)))
(define-fun spoon_28 ((kitten_28 (_ FloatingPoint 11 53))) Bool (and (fp.isZero kitten_28) (fp.isNegative kitten_28)))
(declare-fun cat_29 () Int)
(define-fun spoon_30 ((kitten_29 Int)) Bool (and (<= (- cat_29) kitten_29) (<= kitten_29 cat_29)))
(define-fun spoon_31 ((kitten_30 Int)) Bool (and (<= (- 9007199254740992) kitten_30) (<= kitten_30 9007199254740992)))
(define-fun spoon_32 ((kitten_31 (_ FloatingPoint 11 53)) (kitten_32 (_ FloatingPoint 11 53))) Bool (or (and (fp.isPositive kitten_31) (fp.isPositive kitten_32)) (and (fp.isNegative kitten_31) (fp.isNegative kitten_32))))
(define-fun spoon_33 ((kitten_33 (_ FloatingPoint 11 53)) (kitten_34 (_ FloatingPoint 11 53))) Bool (or (and (fp.isPositive kitten_33) (fp.isNegative kitten_34)) (and (fp.isNegative kitten_33) (fp.isPositive kitten_34))))
(define-fun spoon_34 ((kitten_35 (_ FloatingPoint 11 53)) (kitten_36 (_ FloatingPoint 11 53)) (kitten_37 (_ FloatingPoint 11 53))) Bool (and (=> (spoon_32 kitten_36 kitten_37) (fp.isPositive kitten_35)) (=> (spoon_33 kitten_36 kitten_37) (fp.isNegative kitten_35))))
(define-fun spoon_35 ((kitten_38 (_ FloatingPoint 11 53)) (kitten_39 Real)) Bool (let ((_let_0 (/ 0 1))) (or (and (fp.isPositive kitten_38) (< _let_0 kitten_39)) (and (fp.isNegative kitten_38) (< kitten_39 _let_0)))))
(declare-datatypes ((potato_11 0)) (((mk_potato_11 (get_potato_11_a (_ FloatingPoint 11 53))))))

(define-fun spoon_36 ((kitten_40 Int)) Bool (or (= kitten_40 0) (= kitten_40 1)))
(declare-fun spoon_37 (Bool) potato_5)
(declare-fun spoon_38 (potato_5) Bool)
(declare-fun spoon_39 (potato_5) Bool)
(declare-fun spoon_40 ((_ FloatingPoint 8 24)) (_ FloatingPoint 8 24))
(declare-fun spoon_41 ((_ FloatingPoint 8 24) (_ FloatingPoint 8 24)) Bool)
(declare-sort potato_12 0)
(define-fun spoon_42 ((kitten_41 (_ FloatingPoint 8 24))) Bool (and (spoon_1 kitten_41) (and (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) kitten_41) (fp.leq kitten_41 (fp (_ bv0 1) (_ bv135 8) (_ bv3407872 23))))))
(declare-fun spoon_43 (potato_12 potato_12) Bool)
(declare-fun spoon_44 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_45 (potato_5) Bool)
(declare-fun spoon_46 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_47 () potato_12)
(declare-datatypes ((potato_13 0)) (((mk_potato_13 (get_potato_13_a potato_12)))))

(define-fun spoon_48 ((kitten_42 potato_13)) potato_12 (get_potato_13_a kitten_42))
(define-fun spoon_49 ((kitten_43 (_ FloatingPoint 8 24)) (kitten_44 Bool) (kitten_45 Bool) (kitten_46 Bool) (kitten_47 Bool)) Bool (=> (or (= kitten_44 true) (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv135 8) (_ bv3407872 23)))) (spoon_42 kitten_43)))
(declare-sort potato_14 0)
(define-fun spoon_50 ((kitten_48 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (and (spoon_1 kitten_48) (and (fp.leq (fp.neg _let_0) kitten_48) (fp.leq kitten_48 _let_0)))))
(declare-fun spoon_51 (potato_14 potato_14) Bool)
(declare-fun spoon_52 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_53 (potato_5) Bool)
(declare-fun spoon_54 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_55 () potato_14)
(declare-datatypes ((potato_15 0)) (((mk_potato_15 (get_potato_15_a potato_14)))))

(define-fun spoon_56 ((kitten_49 potato_15)) potato_14 (get_potato_15_a kitten_49))
(define-fun spoon_57 ((kitten_50 (_ FloatingPoint 8 24)) (kitten_51 Bool) (kitten_52 Bool) (kitten_53 Bool) (kitten_54 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (=> (or (= kitten_51 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_50 kitten_50))))
(assert (forall ((kitten_55 (_ FloatingPoint 8 24))) (! (=> (spoon_49 kitten_55 true true true true) (spoon_57 (spoon_40 kitten_55) true false true true)) :pattern ((spoon_40 kitten_55)))))
(declare-fun spoon_58 ((_ FloatingPoint 8 24)) (_ FloatingPoint 8 24))
(declare-fun spoon_59 ((_ FloatingPoint 8 24) (_ FloatingPoint 8 24)) Bool)
(assert (forall ((kitten_56 (_ FloatingPoint 8 24))) (! (=> (spoon_49 kitten_56 true true true true) (spoon_57 (spoon_58 kitten_56) true false true true)) :pattern ((spoon_58 kitten_56)))))
(declare-fun spoon_60 ((_ FloatingPoint 8 24)) (_ FloatingPoint 8 24))
(declare-fun spoon_61 ((_ FloatingPoint 8 24) (_ FloatingPoint 8 24)) Bool)
(declare-sort potato_16 0)
(define-fun spoon_62 ((kitten_57 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv133 8) (_ bv3407872 23)))) (and (spoon_1 kitten_57) (and (fp.leq (fp.neg _let_0) kitten_57) (fp.leq kitten_57 _let_0)))))
(declare-fun spoon_63 (potato_16 potato_16) Bool)
(declare-fun spoon_64 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_65 (potato_5) Bool)
(declare-fun spoon_66 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_67 () potato_16)
(declare-datatypes ((potato_17 0)) (((mk_potato_17 (get_potato_17_a potato_16)))))

(define-fun spoon_68 ((kitten_58 potato_17)) potato_16 (get_potato_17_a kitten_58))
(define-fun spoon_69 ((kitten_59 (_ FloatingPoint 8 24)) (kitten_60 Bool) (kitten_61 Bool) (kitten_62 Bool) (kitten_63 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv133 8) (_ bv3407872 23)))) (=> (or (= kitten_60 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_62 kitten_59))))
(assert (forall ((kitten_64 (_ FloatingPoint 8 24))) (! (=> (spoon_69 kitten_64 true true true true) (spoon_49 (spoon_60 kitten_64) true false true true)) :pattern ((spoon_60 kitten_64)))))
(declare-fun spoon_70 ((_ FloatingPoint 8 24)) (_ FloatingPoint 8 24))
(declare-fun spoon_71 ((_ FloatingPoint 8 24) (_ FloatingPoint 8 24)) Bool)
(declare-sort potato_18 0)
(define-fun spoon_72 ((kitten_65 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv135 8) (_ bv3407872 23)))) (and (spoon_1 kitten_65) (and (fp.leq (fp.neg _let_0) kitten_65) (fp.leq kitten_65 _let_0)))))
(declare-fun spoon_73 (potato_18 potato_18) Bool)
(declare-fun spoon_74 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_75 (potato_5) Bool)
(declare-fun spoon_76 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_77 () potato_18)
(declare-datatypes ((potato_19 0)) (((mk_potato_19 (get_potato_19_a potato_18)))))

(define-fun spoon_78 ((kitten_66 potato_19)) potato_18 (get_potato_19_a kitten_66))
(define-fun spoon_79 ((kitten_67 (_ FloatingPoint 8 24)) (kitten_68 Bool) (kitten_69 Bool) (kitten_70 Bool) (kitten_71 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv135 8) (_ bv3407872 23)))) (=> (or (= kitten_68 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_72 kitten_67))))
(assert (forall ((kitten_72 (_ FloatingPoint 8 24))) (! (=> (spoon_79 kitten_72 true true true true) (spoon_49 (spoon_70 kitten_72) true false true true)) :pattern ((spoon_70 kitten_72)))))
(declare-fun spoon_80 ((_ FloatingPoint 8 24)) (_ FloatingPoint 8 24))
(declare-fun spoon_81 ((_ FloatingPoint 8 24) (_ FloatingPoint 8 24)) Bool)
(declare-fun cat_82 () (_ FloatingPoint 11 53))
(declare-fun cat_83 () Int)
(declare-fun cat_84 () (_ FloatingPoint 8 24))
(declare-fun cat_85 () Int)
(assert (forall ((kitten_73 (_ FloatingPoint 8 24))) (! (=> (and (spoon_69 kitten_73 true true true true) (and (and (fp.leq (fp (_ bv0 1) (_ bv117 8) (_ bv201327 23)) cat_84) (fp.leq cat_84 (fp (_ bv0 1) (_ bv120 8) (_ bv2348810 23)))) (and (fp.leq (fp (_ bv0 1) (_ bv1016 11) (_ bv1261007895663739 52)) cat_82) (fp.leq cat_82 (fp (_ bv0 1) (_ bv1019 11) (_ bv2702159776422298 52)))))) (spoon_69 (spoon_80 kitten_73) true false true true)) :pattern ((spoon_80 kitten_73)))))
(declare-fun spoon_86 (potato_16) (_ FloatingPoint 8 24))
(declare-fun spoon_87 ((_ FloatingPoint 8 24)) potato_16)
(assert (forall ((kitten_74 potato_16)) (! (= (spoon_87 (spoon_86 kitten_74)) kitten_74) :pattern ((spoon_86 kitten_74)))))
(assert (forall ((kitten_75 potato_16)) (! (spoon_62 (spoon_86 kitten_75)) :pattern ((spoon_86 kitten_75)))))
(assert (forall ((kitten_76 (_ FloatingPoint 8 24))) (! (=> (spoon_62 kitten_76) (= (spoon_86 (spoon_87 kitten_76)) kitten_76)) :pattern ((spoon_86 (spoon_87 kitten_76))))))
(declare-sort potato_20 0)
(define-fun spoon_88 ((kitten_77 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv134 8) (_ bv3407872 23)))) (and (spoon_1 kitten_77) (and (fp.leq (fp.neg _let_0) kitten_77) (fp.leq kitten_77 _let_0)))))
(declare-fun spoon_89 (potato_20 potato_20) Bool)
(declare-fun spoon_90 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_91 (potato_5) Bool)
(declare-fun spoon_92 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_93 () potato_20)
(declare-datatypes ((potato_21 0)) (((mk_potato_21 (get_potato_21_a potato_20)))))

(define-fun spoon_94 ((kitten_78 potato_21)) potato_20 (get_potato_21_a kitten_78))
(declare-fun spoon_95 (potato_20) (_ FloatingPoint 8 24))
(declare-fun spoon_96 ((_ FloatingPoint 8 24)) potato_20)
(assert (forall ((kitten_79 potato_20)) (! (= (spoon_96 (spoon_95 kitten_79)) kitten_79) :pattern ((spoon_95 kitten_79)))))
(assert (forall ((kitten_80 potato_20)) (! (spoon_88 (spoon_95 kitten_80)) :pattern ((spoon_95 kitten_80)))))
(assert (forall ((kitten_81 (_ FloatingPoint 8 24))) (! (=> (spoon_88 kitten_81) (= (spoon_95 (spoon_96 kitten_81)) kitten_81)) :pattern ((spoon_95 (spoon_96 kitten_81))))))
(declare-datatypes ((potato_22 0)) (((mk_potato_22 (get_potato_22_a potato_16) (get_potato_22_b potato_20)))))

(define-fun spoon_97 ((kitten_82 potato_22)) potato_16 (get_potato_22_a kitten_82))
(define-fun spoon_98 ((kitten_83 potato_22)) potato_20 (get_potato_22_b kitten_83))
(declare-datatypes ((potato_23 0)) (((mk_potato_23 (get_potato_23_a potato_22)))))

(define-fun spoon_99 ((kitten_84 potato_23)) potato_22 (get_potato_23_a kitten_84))
(declare-datatypes ((potato_24 0)) (((mk_potato_24 (get_potato_24_a potato_22)))))

(define-fun spoon_100 ((kitten_85 potato_24)) potato_22 (get_potato_24_a kitten_85))
(define-fun spoon_101 ((kitten_86 potato_24) (kitten_87 potato_24)) Bool (let ((_let_0 (get_potato_24_a kitten_86))) (let ((_let_1 (get_potato_24_a kitten_87))) (ite (and (= (spoon_86 (get_potato_22_a _let_0)) (spoon_86 (get_potato_22_a _let_1))) (= (spoon_95 (get_potato_22_b _let_0)) (spoon_95 (get_potato_22_b _let_1)))) true false))))
(declare-fun cat_102 () Int)
(declare-fun spoon_103 (potato_24) Int)
(declare-fun cat_104 () Int)
(declare-fun spoon_105 (potato_24) Int)
(assert (<= 0 cat_102))
(assert (forall ((kitten_88 potato_24)) (<= 0 (spoon_103 kitten_88)) ))
(assert (<= 0 cat_104))
(assert (forall ((kitten_89 potato_24)) (<= 0 (spoon_105 kitten_89)) ))
(declare-fun cat_106 () Int)
(declare-fun cat_107 () Int)
(declare-fun cat_108 () Int)
(assert (<= 0 cat_106))
(assert (< cat_106 cat_107))
(assert (<= 0 cat_108))
(declare-fun cat_109 () Int)
(declare-fun cat_110 () Int)
(declare-fun cat_111 () Int)
(assert (<= 0 cat_109))
(assert (< cat_109 cat_110))
(assert (<= 0 cat_111))
(declare-fun spoon_112 (potato_24 potato_24) Bool)
(declare-fun cat_113 () potato_24)
(declare-datatypes ((potato_25 0)) (((mk_potato_25 (get_potato_25_a potato_24)))))

(define-fun spoon_114 ((kitten_90 potato_25)) potato_24 (get_potato_25_a kitten_90))
(declare-sort potato_26 0)
(declare-fun spoon_115 (potato_26 potato_26) Bool)
(declare-fun spoon_116 ((_ FloatingPoint 11 53)) potato_5)
(declare-fun spoon_117 (potato_5) Bool)
(declare-fun spoon_118 (potato_5) (_ FloatingPoint 11 53))
(declare-fun cat_119 () potato_26)
(declare-datatypes ((potato_27 0)) (((mk_potato_27 (get_potato_27_a potato_26)))))

(define-fun spoon_120 ((kitten_91 potato_27)) potato_26 (get_potato_27_a kitten_91))
(declare-sort potato_28 0)
(declare-fun spoon_121 (potato_28 potato_28) Bool)
(declare-fun spoon_122 ((_ FloatingPoint 11 53)) potato_5)
(declare-fun spoon_123 (potato_5) Bool)
(declare-fun spoon_124 (potato_5) (_ FloatingPoint 11 53))
(declare-fun cat_125 () potato_28)
(declare-datatypes ((potato_29 0)) (((mk_potato_29 (get_potato_29_a potato_28)))))

(define-fun spoon_126 ((kitten_92 potato_29)) potato_28 (get_potato_29_a kitten_92))
(define-fun spoon_127 ((kitten_93 (_ FloatingPoint 11 53)) (kitten_94 Bool) (kitten_95 Bool) (kitten_96 Bool) (kitten_97 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (or (= kitten_94 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_3 kitten_93))))
(declare-sort potato_30 0)
(define-fun spoon_128 ((kitten_98 (_ FloatingPoint 11 53))) Bool (and (spoon_3 kitten_98) (and (fp.leq (fp (_ bv0 1) (_ bv1034 11) (_ bv2973079441506304 52)) kitten_98) (fp.leq kitten_98 (fp (_ bv0 1) (_ bv1034 11) (_ bv3192981767061504 52))))))
(declare-fun spoon_129 (potato_30 potato_30) Bool)
(declare-fun spoon_130 ((_ FloatingPoint 11 53)) potato_5)
(declare-fun spoon_131 (potato_5) Bool)
(declare-fun spoon_132 (potato_5) (_ FloatingPoint 11 53))
(declare-fun cat_133 () potato_30)
(declare-datatypes ((potato_31 0)) (((mk_potato_31 (get_potato_31_a potato_30)))))

(define-fun spoon_134 ((kitten_99 potato_31)) potato_30 (get_potato_31_a kitten_99))
(define-fun spoon_135 ((kitten_100 (_ FloatingPoint 11 53)) (kitten_101 Bool) (kitten_102 Bool) (kitten_103 Bool) (kitten_104 Bool)) Bool (=> (or (= kitten_101 true) (fp.leq (fp (_ bv0 1) (_ bv1034 11) (_ bv2973079441506304 52)) (fp (_ bv0 1) (_ bv1034 11) (_ bv3192981767061504 52)))) (spoon_128 kitten_100)))
(declare-sort potato_32 0)
(define-fun spoon_136 ((kitten_105 (_ FloatingPoint 11 53))) Bool (and (spoon_3 kitten_105) (and (fp.leq (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)) kitten_105) (fp.leq kitten_105 (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52))))))
(declare-fun spoon_137 (potato_32 potato_32) Bool)
(declare-fun spoon_138 ((_ FloatingPoint 11 53)) potato_5)
(declare-fun spoon_139 (potato_5) Bool)
(declare-fun spoon_140 (potato_5) (_ FloatingPoint 11 53))
(declare-fun cat_141 () potato_32)
(declare-datatypes ((potato_33 0)) (((mk_potato_33 (get_potato_33_a potato_32)))))

(define-fun spoon_142 ((kitten_106 potato_33)) potato_32 (get_potato_33_a kitten_106))
(define-fun spoon_143 ((kitten_107 (_ FloatingPoint 11 53)) (kitten_108 Bool) (kitten_109 Bool) (kitten_110 Bool) (kitten_111 Bool)) Bool (=> (or (= kitten_108 true) (fp.leq (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)) (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)))) (spoon_136 kitten_107)))
(declare-sort potato_34 0)
(define-fun spoon_144 ((kitten_112 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (and (spoon_1 kitten_112) (and (fp.leq (fp.neg _let_0) kitten_112) (fp.leq kitten_112 _let_0)))))
(declare-fun spoon_145 (potato_34 potato_34) Bool)
(declare-fun spoon_146 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_147 (potato_5) Bool)
(declare-fun spoon_148 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_149 () potato_34)
(declare-datatypes ((potato_35 0)) (((mk_potato_35 (get_potato_35_a potato_34)))))

(define-fun spoon_150 ((kitten_113 potato_35)) potato_34 (get_potato_35_a kitten_113))
(define-fun spoon_151 ((kitten_114 (_ FloatingPoint 8 24)) (kitten_115 Bool) (kitten_116 Bool) (kitten_117 Bool) (kitten_118 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (=> (or (= kitten_115 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_144 kitten_114))))
(declare-fun cat_152 () potato_24)
(declare-fun cat_153 () Int)
(declare-fun cat_154 () potato_24)
(declare-fun cat_155 () Int)
(declare-fun cat_156 () (_ FloatingPoint 11 53))
(declare-fun cat_157 () Int)
(declare-fun cat_158 () Int)
(declare-fun cat_159 () Int)
(declare-fun cat_160 () Int)
(declare-fun cat_161 () Int)
(declare-fun cat_162 () Int)
(declare-fun cat_163 () Int)
(declare-fun cat_164 () Int)
(declare-fun cat_165 () Int)
(declare-fun cat_166 () Int)
(declare-fun cat_167 () Int)
(declare-fun cat_168 () Int)
(declare-fun cat_169 () Int)
(declare-fun cat_170 () Int)
(declare-fun cat_171 () Int)
(declare-fun cat_172 () Int)
(declare-fun cat_173 () Int)
(define-fun spoon_174 ((kitten_119 (_ FloatingPoint 8 24)) (kitten_120 Bool) (kitten_121 Bool) (kitten_122 Bool) (kitten_123 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv134 8) (_ bv3407872 23)))) (=> (or (= kitten_120 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_88 kitten_119))))
(declare-fun cat_175 () (_ FloatingPoint 11 53))
(declare-fun cat_176 () (_ FloatingPoint 11 53))
(declare-fun cat_177 () (_ FloatingPoint 8 24))
(declare-fun cat_178 () (_ FloatingPoint 8 24))
(declare-fun cat_179 () (_ FloatingPoint 8 24))
(declare-fun cat_180 () (_ FloatingPoint 11 53))
(declare-fun cat_181 () (_ FloatingPoint 11 53))
(declare-fun cat_182 () (_ FloatingPoint 11 53))
(declare-fun cat_183 () (_ FloatingPoint 11 53))
(declare-fun cat_184 () (_ FloatingPoint 11 53))
(declare-fun cat_185 () (_ FloatingPoint 11 53))
(declare-fun cat_186 () (_ FloatingPoint 11 53))
(declare-fun cat_187 () (_ FloatingPoint 11 53))
(declare-fun cat_188 () (_ FloatingPoint 11 53))
(declare-fun cat_189 () (_ FloatingPoint 11 53))
(declare-fun cat_190 () (_ FloatingPoint 11 53))
(declare-fun cat_191 () (_ FloatingPoint 8 24))
(declare-fun cat_192 () (_ FloatingPoint 8 24))
(declare-fun cat_193 () (_ FloatingPoint 8 24))
(declare-fun cat_194 () (_ FloatingPoint 8 24))
(declare-fun cat_195 () (_ FloatingPoint 8 24))
(declare-fun cat_196 () (_ FloatingPoint 11 53))
(declare-fun cat_197 () (_ FloatingPoint 8 24))
(declare-fun cat_198 () (_ FloatingPoint 11 53))
(declare-fun cat_199 () (_ FloatingPoint 8 24))
(declare-fun cat_200 () (_ FloatingPoint 11 53))
(declare-fun cat_201 () (_ FloatingPoint 8 24))
(declare-fun cat_202 () (_ FloatingPoint 11 53))
(declare-fun cat_203 () (_ FloatingPoint 8 24))
(declare-fun cat_204 () (_ FloatingPoint 11 53))
(declare-fun cat_205 () (_ FloatingPoint 8 24))
(declare-fun cat_206 () (_ FloatingPoint 11 53))
(declare-fun cat_207 () (_ FloatingPoint 11 53))
(declare-fun cat_208 () (_ FloatingPoint 11 53))
(declare-fun cat_209 () (_ FloatingPoint 11 53))
(declare-fun cat_210 () (_ FloatingPoint 11 53))
(declare-fun cat_211 () (_ FloatingPoint 11 53))
(declare-fun cat_212 () (_ FloatingPoint 11 53))
(declare-fun cat_213 () (_ FloatingPoint 11 53))
(declare-fun cat_214 () (_ FloatingPoint 11 53))
(declare-fun cat_215 () (_ FloatingPoint 11 53))
(declare-fun cat_216 () (_ FloatingPoint 11 53))
(declare-fun cat_217 () (_ FloatingPoint 11 53))
(declare-fun cat_218 () (_ FloatingPoint 11 53))
(declare-fun cat_219 () (_ FloatingPoint 11 53))
(declare-fun cat_220 () (_ FloatingPoint 11 53))
(declare-fun cat_221 () Bool)
(declare-fun cat_222 () Bool)
(declare-fun cat_223 () (_ FloatingPoint 11 53))
(declare-fun cat_224 () (_ FloatingPoint 11 53))
(declare-fun cat_225 () Bool)
(declare-fun cat_226 () Bool)
(declare-fun cat_227 () (_ FloatingPoint 11 53))
(declare-fun cat_228 () (_ FloatingPoint 11 53))
(declare-fun cat_229 () (_ FloatingPoint 11 53))
(declare-fun cat_230 () (_ FloatingPoint 11 53))
(declare-fun cat_231 () (_ FloatingPoint 11 53))
(declare-fun cat_232 () (_ FloatingPoint 11 53))
(declare-fun cat_233 () (_ FloatingPoint 11 53))
(declare-fun cat_234 () (_ FloatingPoint 8 24))
(declare-fun cat_235 () (_ FloatingPoint 8 24))
(declare-fun cat_236 () (_ FloatingPoint 8 24))
(declare-fun cat_237 () (_ FloatingPoint 8 24))
(declare-fun cat_238 () (_ FloatingPoint 8 24))
(declare-fun cat_239 () (_ FloatingPoint 8 24))
(declare-fun cat_240 () (_ FloatingPoint 11 53))
(declare-fun cat_241 () (_ FloatingPoint 11 53))
(declare-fun cat_242 () (_ FloatingPoint 11 53))
(declare-fun cat_243 () (_ FloatingPoint 11 53))
(declare-fun cat_244 () potato_11)
(declare-fun cat_245 () (_ FloatingPoint 11 53))
(declare-fun cat_246 () potato_11)
(declare-fun cat_247 () (_ FloatingPoint 11 53))
(declare-fun cat_248 () potato_11)
(declare-fun cat_249 () (_ FloatingPoint 11 53))
(declare-fun cat_250 () potato_11)
(declare-fun cat_251 () (_ FloatingPoint 11 53))
(declare-fun cat_252 () potato_11)
(declare-fun cat_253 () (_ FloatingPoint 11 53))
(declare-fun cat_254 () potato_11)
(declare-fun cat_255 () (_ FloatingPoint 11 53))
(declare-fun cat_256 () potato_11)
(declare-fun cat_257 () (_ FloatingPoint 11 53))
(declare-fun cat_258 () Bool)
(declare-fun cat_259 () Bool)
(declare-fun cat_260 () potato_11)
(declare-fun cat_261 () (_ FloatingPoint 11 53))
(declare-fun cat_262 () potato_11)
(declare-fun cat_263 () (_ FloatingPoint 11 53))
(declare-fun cat_264 () potato_11)
(declare-fun cat_265 () (_ FloatingPoint 11 53))
(declare-fun cat_266 () potato_11)
(declare-fun cat_267 () (_ FloatingPoint 11 53))
(declare-fun cat_268 () potato_11)
(declare-fun cat_269 () (_ FloatingPoint 11 53))
(define-fun spoon_270 () potato_11 (mk_potato_11 cat_175))
(assert (spoon_136 cat_82))
(assert (spoon_128 cat_156))
(assert (spoon_144 cat_84))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_175))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_176))))
(assert (and (and (fp.leq (fp (_ bv0 1) (_ bv117 8) (_ bv201327 23)) cat_84) (fp.leq cat_84 (fp (_ bv0 1) (_ bv120 8) (_ bv2348810 23)))) (and (fp.leq (fp (_ bv0 1) (_ bv1016 11) (_ bv1261007895663739 52)) cat_82) (fp.leq cat_82 (fp (_ bv0 1) (_ bv1019 11) (_ bv2702159776422298 52))))))
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv135 8) (_ bv3407872 23))) (spoon_42 cat_177)))
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv135 8) (_ bv3407872 23))) (spoon_42 cat_178)))
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv135 8) (_ bv3407872 23))) (spoon_42 cat_179)))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_180))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_181))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_182))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_183))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_184))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_185))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_186))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_187))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_188))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_189))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_3 cat_190))))
(assert (and (= cat_191 (spoon_80 (spoon_86 (get_potato_22_a (get_potato_24_a cat_152))))) (spoon_62 cat_191)))
(assert (and (= cat_192 (spoon_60 cat_191)) (spoon_42 cat_192)))
(assert (= cat_234 cat_178))
(assert (= cat_235 cat_192))
(assert (and (= cat_193 (spoon_70 (fp.sub roundNearestTiesToEven (spoon_95 (get_potato_22_b (get_potato_24_a cat_152))) (spoon_95 (get_potato_22_b (get_potato_24_a cat_154)))))) (spoon_42 cat_193)))
(assert (= cat_236 cat_177))
(assert (= cat_237 cat_193))
(assert (and (= cat_194 (spoon_60 (spoon_86 (get_potato_22_a (get_potato_24_a cat_154))))) (spoon_42 cat_194)))
(assert (= cat_238 cat_179))
(assert (= cat_239 cat_194))
(assert (and (= cat_195 (spoon_40 cat_235)) (spoon_50 cat_195)))
(assert (= cat_196 ((_ to_fp 11 53) roundNearestTiesToEven cat_195)))
(assert (= cat_240 cat_180))
(assert (= cat_241 cat_196))
(assert (and (= cat_197 (spoon_58 cat_235)) (spoon_50 cat_197)))
(assert (= cat_198 ((_ to_fp 11 53) roundNearestTiesToEven cat_197)))
(assert (= cat_242 cat_181))
(assert (= cat_243 cat_198))
(assert (and (= cat_199 (spoon_40 cat_239)) (spoon_50 cat_199)))
(assert (= cat_200 ((_ to_fp 11 53) roundNearestTiesToEven cat_199)))
(assert (= cat_244 (mk_potato_11 cat_182)))
(assert (= cat_245 cat_200))
(assert (and (= cat_201 (spoon_58 cat_239)) (spoon_50 cat_201)))
(assert (= cat_202 ((_ to_fp 11 53) roundNearestTiesToEven cat_201)))
(assert (= cat_246 (mk_potato_11 cat_183)))
(assert (= cat_247 cat_202))
(assert (and (= cat_203 (spoon_40 cat_237)) (spoon_50 cat_203)))
(assert (= cat_204 ((_ to_fp 11 53) roundNearestTiesToEven cat_203)))
(assert (= cat_248 (mk_potato_11 cat_184)))
(assert (= cat_249 cat_204))
(assert (and (= cat_205 (spoon_58 cat_237)) (spoon_50 cat_205)))
(assert (= cat_206 ((_ to_fp 11 53) roundNearestTiesToEven cat_205)))
(assert (= cat_250 (mk_potato_11 cat_185)))
(assert (= cat_251 cat_206))
(assert (let ((_let_0 (fp.mul roundNearestTiesToEven cat_243 cat_247))) (and (= cat_209 _let_0) (spoon_3 _let_0))))
(assert (= cat_210 (fp.mul roundNearestTiesToEven cat_209 cat_251)))
(assert (and (= cat_211 cat_210) (spoon_3 cat_210)))
(assert (let ((_let_0 (fp.mul roundNearestTiesToEven cat_241 cat_245))) (and (= cat_207 _let_0) (spoon_3 _let_0))))
(assert (= cat_208 (fp.add roundNearestTiesToEven (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_207)))
(assert (and (= cat_212 cat_208) (spoon_3 cat_208)))
(assert (= cat_213 (fp.add roundNearestTiesToEven cat_212 cat_211)))
(assert (and (= cat_214 cat_213) (spoon_3 cat_213)))
(assert (= cat_252 (mk_potato_11 cat_188)))
(assert (= cat_253 cat_214))
(assert (let ((_let_0 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp (_ bv0 1) (_ bv1024 11) (_ bv0 52)) cat_156) cat_249))) (and (= cat_215 _let_0) (spoon_3 _let_0))))
(assert (= cat_216 (fp.mul roundNearestTiesToEven cat_215 cat_243)))
(assert (and (= cat_217 cat_216) (spoon_3 cat_216)))
(assert (= cat_254 (mk_potato_11 cat_189)))
(assert (= cat_255 cat_217))
(assert (let ((_let_0 (fp.div roundNearestTiesToEven cat_255 cat_253))) (=> (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253) (and (= cat_218 _let_0) (spoon_3 _let_0)))))
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253) (= cat_256 spoon_270)))
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253) (= cat_257 cat_218)))
(assert (let ((_let_0 (fp.mul roundNearestTiesToEven (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)) cat_253))) (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (fp.lt (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)) cat_253) (and (= cat_224 _let_0) (spoon_3 _let_0))))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (fp.lt (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)) cat_253) (= cat_225 (ite (fp.leq cat_255 cat_224) true false)))))
(assert (let ((_let_0 (fp.mul roundNearestTiesToEven (fp.neg (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52))) cat_253))) (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (fp.lt (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)) cat_253) (and (= cat_223 _let_0) (spoon_3 _let_0))))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (fp.lt (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)) cat_253) (= cat_226 (ite (fp.leq cat_223 cat_255) true false)))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (fp.lt (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)) cat_253) (= cat_259 (ite (= cat_226 true) cat_225 false)))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (fp.lt (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)) cat_253)) (= cat_259 false))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (= cat_259 true) (= cat_258 true))))
(assert (let ((_let_0 (fp.mul roundNearestTiesToEven (fp.neg (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52))) cat_253))) (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_259 true)) (=> (fp.lt cat_253 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52))) (and (= cat_220 _let_0) (spoon_3 _let_0)))))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_259 true)) (=> (fp.lt cat_253 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52))) (= cat_221 (ite (fp.leq cat_255 cat_220) true false))))))
(assert (let ((_let_0 (fp.mul roundNearestTiesToEven (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)) cat_253))) (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_259 true)) (=> (fp.lt cat_253 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52))) (and (= cat_219 _let_0) (spoon_3 _let_0)))))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_259 true)) (=> (fp.lt cat_253 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52))) (= cat_222 (ite (fp.leq cat_219 cat_255) true false))))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_259 true)) (=> (fp.lt cat_253 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52))) (= cat_258 (ite (= cat_222 true) cat_221 false))))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_259 true)) (=> (not (fp.lt cat_253 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)))) (= cat_258 false)))))
(assert (let ((_let_0 (fp.div roundNearestTiesToEven cat_255 cat_253))) (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (= cat_258 true) (and (= cat_227 _let_0) (spoon_3 _let_0))))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (= cat_258 true) (= cat_260 spoon_270))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (= cat_258 true) (= cat_261 cat_227))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_258 true)) (=> (fp.lt cat_255 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52))) (= cat_262 spoon_270)))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_258 true)) (=> (fp.lt cat_255 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52))) (= cat_263 (fp.neg (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52))))))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_258 true)) (=> (not (fp.lt cat_255 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)))) (= cat_264 spoon_270)))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_258 true)) (=> (not (fp.lt cat_255 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)))) (= cat_265 (fp (_ bv0 1) (_ bv2046 11) (_ bv4503599627370495 52)))))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_258 true)) (=> (not (fp.lt cat_255 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)))) (= cat_263 cat_265)))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (=> (not (= cat_258 true)) (= cat_261 cat_263))))
(assert (=> (not (fp.leq (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)) cat_253)) (= cat_257 cat_261)))
(assert (let ((_let_0 (fp.mul roundNearestTiesToEven cat_241 cat_247))) (and (= cat_228 _let_0) (spoon_3 _let_0))))
(assert (= cat_266 (mk_potato_11 cat_186)))
(assert (= cat_267 cat_228))
(assert (let ((_let_0 (fp.mul roundNearestTiesToEven cat_243 cat_245))) (and (= cat_229 _let_0) (spoon_3 _let_0))))
(assert (= cat_230 (fp.mul roundNearestTiesToEven cat_229 cat_251)))
(assert (and (= cat_231 cat_230) (spoon_3 cat_230)))
(assert (= cat_268 (mk_potato_11 cat_187)))
(assert (= cat_269 cat_231))
(assert (let ((_let_0 (fp.sub roundNearestTiesToEven cat_267 cat_269))) (and (= cat_232 _let_0) (spoon_3 _let_0))))
(assert (= cat_233 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp (_ bv0 1) (_ bv1024 11) (_ bv0 52)) cat_156) cat_232)))
(assert (not (spoon_3 cat_233)))
(check-sat)
(exit)
