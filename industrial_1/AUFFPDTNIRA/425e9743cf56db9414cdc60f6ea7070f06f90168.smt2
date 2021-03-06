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
(declare-sort potato_11 0)
(declare-fun spoon_27 (potato_11) Int)
(assert (forall ((kitten_24 potato_11)) (let ((_let_0 (spoon_27 kitten_24))) (and (<= 3 _let_0) (<= _let_0 100))) ))
(define-fun spoon_28 ((kitten_25 Int)) Bool (and (<= 3 kitten_25) (<= kitten_25 100)))
(declare-fun spoon_29 (Int) potato_5)
(declare-fun spoon_30 (potato_5) Bool)
(declare-fun spoon_31 (potato_5) Int)
(declare-fun spoon_32 (potato_11 potato_11) Bool)
(declare-fun cat_33 () potato_11)
(declare-datatypes ((potato_12 0)) (((mk_potato_12 (get_potato_12_a potato_11)))))

(define-fun spoon_34 ((kitten_26 potato_12)) potato_11 (get_potato_12_a kitten_26))
(define-fun spoon_35 ((kitten_27 potato_11)) Int (spoon_27 kitten_27))
(declare-fun spoon_36 (Int) potato_11)
(assert (forall ((kitten_28 potato_11)) (! (= (spoon_36 (spoon_35 kitten_28)) kitten_28) :pattern ((spoon_35 kitten_28)))))
(assert (forall ((kitten_29 potato_11)) (! (spoon_28 (spoon_35 kitten_29)) :pattern ((spoon_35 kitten_29)))))
(assert (forall ((kitten_30 Int)) (! (=> (spoon_28 kitten_30) (= (spoon_35 (spoon_36 kitten_30)) kitten_30)) :pattern ((spoon_35 (spoon_36 kitten_30))))))
(declare-sort potato_13 0)
(define-fun spoon_37 ((kitten_31 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv139 8) (_ bv0 23)))) (and (spoon_1 kitten_31) (and (fp.leq (fp.neg _let_0) kitten_31) (fp.leq kitten_31 _let_0)))))
(declare-fun spoon_38 (potato_13 potato_13) Bool)
(declare-fun spoon_39 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_40 (potato_5) Bool)
(declare-fun spoon_41 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_42 () potato_13)
(declare-datatypes ((potato_14 0)) (((mk_potato_14 (get_potato_14_a potato_13)))))

(define-fun spoon_43 ((kitten_32 potato_14)) potato_13 (get_potato_14_a kitten_32))
(declare-fun spoon_44 (potato_13) (_ FloatingPoint 8 24))
(declare-fun spoon_45 ((_ FloatingPoint 8 24)) potato_13)
(assert (forall ((kitten_33 potato_13)) (! (= (spoon_45 (spoon_44 kitten_33)) kitten_33) :pattern ((spoon_44 kitten_33)))))
(assert (forall ((kitten_34 potato_13)) (! (spoon_37 (spoon_44 kitten_34)) :pattern ((spoon_44 kitten_34)))))
(assert (forall ((kitten_35 (_ FloatingPoint 8 24))) (! (=> (spoon_37 kitten_35) (= (spoon_44 (spoon_45 kitten_35)) kitten_35)) :pattern ((spoon_44 (spoon_45 kitten_35))))))
(declare-datatypes ((potato_15 0)) (((mk_potato_15 (get_potato_15_a potato_13) (get_potato_15_b potato_13)))))

(define-fun spoon_46 ((kitten_36 potato_15)) potato_13 (get_potato_15_a kitten_36))
(define-fun spoon_47 ((kitten_37 potato_15)) potato_13 (get_potato_15_b kitten_37))
(declare-datatypes ((potato_16 0)) (((mk_potato_16 (get_potato_16_a potato_15)))))

(define-fun spoon_48 ((kitten_38 potato_16)) potato_15 (get_potato_16_a kitten_38))
(declare-datatypes ((potato_17 0)) (((mk_potato_17 (get_potato_17_a potato_15)))))

(define-fun spoon_49 ((kitten_39 potato_17)) potato_15 (get_potato_17_a kitten_39))
(define-fun spoon_50 ((kitten_40 potato_17) (kitten_41 potato_17)) Bool (let ((_let_0 (get_potato_17_a kitten_40))) (let ((_let_1 (get_potato_17_a kitten_41))) (ite (and (= (spoon_44 (get_potato_15_a _let_0)) (spoon_44 (get_potato_15_a _let_1))) (= (spoon_44 (get_potato_15_b _let_0)) (spoon_44 (get_potato_15_b _let_1)))) true false))))
(declare-fun cat_51 () Int)
(declare-fun spoon_52 (potato_17) Int)
(declare-fun cat_53 () Int)
(declare-fun spoon_54 (potato_17) Int)
(assert (<= 0 cat_51))
(assert (forall ((kitten_42 potato_17)) (<= 0 (spoon_52 kitten_42)) ))
(assert (<= 0 cat_53))
(assert (forall ((kitten_43 potato_17)) (<= 0 (spoon_54 kitten_43)) ))
(declare-fun cat_55 () Int)
(declare-fun cat_56 () Int)
(declare-fun cat_57 () Int)
(assert (<= 0 cat_55))
(assert (< cat_55 cat_56))
(assert (<= 0 cat_57))
(declare-fun cat_58 () Int)
(declare-fun cat_59 () Int)
(declare-fun cat_60 () Int)
(assert (<= 0 cat_58))
(assert (< cat_58 cat_59))
(assert (<= 0 cat_60))
(declare-fun spoon_61 (potato_17 potato_17) Bool)
(declare-fun cat_62 () potato_17)
(declare-datatypes ((potato_18 0)) (((mk_potato_18 (get_potato_18_a potato_17)))))

(define-fun spoon_63 ((kitten_44 potato_18)) potato_17 (get_potato_18_a kitten_44))
(declare-datatypes ((potato_19 0)) (((mk_potato_19 (get_potato_19_a (Array Int potato_17))))))

(declare-fun spoon_64 ((Array Int potato_17) Int Int) (Array Int potato_17))
(assert (forall ((kitten_45 (Array Int potato_17))) (forall ((kitten_46 Int)) (! (= (spoon_64 kitten_45 kitten_46 kitten_46) kitten_45) :pattern ((spoon_64 kitten_45 kitten_46 kitten_46)))) ))
(assert (forall ((kitten_47 (Array Int potato_17))) (forall ((kitten_48 Int)) (forall ((kitten_49 Int)) (forall ((kitten_50 Int)) (! (= (select (spoon_64 kitten_47 kitten_48 kitten_49) kitten_50) (select kitten_47 (- kitten_50 (- kitten_49 kitten_48)))) :pattern ((select (spoon_64 kitten_47 kitten_48 kitten_49) kitten_50)))) ) ) ))
(define-fun spoon_65 ((kitten_51 (Array Int potato_17)) (kitten_52 Int) (kitten_53 Int) (kitten_54 (Array Int potato_17)) (kitten_55 Int) (kitten_56 Int)) Bool (ite (and (ite (<= kitten_52 kitten_53) (and (<= kitten_55 kitten_56) (= (- kitten_53 kitten_52) (- kitten_56 kitten_55))) (< kitten_56 kitten_55)) (forall ((kitten_57 Int)) (=> (and (<= kitten_52 kitten_57) (<= kitten_57 kitten_53)) (= (spoon_50 (select kitten_51 kitten_57) (select kitten_54 (+ (- kitten_55 kitten_52) kitten_57))) true)) )) true false))
(assert (forall ((kitten_58 (Array Int potato_17)) (kitten_59 (Array Int potato_17))) (forall ((kitten_60 Int) (kitten_61 Int) (kitten_62 Int) (kitten_63 Int)) (=> (= (spoon_65 kitten_59 kitten_62 kitten_63 kitten_58 kitten_60 kitten_61) true) (and (ite (<= kitten_60 kitten_61) (and (<= kitten_62 kitten_63) (= (- kitten_61 kitten_60) (- kitten_63 kitten_62))) (< kitten_63 kitten_62)) (forall ((kitten_64 Int)) (=> (and (<= kitten_60 kitten_64) (<= kitten_64 kitten_61)) (= (spoon_50 (select kitten_58 kitten_64) (select kitten_59 (+ (- kitten_62 kitten_60) kitten_64))) true)) ))) ) ))
(declare-fun cat_66 () (Array Int potato_17))
(declare-fun cat_67 () Int)
(declare-fun spoon_68 ((Array Int potato_17)) Int)
(declare-fun cat_69 () Int)
(declare-fun spoon_70 ((Array Int potato_17)) Int)
(declare-fun cat_71 () Int)
(declare-fun spoon_72 ((Array Int potato_17)) Int)
(assert (<= 0 cat_67))
(assert (forall ((kitten_65 (Array Int potato_17))) (<= 0 (spoon_68 kitten_65)) ))
(assert (<= 0 cat_69))
(assert (forall ((kitten_66 (Array Int potato_17))) (<= 0 (spoon_70 kitten_66)) ))
(assert (<= 0 cat_71))
(assert (forall ((kitten_67 (Array Int potato_17))) (<= 0 (spoon_72 kitten_67)) ))
(declare-fun spoon_73 ((Array Int potato_17) (Array Int potato_17)) Bool)
(declare-datatypes ((potato_20 0)) (((mk_potato_20 (get_potato_20_a potato_11) (get_potato_20_b (Array Int potato_17))))))

(define-fun spoon_74 ((kitten_68 potato_20)) potato_11 (get_potato_20_a kitten_68))
(define-fun spoon_75 ((kitten_69 potato_20)) (Array Int potato_17) (get_potato_20_b kitten_69))
(declare-datatypes ((potato_21 0)) (((mk_potato_21 (get_potato_21_a potato_20)))))

(define-fun spoon_76 ((kitten_70 potato_21)) potato_20 (get_potato_21_a kitten_70))
(declare-datatypes ((potato_22 0)) (((mk_potato_22 (get_potato_22_a potato_20)))))

(define-fun spoon_77 ((kitten_71 potato_22)) potato_20 (get_potato_22_a kitten_71))
(define-fun spoon_78 ((kitten_72 potato_22) (kitten_73 potato_22)) Bool (let ((_let_0 (get_potato_22_a kitten_72))) (let ((_let_1 (get_potato_22_a kitten_73))) (ite (and (= (spoon_35 (get_potato_20_a _let_0)) (spoon_35 (get_potato_20_a _let_1))) (= (spoon_65 (get_potato_20_b _let_0) 1 100 (get_potato_20_b _let_1) 1 100) true)) true false))))
(declare-fun cat_79 () Int)
(declare-fun spoon_80 (potato_22) Int)
(declare-fun cat_81 () Int)
(declare-fun spoon_82 (potato_22) Int)
(assert (<= 0 cat_79))
(assert (forall ((kitten_74 potato_22)) (<= 0 (spoon_80 kitten_74)) ))
(assert (<= 0 cat_81))
(assert (forall ((kitten_75 potato_22)) (<= 0 (spoon_82 kitten_75)) ))
(declare-fun cat_83 () Int)
(declare-fun cat_84 () Int)
(declare-fun cat_85 () Int)
(assert (<= 0 cat_83))
(assert (< cat_83 cat_84))
(assert (<= 0 cat_85))
(declare-fun cat_86 () Int)
(declare-fun cat_87 () Int)
(declare-fun cat_88 () Int)
(assert (<= 0 cat_86))
(assert (< cat_86 cat_87))
(assert (<= 0 cat_88))
(declare-fun spoon_89 (potato_22 potato_22) Bool)
(declare-fun cat_90 () potato_22)
(declare-datatypes ((potato_23 0)) (((mk_potato_23 (get_potato_23_a potato_22)))))

(define-fun spoon_91 ((kitten_76 potato_23)) potato_22 (get_potato_23_a kitten_76))
(declare-fun spoon_92 (potato_17 potato_17 potato_17) Int)
(declare-fun spoon_93 (Int potato_17 potato_17 potato_17) Bool)
(declare-sort potato_24 0)
(define-fun spoon_94 ((kitten_77 Int)) Bool (and (<= 0 kitten_77) (<= kitten_77 2)))
(declare-fun spoon_95 (Int) potato_5)
(declare-fun spoon_96 (potato_5) Bool)
(declare-fun spoon_97 (potato_5) Int)
(declare-fun spoon_98 (potato_24 potato_24) Bool)
(declare-fun cat_99 () potato_24)
(declare-datatypes ((potato_25 0)) (((mk_potato_25 (get_potato_25_a potato_24)))))

(define-fun spoon_100 ((kitten_78 potato_25)) potato_24 (get_potato_25_a kitten_78))
(define-fun spoon_101 ((kitten_79 Int) (kitten_80 Bool) (kitten_81 Bool) (kitten_82 Bool) (kitten_83 Bool)) Bool (=> (or (= kitten_80 true) (<= 0 2)) (spoon_94 kitten_79)))
(assert (forall ((kitten_84 potato_17) (kitten_85 potato_17) (kitten_86 potato_17)) (! (spoon_101 (spoon_92 kitten_84 kitten_85 kitten_86) true false true true) :pattern ((spoon_92 kitten_84 kitten_85 kitten_86)))))
(declare-fun spoon_102 (potato_17 potato_17) Bool)
(declare-fun spoon_103 (Bool potato_17 potato_17) Bool)
(assert true)
(declare-sort potato_26 0)
(declare-fun spoon_104 (potato_26) Int)
(assert (forall ((kitten_87 potato_26)) (let ((_let_0 (spoon_104 kitten_87))) (and (<= 1 _let_0) (<= _let_0 100))) ))
(define-fun spoon_105 ((kitten_88 Int)) Bool (and (<= 1 kitten_88) (<= kitten_88 100)))
(declare-fun spoon_106 (Int) potato_5)
(declare-fun spoon_107 (potato_5) Bool)
(declare-fun spoon_108 (potato_5) Int)
(declare-fun spoon_109 (potato_26 potato_26) Bool)
(declare-fun cat_110 () potato_26)
(declare-datatypes ((potato_27 0)) (((mk_potato_27 (get_potato_27_a potato_26)))))

(define-fun spoon_111 ((kitten_89 potato_27)) potato_26 (get_potato_27_a kitten_89))
(define-fun spoon_112 ((kitten_90 Int) (kitten_91 Bool) (kitten_92 Bool) (kitten_93 Bool) (kitten_94 Bool)) Bool (=> (or (= kitten_91 true) (<= 1 100)) (spoon_105 kitten_90)))
(declare-fun cat_113 () potato_17)
(declare-fun cat_114 () Int)
(declare-fun cat_115 () potato_22)
(declare-fun cat_116 () Int)
(declare-sort potato_28 0)
(declare-fun spoon_117 (potato_28) Int)
(assert (forall ((kitten_95 potato_28)) (let ((_let_0 (spoon_117 kitten_95))) (and (<= (- 100) _let_0) (<= _let_0 100))) ))
(define-fun spoon_118 ((kitten_96 Int)) Bool (and (<= (- 100) kitten_96) (<= kitten_96 100)))
(declare-fun spoon_119 (Int) potato_5)
(declare-fun spoon_120 (potato_5) Bool)
(declare-fun spoon_121 (potato_5) Int)
(declare-fun spoon_122 (potato_28 potato_28) Bool)
(declare-fun cat_123 () potato_28)
(declare-datatypes ((potato_29 0)) (((mk_potato_29 (get_potato_29_a potato_28)))))

(define-fun spoon_124 ((kitten_97 potato_29)) potato_28 (get_potato_29_a kitten_97))
(define-fun spoon_125 ((kitten_98 Int) (kitten_99 Bool) (kitten_100 Bool) (kitten_101 Bool) (kitten_102 Bool)) Bool (=> (or (= kitten_99 true) (<= (- 100) 100)) (spoon_118 kitten_98)))
(declare-fun cat_126 () Int)
(declare-fun cat_127 () Int)
(declare-fun cat_128 () Int)
(declare-fun cat_129 () Int)
(declare-fun cat_130 () Int)
(declare-fun cat_131 () Int)
(declare-sort potato_30 0)
(declare-fun spoon_132 (potato_30) Int)
(assert (forall ((kitten_103 potato_30)) (let ((_let_0 (spoon_132 kitten_103))) (and (<= (- 128) _let_0) (<= _let_0 127))) ))
(define-fun spoon_133 ((kitten_104 Int)) Bool (and (<= (- 128) kitten_104) (<= kitten_104 127)))
(declare-fun spoon_134 (Int) potato_5)
(declare-fun spoon_135 (potato_5) Bool)
(declare-fun spoon_136 (potato_5) Int)
(declare-fun spoon_137 (potato_30 potato_30) Bool)
(declare-fun cat_138 () potato_30)
(declare-datatypes ((potato_31 0)) (((mk_potato_31 (get_potato_31_a potato_30)))))

(define-fun spoon_139 ((kitten_105 potato_31)) potato_30 (get_potato_31_a kitten_105))
(define-fun spoon_140 ((kitten_106 potato_30)) Int (spoon_132 kitten_106))
(declare-fun spoon_141 (Int) potato_30)
(assert (forall ((kitten_107 potato_30)) (! (= (spoon_141 (spoon_140 kitten_107)) kitten_107) :pattern ((spoon_140 kitten_107)))))
(assert (forall ((kitten_108 potato_30)) (! (spoon_133 (spoon_140 kitten_108)) :pattern ((spoon_140 kitten_108)))))
(assert (forall ((kitten_109 Int)) (! (=> (spoon_133 kitten_109) (= (spoon_140 (spoon_141 kitten_109)) kitten_109)) :pattern ((spoon_140 (spoon_141 kitten_109))))))
(define-fun spoon_142 ((kitten_110 Int) (kitten_111 Int) (kitten_112 Int)) Bool (and (<= kitten_110 kitten_112) (<= kitten_112 kitten_111)))
(declare-fun spoon_143 (Int) potato_5)
(declare-fun spoon_144 (potato_5) Bool)
(declare-fun spoon_145 (potato_5) Int)
(declare-fun spoon_146 (potato_30 potato_30) Bool)
(declare-fun cat_147 () potato_30)
(declare-datatypes ((potato_32 0)) (((mk_potato_32 (get_potato_32_a potato_30)))))

(define-fun spoon_148 ((kitten_113 potato_32)) potato_30 (get_potato_32_a kitten_113))
(declare-fun cat_149 () Int)
(define-fun spoon_150 ((kitten_114 (_ FloatingPoint 8 24)) (kitten_115 Bool) (kitten_116 Bool) (kitten_117 Bool) (kitten_118 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv139 8) (_ bv0 23)))) (=> (or (= kitten_115 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_37 kitten_114))))
(define-fun spoon_151 ((kitten_119 Int) (kitten_120 Bool) (kitten_121 Bool) (kitten_122 Bool) (kitten_123 Bool)) Bool (=> (or (= kitten_120 true) (<= 3 100)) (spoon_28 kitten_119)))
(declare-fun cat_152 () Int)
(declare-fun cat_153 () Int)
(declare-fun cat_154 () potato_13)
(declare-fun cat_155 () potato_13)
(declare-fun cat_156 () potato_13)
(declare-fun cat_157 () potato_13)
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
(declare-fun cat_172 () Bool)
(declare-fun cat_173 () Int)
(declare-fun cat_174 () Int)
(declare-fun cat_175 () potato_13)
(declare-fun cat_176 () potato_13)
(declare-fun cat_177 () potato_13)
(declare-fun cat_178 () potato_13)
(declare-fun cat_179 () Int)
(declare-fun cat_180 () Int)
(declare-fun cat_181 () potato_13)
(declare-fun cat_182 () potato_13)
(declare-fun cat_183 () potato_13)
(declare-fun cat_184 () potato_13)
(declare-fun cat_185 () Bool)
(declare-fun cat_186 () Int)
(declare-fun cat_187 () Int)
(declare-fun cat_188 () Bool)
(declare-fun cat_189 () Int)
(declare-fun cat_190 () Int)
(declare-fun cat_191 () potato_13)
(declare-fun cat_192 () potato_13)
(declare-fun cat_193 () potato_15)
(declare-fun cat_194 () Int)
(declare-fun cat_195 () potato_15)
(declare-fun cat_196 () potato_15)
(declare-fun cat_197 () Int)
(declare-fun cat_198 () potato_6)
(declare-fun cat_199 () Int)
(declare-fun cat_200 () potato_16)
(declare-fun cat_201 () potato_15)
(declare-fun cat_202 () Bool)
(declare-fun cat_203 () potato_6)
(declare-fun cat_204 () Int)
(declare-fun cat_205 () Bool)
(declare-fun cat_206 () potato_6)
(declare-fun cat_207 () Int)
(declare-fun cat_208 () potato_16)
(declare-fun cat_209 () potato_15)
(define-fun spoon_210 () potato_15 (mk_potato_15 cat_183 cat_184))
(define-fun spoon_211 () potato_15 (mk_potato_15 cat_177 cat_178))
(assert (= cat_168 cat_152))
(assert (= cat_169 0))
(assert (spoon_118 cat_169))
(assert (=> (<= 1 100) (spoon_105 cat_153)))
(assert (= cat_170 cat_153))
(assert (= cat_171 (spoon_35 (get_potato_20_a (get_potato_22_a cat_115)))))
(assert (let ((_let_0 (get_potato_20_b (get_potato_22_a cat_115)))) (= cat_172 (spoon_102 (select _let_0 1) (select _let_0 cat_171)))))
(assert (let ((_let_0 (- cat_171 1))) (=> (= cat_172 true) (and (= cat_159 _let_0) (spoon_105 _let_0)))))
(assert (=> (= cat_172 true) (= cat_173 cat_171)))
(assert (=> (= cat_172 true) (= cat_174 cat_159)))
(assert (=> (not (= cat_172 true)) (= cat_174 cat_171)))
(assert (= cat_175 cat_154))
(assert (= cat_176 cat_155))
(assert (= spoon_211 (get_potato_17_a (select (get_potato_20_b (get_potato_22_a cat_115)) cat_174))))
(assert (= cat_174 cat_130))
(assert (spoon_105 cat_130))
(assert (= cat_179 cat_158))
(assert (= cat_180 1))
(assert (<= 1 cat_180))
(assert (<= cat_180 cat_130))
(assert (= cat_181 cat_156))
(assert (= cat_182 cat_157))
(assert (= spoon_210 (get_potato_17_a (select (get_potato_20_b (get_potato_22_a cat_115)) cat_180))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (fp.leq (spoon_44 cat_178) _let_0) (=> (fp.lt _let_0 (spoon_44 cat_184)) (and (= cat_160 (spoon_92 (mk_potato_17 spoon_211) (mk_potato_17 spoon_210) cat_113)) (spoon_94 cat_160))))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (fp.leq (spoon_44 cat_178) _let_0) (=> (fp.lt _let_0 (spoon_44 cat_184)) (= cat_185 (ite (= cat_160 0) true false))))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (fp.leq (spoon_44 cat_178) _let_0) (=> (not (fp.lt _let_0 (spoon_44 cat_184))) (= cat_185 false)))))
(assert (let ((_let_0 (+ cat_169 1))) (=> (fp.leq (spoon_44 cat_178) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113)))) (=> (= cat_185 true) (and (= cat_161 _let_0) (spoon_118 _let_0))))))
(assert (=> (fp.leq (spoon_44 cat_178) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113)))) (=> (= cat_185 true) (= cat_186 cat_169))))
(assert (=> (fp.leq (spoon_44 cat_178) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113)))) (=> (= cat_185 true) (= cat_187 cat_161))))
(assert (=> (fp.leq (spoon_44 cat_178) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113)))) (=> (not (= cat_185 true)) (= cat_187 cat_169))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (not (fp.leq (spoon_44 cat_178) _let_0)) (=> (fp.leq (spoon_44 cat_184) _let_0) (and (= cat_162 (spoon_92 (mk_potato_17 spoon_211) (mk_potato_17 spoon_210) cat_113)) (spoon_94 cat_162))))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (not (fp.leq (spoon_44 cat_178) _let_0)) (=> (fp.leq (spoon_44 cat_184) _let_0) (= cat_188 (ite (= cat_162 2) true false))))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (not (fp.leq (spoon_44 cat_178) _let_0)) (=> (not (fp.leq (spoon_44 cat_184) _let_0)) (= cat_188 false)))))
(assert (let ((_let_0 (- cat_169 1))) (=> (not (fp.leq (spoon_44 cat_178) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (= cat_188 true) (and (= cat_163 _let_0) (spoon_118 _let_0))))))
(assert (=> (not (fp.leq (spoon_44 cat_178) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (= cat_188 true) (= cat_189 cat_169))))
(assert (=> (not (fp.leq (spoon_44 cat_178) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (= cat_188 true) (= cat_190 cat_163))))
(assert (=> (not (fp.leq (spoon_44 cat_178) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (not (= cat_188 true)) (= cat_190 cat_169))))
(assert (=> (not (fp.leq (spoon_44 cat_178) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (= cat_187 cat_190)))
(assert (= cat_191 cat_177))
(assert (= cat_192 cat_178))
(assert (= cat_193 spoon_210))
(assert (and (<= (- cat_197) cat_194) (<= cat_194 cat_197)))
(assert (and (and (=> (<= 1 cat_130) (spoon_142 1 cat_130 cat_197)) (=> (<= (- 100) 100) (spoon_118 cat_194))) (and (<= 1 cat_197) (<= cat_197 cat_130))))
(assert (not (= cat_197 cat_130)))
(assert (= cat_198 (mk_potato_6 cat_197)))
(assert (= cat_199 (+ cat_197 1)))
(assert (= cat_200 (mk_potato_16 cat_196)))
(assert (= cat_201 (get_potato_17_a (select (get_potato_20_b (get_potato_22_a cat_115)) cat_199))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (fp.leq (spoon_44 (get_potato_15_b cat_195)) _let_0) (=> (fp.lt _let_0 (spoon_44 (get_potato_15_b cat_201))) (and (= cat_164 (spoon_92 (mk_potato_17 cat_195) (mk_potato_17 cat_201) cat_113)) (spoon_94 cat_164))))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (fp.leq (spoon_44 (get_potato_15_b cat_195)) _let_0) (=> (fp.lt _let_0 (spoon_44 (get_potato_15_b cat_201))) (= cat_202 (ite (= cat_164 0) true false))))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (fp.leq (spoon_44 (get_potato_15_b cat_195)) _let_0) (=> (not (fp.lt _let_0 (spoon_44 (get_potato_15_b cat_201)))) (= cat_202 false)))))
(assert (let ((_let_0 (+ cat_194 1))) (=> (fp.leq (spoon_44 (get_potato_15_b cat_195)) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113)))) (=> (= cat_202 true) (and (= cat_165 _let_0) (spoon_118 _let_0))))))
(assert (=> (fp.leq (spoon_44 (get_potato_15_b cat_195)) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113)))) (=> (= cat_202 true) (= cat_203 (mk_potato_6 cat_194)))))
(assert (=> (fp.leq (spoon_44 (get_potato_15_b cat_195)) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113)))) (=> (= cat_202 true) (= cat_204 cat_165))))
(assert (=> (fp.leq (spoon_44 (get_potato_15_b cat_195)) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113)))) (=> (not (= cat_202 true)) (= cat_204 cat_194))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (not (fp.leq (spoon_44 (get_potato_15_b cat_195)) _let_0)) (=> (fp.leq (spoon_44 (get_potato_15_b cat_201)) _let_0) (and (= cat_166 (spoon_92 (mk_potato_17 cat_195) (mk_potato_17 cat_201) cat_113)) (spoon_94 cat_166))))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (not (fp.leq (spoon_44 (get_potato_15_b cat_195)) _let_0)) (=> (fp.leq (spoon_44 (get_potato_15_b cat_201)) _let_0) (= cat_205 (ite (= cat_166 2) true false))))))
(assert (let ((_let_0 (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (not (fp.leq (spoon_44 (get_potato_15_b cat_195)) _let_0)) (=> (not (fp.leq (spoon_44 (get_potato_15_b cat_201)) _let_0)) (= cat_205 false)))))
(assert (let ((_let_0 (- cat_194 1))) (=> (not (fp.leq (spoon_44 (get_potato_15_b cat_195)) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (= cat_205 true) (and (= cat_167 _let_0) (spoon_118 _let_0))))))
(assert (=> (not (fp.leq (spoon_44 (get_potato_15_b cat_195)) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (= cat_205 true) (= cat_206 (mk_potato_6 cat_194)))))
(assert (=> (not (fp.leq (spoon_44 (get_potato_15_b cat_195)) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (= cat_205 true) (= cat_207 cat_167))))
(assert (=> (not (fp.leq (spoon_44 (get_potato_15_b cat_195)) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (=> (not (= cat_205 true)) (= cat_207 cat_194))))
(assert (=> (not (fp.leq (spoon_44 (get_potato_15_b cat_195)) (spoon_44 (get_potato_15_b (get_potato_17_a cat_113))))) (= cat_204 cat_207)))
(assert (= cat_208 (mk_potato_16 cat_195)))
(assert (= cat_209 cat_201))
(assert (not (<= (- cat_199) cat_204)))
(check-sat)
(exit)
