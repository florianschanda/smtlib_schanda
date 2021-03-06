(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPNIRA)
(set-info :source |Benchmarks generated from industrial code by Florian Schanda using SPARK 2014 and an SMTLIB Obfuscation Script|)
(set-info :category industrial)
(set-info :status unknown)

(define-fun spoon_1 ((kitten_1 Float32)) Bool (not (or (fp.isInfinite kitten_1) (fp.isNaN kitten_1))))
(define-fun spoon_2 ((kitten_2 Float32)) Bool (or (fp.isZero kitten_2) (and (fp.isNormal kitten_2) (= kitten_2 (fp.roundToIntegral RNE kitten_2)))))
(define-fun spoon_3 ((kitten_3 Float64)) Bool (not (or (fp.isInfinite kitten_3) (fp.isNaN kitten_3))))
(define-fun spoon_4 ((kitten_4 Float64)) Bool (or (fp.isZero kitten_4) (and (fp.isNormal kitten_4) (= kitten_4 (fp.roundToIntegral RNE kitten_4)))))
(define-fun spoon_5 ((kitten_5 Float32)) Bool (and (fp.isInfinite kitten_5) (fp.isPositive kitten_5)))
(define-fun spoon_6 ((kitten_6 Float32)) Bool (and (fp.isInfinite kitten_6) (fp.isNegative kitten_6)))
(define-fun spoon_7 ((kitten_7 Float32)) Bool (and (fp.isZero kitten_7) (fp.isPositive kitten_7)))
(define-fun spoon_8 ((kitten_8 Float32)) Bool (and (fp.isZero kitten_8) (fp.isNegative kitten_8)))
(declare-const cat_9 Int)
(define-fun spoon_10 ((kitten_9 Int)) Bool (and (<= (- cat_9) kitten_9) (<= kitten_9 cat_9)))
(define-fun spoon_11 ((kitten_10 Int)) Bool (and (<= (- 16777216) kitten_10) (<= kitten_10 16777216)))
(define-fun spoon_12 ((kitten_11 Float32) (kitten_12 Float32)) Bool (or (and (fp.isPositive kitten_11) (fp.isPositive kitten_12)) (and (fp.isNegative kitten_11) (fp.isNegative kitten_12))))
(define-fun spoon_13 ((kitten_13 Float32) (kitten_14 Float32)) Bool (or (and (fp.isPositive kitten_13) (fp.isNegative kitten_14)) (and (fp.isNegative kitten_13) (fp.isPositive kitten_14))))
(define-fun spoon_14 ((kitten_15 Float32) (kitten_16 Float32) (kitten_17 Float32)) Bool (and (=> (spoon_12 kitten_16 kitten_17) (fp.isPositive kitten_15)) (=> (spoon_13 kitten_16 kitten_17) (fp.isNegative kitten_15))))
(define-fun spoon_15 ((kitten_18 Real)) Real (* kitten_18 kitten_18))
(define-fun spoon_16 ((kitten_19 Float32) (kitten_20 Real)) Bool (or (and (fp.isPositive kitten_19) (< 0.0 kitten_20)) (and (fp.isNegative kitten_19) (< kitten_20 0.0))))
(define-fun spoon_17 ((kitten_21 Float64)) Bool (and (fp.isInfinite kitten_21) (fp.isPositive kitten_21)))
(define-fun spoon_18 ((kitten_22 Float64)) Bool (and (fp.isInfinite kitten_22) (fp.isNegative kitten_22)))
(define-fun spoon_19 ((kitten_23 Float64)) Bool (and (fp.isZero kitten_23) (fp.isPositive kitten_23)))
(define-fun spoon_20 ((kitten_24 Float64)) Bool (and (fp.isZero kitten_24) (fp.isNegative kitten_24)))
(declare-const cat_21 Int)
(define-fun spoon_22 ((kitten_25 Int)) Bool (and (<= (- cat_21) kitten_25) (<= kitten_25 cat_21)))
(define-fun spoon_23 ((kitten_26 Int)) Bool (and (<= (- 9007199254740992) kitten_26) (<= kitten_26 9007199254740992)))
(define-fun spoon_24 ((kitten_27 Float64) (kitten_28 Float64)) Bool (or (and (fp.isPositive kitten_27) (fp.isPositive kitten_28)) (and (fp.isNegative kitten_27) (fp.isNegative kitten_28))))
(define-fun spoon_25 ((kitten_29 Float64) (kitten_30 Float64)) Bool (or (and (fp.isPositive kitten_29) (fp.isNegative kitten_30)) (and (fp.isNegative kitten_29) (fp.isPositive kitten_30))))
(define-fun spoon_26 ((kitten_31 Float64) (kitten_32 Float64) (kitten_33 Float64)) Bool (and (=> (spoon_24 kitten_32 kitten_33) (fp.isPositive kitten_31)) (=> (spoon_25 kitten_32 kitten_33) (fp.isNegative kitten_31))))
(define-fun spoon_27 ((kitten_34 Float64) (kitten_35 Real)) Bool (or (and (fp.isPositive kitten_34) (< 0.0 kitten_35)) (and (fp.isNegative kitten_34) (< kitten_35 0.0))))
(define-fun spoon_28 ((kitten_36 Int)) Bool (or (= kitten_36 0) (= kitten_36 1)))
(define-fun spoon_29 ((kitten_37 Float32)) Bool (and (spoon_1 kitten_37) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_37) (fp.leq kitten_37 (fp #b0 #b10000111 #b01101000000000000000000)))))
(define-fun spoon_30 ((kitten_38 Float32) (kitten_39 Bool) (kitten_40 Bool) (kitten_41 Bool) (kitten_42 Bool)) Bool (=> (or (= kitten_39 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000111 #b01101000000000000000000))) (spoon_29 kitten_38)))
(define-fun spoon_31 ((kitten_43 Float32)) Bool (and (spoon_1 kitten_43) (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) kitten_43) (fp.leq kitten_43 (fp #b0 #b01111111 #b00000000000000000000000)))))
(define-fun spoon_32 ((kitten_44 Float32) (kitten_45 Bool) (kitten_46 Bool) (kitten_47 Bool) (kitten_48 Bool)) Bool (=> (or (= kitten_45 true) (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (fp #b0 #b01111111 #b00000000000000000000000))) (spoon_31 kitten_44)))
(define-fun spoon_33 ((kitten_49 Float32)) Bool (and (spoon_1 kitten_49) (and (fp.leq (fp.neg (fp #b0 #b10000101 #b01101000000000000000000)) kitten_49) (fp.leq kitten_49 (fp #b0 #b10000101 #b01101000000000000000000)))))
(define-fun spoon_34 ((kitten_50 Float32) (kitten_51 Bool) (kitten_52 Bool) (kitten_53 Bool) (kitten_54 Bool)) Bool (=> (or (= kitten_51 true) (fp.leq (fp.neg (fp #b0 #b10000101 #b01101000000000000000000)) (fp #b0 #b10000101 #b01101000000000000000000))) (spoon_33 kitten_50)))
(define-fun spoon_35 ((kitten_55 Float32)) Bool (and (spoon_1 kitten_55) (and (fp.leq (fp.neg (fp #b0 #b10000111 #b01101000000000000000000)) kitten_55) (fp.leq kitten_55 (fp #b0 #b10000111 #b01101000000000000000000)))))
(define-fun spoon_36 ((kitten_56 Float32) (kitten_57 Bool) (kitten_58 Bool) (kitten_59 Bool) (kitten_60 Bool)) Bool (=> (or (= kitten_57 true) (fp.leq (fp.neg (fp #b0 #b10000111 #b01101000000000000000000)) (fp #b0 #b10000111 #b01101000000000000000000))) (spoon_35 kitten_56)))
(declare-const cat_37 Float64)
(declare-const cat_38 Int)
(declare-const cat_39 Float32)
(declare-const cat_40 Int)
(define-fun spoon_41 ((kitten_61 Float32)) Bool (and (spoon_1 kitten_61) (and (fp.leq (fp.neg (fp #b0 #b10000110 #b01101000000000000000000)) kitten_61) (fp.leq kitten_61 (fp #b0 #b10000110 #b01101000000000000000000)))))
(declare-const cat_42 Int)
(declare-const cat_43 Int)
(assert (<= 0 cat_42))
(assert (<= 0 cat_43))
(declare-const cat_44 Int)
(declare-const cat_45 Int)
(declare-const cat_46 Int)
(assert (<= 0 cat_44))
(assert (< cat_44 cat_45))
(assert (<= 0 cat_46))
(declare-const cat_47 Int)
(declare-const cat_48 Int)
(declare-const cat_49 Int)
(assert (<= 0 cat_47))
(assert (< cat_47 cat_48))
(assert (<= 0 cat_49))
(define-fun spoon_50 ((kitten_62 Float64) (kitten_63 Bool) (kitten_64 Bool) (kitten_65 Bool) (kitten_66 Bool)) Bool (=> (or (= kitten_63 true) (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))) (spoon_3 kitten_62)))
(define-fun spoon_51 ((kitten_67 Float64)) Bool (and (spoon_3 kitten_67) (and (fp.leq (fp #b0 #b10000001010 #b1010100100000000000000000000000000000000000000000000) kitten_67) (fp.leq kitten_67 (fp #b0 #b10000001010 #b1011010110000000000000000000000000000000000000000000)))))
(define-fun spoon_52 ((kitten_68 Float64) (kitten_69 Bool) (kitten_70 Bool) (kitten_71 Bool) (kitten_72 Bool)) Bool (=> (or (= kitten_69 true) (fp.leq (fp #b0 #b10000001010 #b1010100100000000000000000000000000000000000000000000) (fp #b0 #b10000001010 #b1011010110000000000000000000000000000000000000000000))) (spoon_51 kitten_68)))
(define-fun spoon_53 ((kitten_73 Float64)) Bool (and (spoon_3 kitten_73) (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) kitten_73) (fp.leq kitten_73 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))
(define-fun spoon_54 ((kitten_74 Float64) (kitten_75 Bool) (kitten_76 Bool) (kitten_77 Bool) (kitten_78 Bool)) Bool (=> (or (= kitten_75 true) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (spoon_53 kitten_74)))
(define-fun spoon_55 ((kitten_79 Float32)) Bool (and (spoon_1 kitten_79) (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) kitten_79) (fp.leq kitten_79 (fp #b0 #b01111111 #b00000000000000000000000)))))
(define-fun spoon_56 ((kitten_80 Float32) (kitten_81 Bool) (kitten_82 Bool) (kitten_83 Bool) (kitten_84 Bool)) Bool (=> (or (= kitten_81 true) (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (fp #b0 #b01111111 #b00000000000000000000000))) (spoon_55 kitten_80)))
(declare-const cat_57 Int)
(declare-const cat_58 Int)
(declare-const cat_59 Float64)
(declare-const cat_60 Int)
(declare-const cat_61 Int)
(declare-const cat_62 Int)
(declare-const cat_63 Int)
(declare-const cat_64 Int)
(declare-const cat_65 Int)
(declare-const cat_66 Int)
(declare-const cat_67 Int)
(declare-const cat_68 Int)
(declare-const cat_69 Int)
(declare-const cat_70 Int)
(declare-const cat_71 Int)
(declare-const cat_72 Int)
(declare-const cat_73 Int)
(declare-const cat_74 Int)
(declare-const cat_75 Int)
(declare-const cat_76 Int)
(define-fun spoon_77 ((kitten_85 Float32) (kitten_86 Bool) (kitten_87 Bool) (kitten_88 Bool) (kitten_89 Bool)) Bool (=> (or (= kitten_86 true) (fp.leq (fp.neg (fp #b0 #b10000110 #b01101000000000000000000)) (fp #b0 #b10000110 #b01101000000000000000000))) (spoon_41 kitten_85)))
(declare-const cat_78 Float64)
(declare-const cat_79 Float64)
(declare-const cat_80 Float32)
(declare-const cat_81 Float32)
(declare-const cat_82 Float32)
(declare-const cat_83 Float64)
(declare-const cat_84 Float64)
(declare-const cat_85 Float64)
(declare-const cat_86 Float64)
(declare-const cat_87 Float64)
(declare-const cat_88 Float64)
(declare-const cat_89 Float64)
(declare-const cat_90 Float64)
(declare-const cat_91 Float64)
(declare-const cat_92 Float64)
(declare-const cat_93 Float64)
(declare-const cat_94 Float32)
(declare-const cat_95 Float32)
(declare-const cat_96 Float32)
(declare-const cat_97 Float32)
(declare-const cat_98 Float32)
(declare-const cat_99 Float64)
(declare-const cat_100 Float32)
(declare-const cat_101 Float64)
(declare-const cat_102 Float32)
(declare-const cat_103 Float64)
(declare-const cat_104 Float32)
(declare-const cat_105 Float64)
(declare-const cat_106 Float32)
(declare-const cat_107 Float64)
(declare-const cat_108 Float32)
(declare-const cat_109 Float64)
(declare-const cat_110 Float64)
(declare-const cat_111 Float64)
(declare-const cat_112 Float64)
(declare-const cat_113 Float64)
(declare-const cat_114 Float64)
(declare-const cat_115 Float64)
(declare-const cat_116 Float64)
(declare-const cat_117 Float64)
(declare-const cat_118 Float64)
(declare-const cat_119 Float64)
(declare-const cat_120 Float64)
(declare-const cat_121 Float64)
(declare-const cat_122 Float64)
(declare-const cat_123 Float64)
(declare-const cat_124 Bool)
(declare-const cat_125 Bool)
(declare-const cat_126 Float64)
(declare-const cat_127 Float64)
(declare-const cat_128 Bool)
(declare-const cat_129 Bool)
(declare-const cat_130 Float64)
(declare-const cat_131 Float64)
(declare-const cat_132 Float64)
(declare-const cat_133 Float64)
(declare-const cat_134 Float64)
(declare-const cat_135 Float64)
(declare-const cat_136 Float64)
(declare-const cat_137 Float64)
(declare-const cat_138 Float64)
(declare-const cat_139 Float64)
(declare-const cat_140 Float64)
(declare-const cat_141 Bool)
(declare-const cat_142 Bool)
(declare-const cat_143 Float64)
(declare-const cat_144 Float64)
(declare-const cat_145 Bool)
(declare-const cat_146 Bool)
(declare-const cat_147 Float64)
(declare-const cat_148 Float32)
(declare-const cat_149 Float32)
(declare-const cat_150 Float32)
(declare-const cat_151 Float32)
(declare-const cat_152 Float32)
(declare-const cat_153 Float32)
(declare-const cat_154 Float64)
(declare-const cat_155 Float64)
(declare-const cat_156 Float64)
(declare-const cat_157 Float64)
(declare-const cat_158 Float64)
(declare-const cat_159 Float64)
(declare-const cat_160 Float64)
(declare-const cat_161 Float64)
(declare-const cat_162 Float64)
(declare-const cat_163 Float64)
(declare-const cat_164 Float64)
(declare-const cat_165 Bool)
(declare-const cat_166 Bool)
(declare-const cat_167 Float64)
(declare-const cat_168 Float64)
(declare-const cat_169 Float64)
(declare-const cat_170 Float64)
(declare-const cat_171 Float64)
(declare-const cat_172 Float64)
(declare-const cat_173 Bool)
(declare-const cat_174 Bool)
(assert (spoon_53 cat_37))
(assert (spoon_51 cat_59))
(assert (spoon_55 cat_39))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_78)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_79)))
(assert (and (and (fp.leq (fp #b0 #b01110101 #b00000110001001001101111) cat_39) (fp.leq cat_39 (fp #b0 #b01111000 #b01000111101011100001010))) (and (fp.leq (fp #b0 #b01111111000 #b0100011110101110000101000111101011100001010001111011) cat_37) (fp.leq cat_37 (fp #b0 #b01111111011 #b1001100110011001100110011001100110011001100110011010)))))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000111 #b01101000000000000000000)) (spoon_29 cat_80)))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000111 #b01101000000000000000000)) (spoon_29 cat_81)))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000111 #b01101000000000000000000)) (spoon_29 cat_82)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_83)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_84)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_85)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_86)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_87)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_88)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_89)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_90)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_91)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_92)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (spoon_3 cat_93)))
(declare-const cat_175 Float32)
(assert (and (= cat_95 cat_175) (spoon_29 cat_95)))
(assert (= cat_148 cat_81))
(assert (= cat_149 cat_95))
(assert (= cat_150 cat_80))
(assert (= cat_151 cat_96))
(assert (= cat_152 cat_82))
(assert (= cat_153 cat_97))
(declare-const cat_176 Float32)
(assert (and (= cat_98 cat_176) (spoon_31 cat_98)))
(assert (= cat_99 ((_ to_fp 11 53) RNE cat_98)))
(assert (= cat_154 cat_83))
(assert (= cat_155 cat_99))
(declare-const cat_177 Float32)
(assert (and (= cat_100 cat_177) (spoon_31 cat_100)))
(assert (= cat_101 ((_ to_fp 11 53) RNE cat_100)))
(assert (= cat_156 cat_84))
(assert (= cat_157 cat_101))
(declare-const cat_178 Float32)
(assert (and (= cat_102 cat_178) (spoon_31 cat_102)))
(assert (= cat_103 ((_ to_fp 11 53) RNE cat_102)))
(assert (= cat_158 cat_103))
(declare-const cat_179 Float32)
(assert (and (= cat_104 cat_179) (spoon_31 cat_104)))
(assert (= cat_105 ((_ to_fp 11 53) RNE cat_104)))
(assert (= cat_159 cat_105))
(declare-const cat_180 Float32)
(assert (and (= cat_106 cat_180) (spoon_31 cat_106)))
(assert (= cat_107 ((_ to_fp 11 53) RNE cat_106)))
(assert (= cat_160 cat_107))
(declare-const cat_181 Float32)
(assert (and (= cat_108 cat_181) (spoon_31 cat_108)))
(assert (= cat_109 ((_ to_fp 11 53) RNE cat_108)))
(assert (= cat_161 cat_109))
(assert (and (= cat_112 (fp.mul RNE cat_157 cat_159)) (spoon_3 (fp.mul RNE cat_157 cat_159))))
(assert (= cat_113 (fp.mul RNE cat_112 cat_161)))
(assert (and (= cat_114 cat_113) (spoon_3 cat_113)))
(assert (and (= cat_110 (fp.mul RNE cat_155 cat_158)) (spoon_3 (fp.mul RNE cat_155 cat_158))))
(assert (= cat_111 (fp.add RNE (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) cat_110)))
(assert (and (= cat_115 cat_111) (spoon_3 cat_111)))
(assert (= cat_116 (fp.add RNE cat_115 cat_114)))
(assert (and (= cat_117 cat_116) (spoon_3 cat_116)))
(assert (= cat_162 cat_117))
(assert (and (= cat_118 (fp.mul RNE (fp.mul RNE (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000) cat_59) cat_160)) (spoon_3 (fp.mul RNE (fp.mul RNE (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000) cat_59) cat_160))))
(assert (= cat_119 (fp.mul RNE cat_118 cat_157)))
(assert (and (= cat_120 cat_119) (spoon_3 cat_119)))
(assert (= cat_163 cat_120))
(assert (not (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) cat_162)))
(assert (=> (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) cat_162) (and (= cat_127 (fp.mul RNE (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111) cat_162)) (spoon_3 (fp.mul RNE (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111) cat_162)))))
(assert (=> (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) cat_162) (= cat_128 (ite (fp.leq cat_163 cat_127) true false))))
(assert (=> (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) cat_162) (and (= cat_126 (fp.mul RNE (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) cat_162)) (spoon_3 (fp.mul RNE (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) cat_162)))))
(assert (=> (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) cat_162) (= cat_129 (ite (fp.leq cat_126 cat_163) true false))))
(declare-const cat_182 Bool)
(assert (=> (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) cat_162) (= cat_166 cat_182)))
(assert (=> (not (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) cat_162)) (= cat_166 false)))
(assert (not (= cat_166 true)))
(assert (fp.lt cat_162 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (not (spoon_3 (fp.mul RNE (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) cat_162))))
(check-sat)
