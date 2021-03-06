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

(declare-sort potato_11 0)
(declare-fun spoon_23 (potato_11 potato_11) Bool)
(declare-fun spoon_24 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_25 (potato_5) Bool)
(declare-fun spoon_26 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_27 () potato_11)
(declare-datatypes ((potato_12 0)) (((mk_potato_12 (get_potato_12_a potato_11)))))

(define-fun spoon_28 ((kitten_23 potato_12)) potato_11 (get_potato_12_a kitten_23))
(declare-sort potato_13 0)
(define-fun spoon_29 ((kitten_24 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv139 8) (_ bv0 23)))) (and (spoon_1 kitten_24) (and (fp.leq (fp.neg _let_0) kitten_24) (fp.leq kitten_24 _let_0)))))
(declare-fun spoon_30 (potato_13 potato_13) Bool)
(declare-fun spoon_31 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_32 (potato_5) Bool)
(declare-fun spoon_33 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_34 () potato_13)
(declare-datatypes ((potato_14 0)) (((mk_potato_14 (get_potato_14_a potato_13)))))

(define-fun spoon_35 ((kitten_25 potato_14)) potato_13 (get_potato_14_a kitten_25))
(declare-fun spoon_36 (potato_13) (_ FloatingPoint 8 24))
(declare-fun spoon_37 ((_ FloatingPoint 8 24)) potato_13)
(assert (forall ((kitten_26 potato_13)) (! (= (spoon_37 (spoon_36 kitten_26)) kitten_26) :pattern ((spoon_36 kitten_26)))))
(assert (forall ((kitten_27 potato_13)) (! (spoon_29 (spoon_36 kitten_27)) :pattern ((spoon_36 kitten_27)))))
(assert (forall ((kitten_28 (_ FloatingPoint 8 24))) (! (=> (spoon_29 kitten_28) (= (spoon_36 (spoon_37 kitten_28)) kitten_28)) :pattern ((spoon_36 (spoon_37 kitten_28))))))
(declare-datatypes ((potato_15 0)) (((mk_potato_15 (get_potato_15_a potato_13) (get_potato_15_b potato_13)))))

(define-fun spoon_38 ((kitten_29 potato_15)) potato_13 (get_potato_15_a kitten_29))
(define-fun spoon_39 ((kitten_30 potato_15)) potato_13 (get_potato_15_b kitten_30))
(declare-datatypes ((potato_16 0)) (((mk_potato_16 (get_potato_16_a potato_15)))))

(define-fun spoon_40 ((kitten_31 potato_16)) potato_15 (get_potato_16_a kitten_31))
(declare-datatypes ((potato_17 0)) (((mk_potato_17 (get_potato_17_a potato_15)))))

(define-fun spoon_41 ((kitten_32 potato_17)) potato_15 (get_potato_17_a kitten_32))
(define-fun spoon_42 ((kitten_33 potato_17) (kitten_34 potato_17)) Bool (let ((_let_0 (get_potato_17_a kitten_33))) (let ((_let_1 (get_potato_17_a kitten_34))) (ite (and (= (spoon_36 (get_potato_15_a _let_0)) (spoon_36 (get_potato_15_a _let_1))) (= (spoon_36 (get_potato_15_b _let_0)) (spoon_36 (get_potato_15_b _let_1)))) true false))))
(declare-fun cat_43 () Int)
(declare-fun spoon_44 (potato_17) Int)
(declare-fun cat_45 () Int)
(declare-fun spoon_46 (potato_17) Int)
(assert (<= 0 cat_43))
(assert (forall ((kitten_35 potato_17)) (<= 0 (spoon_44 kitten_35)) ))
(assert (<= 0 cat_45))
(assert (forall ((kitten_36 potato_17)) (<= 0 (spoon_46 kitten_36)) ))
(declare-fun cat_47 () Int)
(declare-fun cat_48 () Int)
(declare-fun cat_49 () Int)
(assert (<= 0 cat_47))
(assert (< cat_47 cat_48))
(assert (<= 0 cat_49))
(declare-fun cat_50 () Int)
(declare-fun cat_51 () Int)
(declare-fun cat_52 () Int)
(assert (<= 0 cat_50))
(assert (< cat_50 cat_51))
(assert (<= 0 cat_52))
(declare-fun spoon_53 (potato_17 potato_17) Bool)
(declare-fun cat_54 () potato_17)
(declare-datatypes ((potato_18 0)) (((mk_potato_18 (get_potato_18_a potato_17)))))

(define-fun spoon_55 ((kitten_37 potato_18)) potato_17 (get_potato_18_a kitten_37))
(declare-fun spoon_56 (potato_17 potato_17) (_ FloatingPoint 8 24))
(declare-fun spoon_57 ((_ FloatingPoint 8 24) potato_17 potato_17) Bool)
(declare-sort potato_19 0)
(define-fun spoon_58 ((kitten_38 (_ FloatingPoint 8 24))) Bool (and (spoon_1 kitten_38) (and (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) kitten_38) (fp.leq kitten_38 (fp (_ bv0 1) (_ bv140 8) (_ bv3489792 23))))))
(declare-fun spoon_59 (potato_19 potato_19) Bool)
(declare-fun spoon_60 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_61 (potato_5) Bool)
(declare-fun spoon_62 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_63 () potato_19)
(declare-datatypes ((potato_20 0)) (((mk_potato_20 (get_potato_20_a potato_19)))))

(define-fun spoon_64 ((kitten_39 potato_20)) potato_19 (get_potato_20_a kitten_39))
(define-fun spoon_65 ((kitten_40 (_ FloatingPoint 8 24)) (kitten_41 Bool) (kitten_42 Bool) (kitten_43 Bool) (kitten_44 Bool)) Bool (=> (or (= kitten_41 true) (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv140 8) (_ bv3489792 23)))) (spoon_58 kitten_40)))
(assert (forall ((kitten_45 potato_17) (kitten_46 potato_17)) (! (spoon_65 (spoon_56 kitten_45 kitten_46) true false true true) :pattern ((spoon_56 kitten_45 kitten_46)))))
(declare-sort potato_21 0)
(define-fun spoon_66 ((kitten_47 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv140 8) (_ bv0 23)))) (and (spoon_1 kitten_47) (and (fp.leq (fp.neg _let_0) kitten_47) (fp.leq kitten_47 _let_0)))))
(declare-fun spoon_67 (potato_21 potato_21) Bool)
(declare-fun spoon_68 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_69 (potato_5) Bool)
(declare-fun spoon_70 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_71 () potato_21)
(declare-datatypes ((potato_22 0)) (((mk_potato_22 (get_potato_22_a potato_21)))))

(define-fun spoon_72 ((kitten_48 potato_22)) potato_21 (get_potato_22_a kitten_48))
(declare-fun spoon_73 (potato_21) (_ FloatingPoint 8 24))
(declare-fun spoon_74 ((_ FloatingPoint 8 24)) potato_21)
(assert (forall ((kitten_49 potato_21)) (! (= (spoon_74 (spoon_73 kitten_49)) kitten_49) :pattern ((spoon_73 kitten_49)))))
(assert (forall ((kitten_50 potato_21)) (! (spoon_66 (spoon_73 kitten_50)) :pattern ((spoon_73 kitten_50)))))
(assert (forall ((kitten_51 (_ FloatingPoint 8 24))) (! (=> (spoon_66 kitten_51) (= (spoon_73 (spoon_74 kitten_51)) kitten_51)) :pattern ((spoon_73 (spoon_74 kitten_51))))))
(declare-datatypes ((potato_23 0)) (((mk_potato_23 (get_potato_23_a potato_21) (get_potato_23_b potato_21)))))

(define-fun spoon_75 ((kitten_52 potato_23)) potato_21 (get_potato_23_a kitten_52))
(define-fun spoon_76 ((kitten_53 potato_23)) potato_21 (get_potato_23_b kitten_53))
(declare-datatypes ((potato_24 0)) (((mk_potato_24 (get_potato_24_a potato_23)))))

(define-fun spoon_77 ((kitten_54 potato_24)) potato_23 (get_potato_24_a kitten_54))
(declare-datatypes ((potato_25 0)) (((mk_potato_25 (get_potato_25_a potato_23)))))

(define-fun spoon_78 ((kitten_55 potato_25)) potato_23 (get_potato_25_a kitten_55))
(define-fun spoon_79 ((kitten_56 potato_25) (kitten_57 potato_25)) Bool (let ((_let_0 (get_potato_25_a kitten_56))) (let ((_let_1 (get_potato_25_a kitten_57))) (ite (and (= (spoon_73 (get_potato_23_a _let_0)) (spoon_73 (get_potato_23_a _let_1))) (= (spoon_73 (get_potato_23_b _let_0)) (spoon_73 (get_potato_23_b _let_1)))) true false))))
(declare-fun cat_80 () Int)
(declare-fun spoon_81 (potato_25) Int)
(declare-fun cat_82 () Int)
(declare-fun spoon_83 (potato_25) Int)
(assert (<= 0 cat_80))
(assert (forall ((kitten_58 potato_25)) (<= 0 (spoon_81 kitten_58)) ))
(assert (<= 0 cat_82))
(assert (forall ((kitten_59 potato_25)) (<= 0 (spoon_83 kitten_59)) ))
(declare-fun cat_84 () Int)
(declare-fun cat_85 () Int)
(declare-fun cat_86 () Int)
(assert (<= 0 cat_84))
(assert (< cat_84 cat_85))
(assert (<= 0 cat_86))
(declare-fun cat_87 () Int)
(declare-fun cat_88 () Int)
(declare-fun cat_89 () Int)
(assert (<= 0 cat_87))
(assert (< cat_87 cat_88))
(assert (<= 0 cat_89))
(declare-fun spoon_90 (potato_25 potato_25) Bool)
(declare-fun cat_91 () potato_25)
(declare-datatypes ((potato_26 0)) (((mk_potato_26 (get_potato_26_a potato_25)))))

(define-fun spoon_92 ((kitten_60 potato_26)) potato_25 (get_potato_26_a kitten_60))
(declare-fun spoon_93 (potato_25 potato_25) (_ FloatingPoint 8 24))
(declare-fun spoon_94 ((_ FloatingPoint 8 24) potato_25 potato_25) Bool)
(declare-sort potato_27 0)
(define-fun spoon_95 ((kitten_61 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv154 8) (_ bv0 23)))) (and (spoon_1 kitten_61) (and (fp.leq (fp.neg _let_0) kitten_61) (fp.leq kitten_61 _let_0)))))
(declare-fun spoon_96 (potato_27 potato_27) Bool)
(declare-fun spoon_97 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_98 (potato_5) Bool)
(declare-fun spoon_99 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_100 () potato_27)
(declare-datatypes ((potato_28 0)) (((mk_potato_28 (get_potato_28_a potato_27)))))

(define-fun spoon_101 ((kitten_62 potato_28)) potato_27 (get_potato_28_a kitten_62))
(define-fun spoon_102 ((kitten_63 (_ FloatingPoint 8 24)) (kitten_64 Bool) (kitten_65 Bool) (kitten_66 Bool) (kitten_67 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv154 8) (_ bv0 23)))) (=> (or (= kitten_64 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_95 kitten_63))))
(assert (forall ((kitten_68 potato_25) (kitten_69 potato_25)) (! (spoon_102 (spoon_93 kitten_68 kitten_69) true false true true) :pattern ((spoon_93 kitten_68 kitten_69)))))
(assert (forall ((kitten_70 potato_25) (kitten_71 potato_25)) (! (let ((_let_0 (get_potato_25_a kitten_70))) (let ((_let_1 (get_potato_25_a kitten_71))) (= (spoon_93 kitten_70 kitten_71) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (spoon_73 (get_potato_23_a _let_0)) (spoon_73 (get_potato_23_a _let_1))) (fp.mul roundNearestTiesToEven (spoon_73 (get_potato_23_b _let_0)) (spoon_73 (get_potato_23_b _let_1))))))) :pattern ((spoon_93 kitten_70 kitten_71)))))
(define-fun spoon_103 ((kitten_72 (_ FloatingPoint 8 24)) (kitten_73 Bool) (kitten_74 Bool) (kitten_75 Bool) (kitten_76 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv140 8) (_ bv0 23)))) (=> (or (= kitten_73 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_66 kitten_72))))
(declare-sort potato_29 0)
(define-fun spoon_104 ((kitten_77 (_ FloatingPoint 8 24))) Bool (and (spoon_1 kitten_77) (and (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) kitten_77) (fp.leq kitten_77 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23))))))
(declare-fun spoon_105 (potato_29 potato_29) Bool)
(declare-fun spoon_106 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_107 (potato_5) Bool)
(declare-fun spoon_108 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_109 () potato_29)
(declare-datatypes ((potato_30 0)) (((mk_potato_30 (get_potato_30_a potato_29)))))

(define-fun spoon_110 ((kitten_78 potato_30)) potato_29 (get_potato_30_a kitten_78))
(define-fun spoon_111 ((kitten_79 (_ FloatingPoint 8 24)) (kitten_80 Bool) (kitten_81 Bool) (kitten_82 Bool) (kitten_83 Bool)) Bool (=> (or (= kitten_80 true) (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (spoon_104 kitten_79)))
(declare-fun cat_112 () potato_17)
(declare-fun cat_113 () Int)
(declare-fun cat_114 () potato_17)
(declare-fun cat_115 () Int)
(declare-fun cat_116 () potato_17)
(declare-fun cat_117 () Int)
(declare-fun cat_118 () potato_17)
(declare-fun cat_119 () Int)
(declare-fun cat_120 () Int)
(declare-fun cat_121 () Int)
(declare-fun cat_122 () Int)
(declare-sort potato_31 0)
(define-fun spoon_123 ((kitten_84 (_ FloatingPoint 8 24))) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv182 8) (_ bv0 23)))) (and (spoon_1 kitten_84) (and (fp.leq (fp.neg _let_0) kitten_84) (fp.leq kitten_84 _let_0)))))
(declare-fun spoon_124 (potato_31 potato_31) Bool)
(declare-fun spoon_125 ((_ FloatingPoint 8 24)) potato_5)
(declare-fun spoon_126 (potato_5) Bool)
(declare-fun spoon_127 (potato_5) (_ FloatingPoint 8 24))
(declare-fun cat_128 () potato_31)
(declare-datatypes ((potato_32 0)) (((mk_potato_32 (get_potato_32_a potato_31)))))

(define-fun spoon_129 ((kitten_85 potato_32)) potato_31 (get_potato_32_a kitten_85))
(define-fun spoon_130 ((kitten_86 (_ FloatingPoint 8 24)) (kitten_87 Bool) (kitten_88 Bool) (kitten_89 Bool) (kitten_90 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv182 8) (_ bv0 23)))) (=> (or (= kitten_87 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_123 kitten_86))))
(declare-fun cat_131 () (_ FloatingPoint 8 24))
(declare-fun cat_132 () Int)
(declare-fun cat_133 () Int)
(declare-fun cat_134 () Int)
(declare-fun cat_135 () Int)
(declare-fun cat_136 () Int)
(declare-fun cat_137 () Int)
(declare-fun cat_138 () Int)
(declare-fun cat_139 () Int)
(declare-fun cat_140 () Int)
(declare-fun cat_141 () Int)
(declare-fun cat_142 () Int)
(declare-fun cat_143 () Int)
(declare-fun cat_144 () Int)
(declare-fun cat_145 () Int)
(declare-fun cat_146 () Int)
(declare-fun cat_147 () Int)
(define-fun spoon_148 ((kitten_91 (_ FloatingPoint 8 24)) (kitten_92 Bool) (kitten_93 Bool) (kitten_94 Bool) (kitten_95 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv254 8) (_ bv8388607 23)))) (=> (or (= kitten_92 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_1 kitten_91))))
(assert (= cat_131 (fp (_ bv0 1) (_ bv107 8) (_ bv407485 23))))
(define-fun spoon_149 ((kitten_96 (_ FloatingPoint 8 24)) (kitten_97 Bool) (kitten_98 Bool) (kitten_99 Bool) (kitten_100 Bool)) Bool (let ((_let_0 (fp (_ bv0 1) (_ bv139 8) (_ bv0 23)))) (=> (or (= kitten_97 true) (fp.leq (fp.neg _let_0) _let_0)) (spoon_29 kitten_96))))
(declare-fun cat_150 () (_ FloatingPoint 8 24))
(declare-fun cat_151 () (_ FloatingPoint 8 24))
(declare-fun cat_152 () (_ FloatingPoint 8 24))
(declare-fun cat_153 () potato_21)
(declare-fun cat_154 () potato_21)
(declare-fun cat_155 () potato_21)
(declare-fun cat_156 () potato_21)
(declare-fun cat_157 () potato_21)
(declare-fun cat_158 () potato_21)
(declare-fun cat_159 () (_ FloatingPoint 8 24))
(declare-fun cat_160 () (_ FloatingPoint 8 24))
(declare-fun cat_161 () (_ FloatingPoint 8 24))
(declare-fun cat_162 () (_ FloatingPoint 8 24))
(declare-fun cat_163 () (_ FloatingPoint 8 24))
(declare-fun cat_164 () (_ FloatingPoint 8 24))
(declare-fun cat_165 () (_ FloatingPoint 8 24))
(declare-fun cat_166 () (_ FloatingPoint 8 24))
(declare-fun cat_167 () (_ FloatingPoint 8 24))
(declare-fun cat_168 () (_ FloatingPoint 8 24))
(declare-fun cat_169 () potato_21)
(declare-fun cat_170 () potato_21)
(declare-fun cat_171 () potato_23)
(declare-fun cat_172 () potato_25)
(declare-fun cat_173 () potato_21)
(declare-fun cat_174 () potato_21)
(declare-fun cat_175 () potato_23)
(declare-fun cat_176 () potato_25)
(declare-fun cat_177 () potato_21)
(declare-fun cat_178 () potato_21)
(declare-fun cat_179 () potato_23)
(declare-fun cat_180 () potato_25)
(declare-fun cat_181 () (_ FloatingPoint 8 24))
(declare-fun cat_182 () (_ FloatingPoint 8 24))
(declare-fun cat_183 () (_ FloatingPoint 8 24))
(declare-fun cat_184 () (_ FloatingPoint 8 24))
(declare-fun cat_185 () (_ FloatingPoint 8 24))
(declare-fun cat_186 () (_ FloatingPoint 8 24))
(declare-fun cat_187 () potato_24)
(declare-fun cat_188 () potato_23)
(declare-fun cat_189 () potato_24)
(declare-fun cat_190 () potato_23)
(declare-fun cat_191 () potato_24)
(declare-fun cat_192 () potato_23)
(declare-fun cat_193 () potato_10)
(declare-fun cat_194 () (_ FloatingPoint 8 24))
(declare-fun cat_195 () potato_10)
(declare-fun cat_196 () (_ FloatingPoint 8 24))
(declare-fun cat_197 () potato_10)
(declare-fun cat_198 () (_ FloatingPoint 8 24))
(declare-fun cat_199 () potato_10)
(declare-fun cat_200 () (_ FloatingPoint 8 24))
(declare-fun cat_201 () potato_10)
(declare-fun cat_202 () (_ FloatingPoint 8 24))
(declare-fun cat_203 () potato_10)
(declare-fun cat_204 () (_ FloatingPoint 8 24))
(declare-fun cat_205 () potato_10)
(declare-fun cat_206 () (_ FloatingPoint 8 24))
(declare-fun cat_207 () potato_10)
(declare-fun cat_208 () (_ FloatingPoint 8 24))
(declare-fun cat_209 () potato_10)
(declare-fun cat_210 () (_ FloatingPoint 8 24))
(declare-fun cat_211 () potato_10)
(declare-fun cat_212 () (_ FloatingPoint 8 24))
(declare-fun cat_213 () potato_10)
(declare-fun cat_214 () (_ FloatingPoint 8 24))
(declare-fun cat_215 () potato_10)
(declare-fun cat_216 () (_ FloatingPoint 8 24))
(declare-fun cat_217 () potato_10)
(declare-fun cat_218 () (_ FloatingPoint 8 24))
(declare-fun cat_219 () potato_10)
(declare-fun cat_220 () (_ FloatingPoint 8 24))
(declare-fun cat_221 () potato_10)
(declare-fun cat_222 () (_ FloatingPoint 8 24))
(declare-fun cat_223 () potato_10)
(declare-fun cat_224 () (_ FloatingPoint 8 24))
(declare-fun cat_225 () potato_10)
(declare-fun cat_226 () (_ FloatingPoint 8 24))
(declare-fun cat_227 () potato_10)
(declare-fun cat_228 () (_ FloatingPoint 8 24))
(declare-fun cat_229 () potato_10)
(declare-fun cat_230 () (_ FloatingPoint 8 24))
(declare-fun cat_231 () potato_10)
(declare-fun cat_232 () (_ FloatingPoint 8 24))
(declare-fun cat_233 () potato_10)
(declare-fun cat_234 () (_ FloatingPoint 8 24))
(declare-fun cat_235 () potato_10)
(declare-fun cat_236 () (_ FloatingPoint 8 24))
(declare-fun cat_237 () potato_10)
(declare-fun cat_238 () (_ FloatingPoint 8 24))
(declare-fun cat_239 () potato_10)
(declare-fun cat_240 () (_ FloatingPoint 8 24))
(declare-fun cat_241 () potato_10)
(declare-fun cat_242 () (_ FloatingPoint 8 24))
(declare-fun cat_243 () potato_10)
(declare-fun cat_244 () (_ FloatingPoint 8 24))
(declare-fun cat_245 () potato_10)
(declare-fun cat_246 () (_ FloatingPoint 8 24))
(declare-fun cat_247 () potato_10)
(declare-fun cat_248 () (_ FloatingPoint 8 24))
(declare-fun cat_249 () potato_10)
(declare-fun cat_250 () (_ FloatingPoint 8 24))
(declare-fun cat_251 () potato_10)
(declare-fun cat_252 () (_ FloatingPoint 8 24))
(define-fun spoon_253 () potato_10 (mk_potato_10 cat_166))
(define-fun spoon_254 () potato_10 (mk_potato_10 cat_164))
(assert (spoon_66 cat_131))
(assert (= (fp (_ bv0 1) (_ bv107 8) (_ bv407485 23)) cat_131))
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv127 8) (_ bv0 23))) (spoon_104 cat_150)))
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv127 8) (_ bv0 23))) (spoon_104 cat_151)))
(assert (=> (fp.leq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv140 8) (_ bv3489792 23))) (spoon_58 cat_152)))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv154 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_95 cat_159))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv154 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_95 cat_160))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv154 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_95 cat_161))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv154 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_95 cat_162))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv154 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_95 cat_163))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv182 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_123 cat_164))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv182 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_123 cat_165))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv182 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_123 cat_166))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv182 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_123 cat_167))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv182 8) (_ bv0 23)))) (=> (fp.leq (fp.neg _let_0) _let_0) (spoon_123 cat_168))))
(assert (= (spoon_73 cat_169) (fp.sub roundNearestTiesToEven (spoon_36 (get_potato_15_b (get_potato_17_a cat_114))) (spoon_36 (get_potato_15_b (get_potato_17_a cat_112))))))
(assert (= (spoon_73 cat_170) (fp.sub roundNearestTiesToEven (spoon_36 (get_potato_15_a (get_potato_17_a cat_114))) (spoon_36 (get_potato_15_a (get_potato_17_a cat_112))))))
(assert (= cat_171 (mk_potato_23 cat_170 cat_169)))
(assert (= cat_172 (mk_potato_25 cat_171)))
(assert (= cat_187 (mk_potato_24 (mk_potato_23 cat_153 cat_154))))
(assert (= cat_188 (get_potato_25_a cat_172)))
(assert (= (spoon_73 cat_173) (fp.sub roundNearestTiesToEven (spoon_36 (get_potato_15_b (get_potato_17_a cat_118))) (spoon_36 (get_potato_15_b (get_potato_17_a cat_116))))))
(assert (= (spoon_73 cat_174) (fp.sub roundNearestTiesToEven (spoon_36 (get_potato_15_a (get_potato_17_a cat_118))) (spoon_36 (get_potato_15_a (get_potato_17_a cat_116))))))
(assert (= cat_175 (mk_potato_23 cat_174 cat_173)))
(assert (= cat_176 (mk_potato_25 cat_175)))
(assert (= cat_189 (mk_potato_24 (mk_potato_23 cat_155 cat_156))))
(assert (= cat_190 (get_potato_25_a cat_176)))
(assert (= (spoon_73 cat_177) (fp.sub roundNearestTiesToEven (spoon_36 (get_potato_15_b (get_potato_17_a cat_112))) (spoon_36 (get_potato_15_b (get_potato_17_a cat_116))))))
(assert (= (spoon_73 cat_178) (fp.sub roundNearestTiesToEven (spoon_36 (get_potato_15_a (get_potato_17_a cat_112))) (spoon_36 (get_potato_15_a (get_potato_17_a cat_116))))))
(assert (= cat_179 (mk_potato_23 cat_178 cat_177)))
(assert (= cat_180 (mk_potato_25 cat_179)))
(assert (= cat_191 (mk_potato_24 (mk_potato_23 cat_157 cat_158))))
(assert (= cat_192 (get_potato_25_a cat_180)))
(assert (let ((_let_0 (mk_potato_25 cat_188))) (let ((_let_1 (spoon_73 (get_potato_23_a cat_188)))) (let ((_let_2 (spoon_73 (get_potato_23_b cat_188)))) (and (= cat_181 (spoon_93 _let_0 _let_0)) (and (spoon_95 cat_181) (= cat_181 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven _let_1 _let_1) (fp.mul roundNearestTiesToEven _let_2 _let_2)))))))))
(assert (= cat_193 (mk_potato_10 cat_159)))
(assert (= cat_194 cat_181))
(assert (and (= cat_182 (spoon_93 (mk_potato_25 cat_188) (mk_potato_25 cat_190))) (and (spoon_95 cat_182) (= cat_182 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (spoon_73 (get_potato_23_a cat_188)) (spoon_73 (get_potato_23_a cat_190))) (fp.mul roundNearestTiesToEven (spoon_73 (get_potato_23_b cat_188)) (spoon_73 (get_potato_23_b cat_190))))))))
(assert (= cat_195 (mk_potato_10 cat_160)))
(assert (= cat_196 cat_182))
(assert (let ((_let_0 (mk_potato_25 cat_190))) (let ((_let_1 (spoon_73 (get_potato_23_a cat_190)))) (let ((_let_2 (spoon_73 (get_potato_23_b cat_190)))) (and (= cat_183 (spoon_93 _let_0 _let_0)) (and (spoon_95 cat_183) (= cat_183 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven _let_1 _let_1) (fp.mul roundNearestTiesToEven _let_2 _let_2)))))))))
(assert (= cat_197 (mk_potato_10 cat_161)))
(assert (= cat_198 cat_183))
(assert (and (= cat_184 (spoon_93 (mk_potato_25 cat_188) (mk_potato_25 cat_192))) (and (spoon_95 cat_184) (= cat_184 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (spoon_73 (get_potato_23_a cat_188)) (spoon_73 (get_potato_23_a cat_192))) (fp.mul roundNearestTiesToEven (spoon_73 (get_potato_23_b cat_188)) (spoon_73 (get_potato_23_b cat_192))))))))
(assert (= cat_199 (mk_potato_10 cat_162)))
(assert (= cat_200 cat_184))
(assert (and (= cat_185 (spoon_93 (mk_potato_25 cat_190) (mk_potato_25 cat_192))) (and (spoon_95 cat_185) (= cat_185 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (spoon_73 (get_potato_23_a cat_190)) (spoon_73 (get_potato_23_a cat_192))) (fp.mul roundNearestTiesToEven (spoon_73 (get_potato_23_b cat_190)) (spoon_73 (get_potato_23_b cat_192))))))))
(assert (= cat_201 (mk_potato_10 cat_163)))
(assert (= cat_202 cat_185))
(assert (= cat_203 (mk_potato_10 cat_168)))
(assert (= cat_204 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven cat_194 cat_198) (fp.mul roundNearestTiesToEven cat_196 cat_196))))
(assert (= cat_205 (mk_potato_10 cat_165)))
(assert (= cat_206 cat_204))
(assert (= cat_207 (mk_potato_10 cat_167)))
(assert (= cat_208 cat_204))
(assert (=> (fp.lt cat_204 cat_131) (= cat_209 spoon_254)))
(assert (=> (fp.lt cat_204 cat_131) (= cat_210 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))))
(assert (=> (fp.lt cat_204 cat_131) (= cat_211 (mk_potato_10 cat_206))))
(assert (=> (fp.lt cat_204 cat_131) (= cat_212 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))))
(assert (=> (fp.lt cat_204 cat_131) (= cat_213 spoon_253)))
(assert (=> (fp.lt cat_204 cat_131) (= cat_214 cat_202)))
(assert (=> (fp.lt cat_204 cat_131) (= cat_215 (mk_potato_10 cat_208))))
(assert (=> (fp.lt cat_204 cat_131) (= cat_216 cat_198)))
(assert (=> (not (fp.lt cat_204 cat_131)) (= cat_217 spoon_254)))
(assert (=> (not (fp.lt cat_204 cat_131)) (= cat_218 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven cat_196 cat_202) (fp.mul roundNearestTiesToEven cat_198 cat_200)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (= cat_219 spoon_253)))
(assert (=> (not (fp.lt cat_204 cat_131)) (= cat_220 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven cat_194 cat_202) (fp.mul roundNearestTiesToEven cat_196 cat_200)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23))) (= cat_221 (mk_potato_10 cat_218)))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_204 cat_131)) (=> (fp.lt cat_218 _let_0) (= cat_222 _let_0)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23))) (= cat_223 (mk_potato_10 cat_220)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23))) (= cat_224 cat_202))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23))) (= cat_225 (mk_potato_10 cat_208)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23))) (= cat_226 cat_198))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_206 cat_218) (= cat_227 (mk_potato_10 cat_218))))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_206 cat_218) (= cat_228 cat_206)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_206 cat_218) (= cat_229 (mk_potato_10 cat_220))))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_206 cat_218) (= cat_230 (fp.add roundNearestTiesToEven cat_202 cat_196))))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_206 cat_218) (= cat_231 (mk_potato_10 cat_208))))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_206 cat_218) (= cat_232 cat_198)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_206 cat_218)) (= cat_232 cat_208)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_206 cat_218)) (= cat_230 cat_220)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_206 cat_218)) (= cat_228 cat_218)))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (= cat_226 cat_232))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (= cat_224 cat_230))))
(assert (=> (not (fp.lt cat_204 cat_131)) (=> (not (fp.lt cat_218 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (= cat_222 cat_228))))
(assert (=> (not (fp.lt cat_204 cat_131)) (= cat_216 cat_226)))
(assert (=> (not (fp.lt cat_204 cat_131)) (= cat_214 cat_224)))
(assert (=> (not (fp.lt cat_204 cat_131)) (= cat_212 cat_206)))
(assert (=> (not (fp.lt cat_204 cat_131)) (= cat_210 cat_222)))
(assert (=> (fp.lt cat_214 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23))) (= cat_233 (mk_potato_10 cat_214))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_214 _let_0) (= cat_234 _let_0))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_214 _let_0) (=> (fp.lt (fp.neg cat_200) _let_0) (= cat_235 (mk_potato_10 cat_210))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_214 _let_0) (=> (fp.lt (fp.neg cat_200) _let_0) (= cat_236 _let_0)))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_214 _let_0) (=> (fp.lt (fp.neg cat_200) _let_0) (= cat_242 cat_212)))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.neg cat_200))) (=> (fp.lt cat_214 _let_0) (=> (not (fp.lt _let_1 _let_0)) (=> (fp.lt cat_194 _let_1) (= cat_237 (mk_potato_10 cat_210))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.neg cat_200))) (=> (fp.lt cat_214 _let_0) (=> (not (fp.lt _let_1 _let_0)) (=> (fp.lt cat_194 _let_1) (= cat_238 cat_212)))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.neg cat_200))) (=> (fp.lt cat_214 _let_0) (=> (not (fp.lt _let_1 _let_0)) (=> (fp.lt cat_194 _let_1) (= cat_242 cat_212)))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.neg cat_200))) (=> (fp.lt cat_214 _let_0) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_239 (mk_potato_10 cat_210))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.neg cat_200))) (=> (fp.lt cat_214 _let_0) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_240 _let_1)))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.neg cat_200))) (=> (fp.lt cat_214 _let_0) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_241 (mk_potato_10 cat_212))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.neg cat_200))) (=> (fp.lt cat_214 _let_0) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_242 cat_194)))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.neg cat_200))) (=> (fp.lt cat_214 _let_0) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_238 cat_240)))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_214 _let_0) (=> (not (fp.lt (fp.neg cat_200) _let_0)) (= cat_236 cat_238)))))
(assert (=> (not (fp.lt cat_214 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_216 cat_214) (= cat_243 (mk_potato_10 cat_214)))))
(assert (=> (not (fp.lt cat_214 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.lt cat_216 cat_214) (= cat_244 cat_216))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (fp.lt (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196) _let_0) (= cat_245 (mk_potato_10 cat_210)))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (fp.lt (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196) _let_0) (= cat_246 _let_0))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (fp.lt (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196) _let_0) (= cat_252 cat_212))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (not (fp.lt _let_1 _let_0)) (=> (fp.lt cat_194 _let_1) (= cat_247 (mk_potato_10 cat_210)))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (not (fp.lt _let_1 _let_0)) (=> (fp.lt cat_194 _let_1) (= cat_248 cat_212))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (not (fp.lt _let_1 _let_0)) (=> (fp.lt cat_194 _let_1) (= cat_252 cat_212))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_249 (mk_potato_10 cat_210)))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_250 _let_1))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_251 (mk_potato_10 cat_212)))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_252 cat_194))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (let ((_let_1 (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (not (fp.lt _let_1 _let_0)) (=> (not (fp.lt cat_194 _let_1)) (= cat_248 cat_250))))))))
(assert (let ((_let_0 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_214 _let_0)) (=> (fp.lt cat_216 cat_214) (=> (not (fp.lt (fp.add roundNearestTiesToEven (fp.neg cat_200) cat_196) _let_0)) (= cat_246 cat_248))))))
(assert (=> (not (fp.lt cat_214 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_216 cat_214)) (= cat_244 cat_214))))
(assert (=> (not (fp.lt cat_214 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_216 cat_214)) (= cat_252 cat_212))))
(assert (=> (not (fp.lt cat_214 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (=> (not (fp.lt cat_216 cat_214)) (= cat_246 cat_210))))
(assert (=> (not (fp.lt cat_214 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (= cat_234 cat_244)))
(assert (=> (not (fp.lt cat_214 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (= cat_242 cat_252)))
(assert (=> (not (fp.lt cat_214 (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (= cat_236 cat_246)))
(assert (not (fp.lt cat_242 cat_131)))
(assert (let ((_let_0 (fp.div roundNearestTiesToEven cat_236 cat_242))) (and (= cat_186 _let_0) (spoon_1 _let_0))))
(assert (not (spoon_104 cat_186)))
(check-sat)
(exit)
