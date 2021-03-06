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
(define-fun spoon_29 ((kitten_37 Float32) (kitten_38 Bool) (kitten_39 Bool) (kitten_40 Bool) (kitten_41 Bool)) Bool (=> (or (= kitten_38 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (spoon_1 kitten_37)))
(define-fun spoon_30 ((kitten_42 Float32)) Bool (and (spoon_1 kitten_42) (and (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) kitten_42) (fp.leq kitten_42 (fp #b0 #b10001011 #b00000000000000000000000)))))
(declare-const cat_31 Int)
(declare-const cat_32 Int)
(assert (<= 0 cat_31))
(assert (<= 0 cat_32))
(declare-const cat_33 Int)
(declare-const cat_34 Int)
(declare-const cat_35 Int)
(assert (<= 0 cat_33))
(assert (< cat_33 cat_34))
(assert (<= 0 cat_35))
(declare-const cat_36 Int)
(declare-const cat_37 Int)
(declare-const cat_38 Int)
(assert (<= 0 cat_36))
(assert (< cat_36 cat_37))
(assert (<= 0 cat_38))
(define-fun spoon_39 ((kitten_43 Float32)) Bool (and (spoon_1 kitten_43) (and (fp.leq (fp.neg (fp #b0 #b10000101 #b01100111111101011101000)) kitten_43) (fp.leq kitten_43 (fp #b0 #b10000101 #b01100111111101011101000)))))
(define-fun spoon_40 ((kitten_44 Float32) (kitten_45 Bool) (kitten_46 Bool) (kitten_47 Bool) (kitten_48 Bool)) Bool (=> (or (= kitten_45 true) (fp.leq (fp.neg (fp #b0 #b10000101 #b01100111111101011101000)) (fp #b0 #b10000101 #b01100111111101011101000))) (spoon_39 kitten_44)))
(define-fun spoon_41 ((kitten_49 Float32)) Bool (and (spoon_1 kitten_49) (and (fp.leq (fp.neg (fp #b0 #b10001011 #b01101010100000000000000)) kitten_49) (fp.leq kitten_49 (fp #b0 #b10001011 #b01101010100000000000000)))))
(define-fun spoon_42 ((kitten_50 Float32) (kitten_51 Bool) (kitten_52 Bool) (kitten_53 Bool) (kitten_54 Bool)) Bool (=> (or (= kitten_51 true) (fp.leq (fp.neg (fp #b0 #b10001011 #b01101010100000000000000)) (fp #b0 #b10001011 #b01101010100000000000000))) (spoon_41 kitten_50)))
(define-fun spoon_43 ((kitten_55 Float32)) Bool (and (spoon_1 kitten_55) (and (fp.leq (fp.neg (fp #b0 #b10000110 #b01101000000000000000000)) kitten_55) (fp.leq kitten_55 (fp #b0 #b10000110 #b01101000000000000000000)))))
(define-fun spoon_44 ((kitten_56 Float32) (kitten_57 Bool) (kitten_58 Bool) (kitten_59 Bool) (kitten_60 Bool)) Bool (=> (or (= kitten_57 true) (fp.leq (fp.neg (fp #b0 #b10000110 #b01101000000000000000000)) (fp #b0 #b10000110 #b01101000000000000000000))) (spoon_43 kitten_56)))
(define-fun spoon_45 ((kitten_61 Float32)) Bool (and (spoon_1 kitten_61) (and (fp.leq (fp.neg (fp #b0 #b10000101 #b01101000000000000000000)) kitten_61) (fp.leq kitten_61 (fp #b0 #b10000101 #b01101000000000000000000)))))
(declare-const cat_46 Int)
(declare-const cat_47 Int)
(assert (<= 0 cat_46))
(assert (<= 0 cat_47))
(declare-const cat_48 Int)
(declare-const cat_49 Int)
(declare-const cat_50 Int)
(assert (<= 0 cat_48))
(assert (< cat_48 cat_49))
(assert (<= 0 cat_50))
(declare-const cat_51 Int)
(declare-const cat_52 Int)
(declare-const cat_53 Int)
(assert (<= 0 cat_51))
(assert (< cat_51 cat_52))
(assert (<= 0 cat_53))
(declare-const cat_54 Int)
(define-fun spoon_55 ((kitten_62 Float32) (kitten_63 Bool) (kitten_64 Bool) (kitten_65 Bool) (kitten_66 Bool)) Bool (=> (or (= kitten_63 true) (fp.leq (fp.neg (fp #b0 #b10000101 #b01101000000000000000000)) (fp #b0 #b10000101 #b01101000000000000000000))) (spoon_45 kitten_62)))
(declare-const cat_56 Int)
(define-fun spoon_57 ((kitten_67 Float64)) Bool (and (spoon_3 kitten_67) (and (fp.leq (fp #b0 #b10000001010 #b1010100100000000000000000000000000000000000000000000) kitten_67) (fp.leq kitten_67 (fp #b0 #b10000001010 #b1011010110000000000000000000000000000000000000000000)))))
(define-fun spoon_58 ((kitten_68 Float64) (kitten_69 Bool) (kitten_70 Bool) (kitten_71 Bool) (kitten_72 Bool)) Bool (=> (or (= kitten_69 true) (fp.leq (fp #b0 #b10000001010 #b1010100100000000000000000000000000000000000000000000) (fp #b0 #b10000001010 #b1011010110000000000000000000000000000000000000000000))) (spoon_57 kitten_68)))
(define-fun spoon_59 ((kitten_73 Float64)) Bool (and (spoon_3 kitten_73) (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) kitten_73) (fp.leq kitten_73 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))
(define-fun spoon_60 ((kitten_74 Float64) (kitten_75 Bool) (kitten_76 Bool) (kitten_77 Bool) (kitten_78 Bool)) Bool (=> (or (= kitten_75 true) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (spoon_59 kitten_74)))
(define-fun spoon_61 ((kitten_79 Float32)) Bool (and (spoon_1 kitten_79) (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) kitten_79) (fp.leq kitten_79 (fp #b0 #b01111111 #b00000000000000000000000)))))
(define-fun spoon_62 ((kitten_80 Float32) (kitten_81 Bool) (kitten_82 Bool) (kitten_83 Bool) (kitten_84 Bool)) Bool (=> (or (= kitten_81 true) (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (fp #b0 #b01111111 #b00000000000000000000000))) (spoon_61 kitten_80)))
(declare-const cat_63 Int)
(declare-const cat_64 Int)
(declare-const cat_65 Float64)
(declare-const cat_66 Int)
(declare-const cat_67 Float64)
(declare-const cat_68 Int)
(declare-const cat_69 Float32)
(declare-const cat_70 Int)
(declare-const cat_71 Int)
(declare-const cat_72 Int)
(declare-const cat_73 Int)
(declare-const cat_74 Int)
(declare-const cat_75 Int)
(declare-const cat_76 Int)
(declare-const cat_77 Int)
(declare-const cat_78 Int)
(declare-const cat_79 Int)
(declare-const cat_80 Int)
(declare-const cat_81 Int)
(declare-const cat_82 Int)
(define-fun spoon_83 ((kitten_85 Float32) (kitten_86 Bool) (kitten_87 Bool) (kitten_88 Bool) (kitten_89 Bool)) Bool (=> (or (= kitten_86 true) (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) (fp #b0 #b10001011 #b00000000000000000000000))) (spoon_30 kitten_85)))
(declare-const cat_84 Bool)
(declare-const cat_85 Float32)
(declare-const cat_86 Float32)
(declare-const cat_87 Float32)
(declare-const cat_88 Float32)
(declare-const cat_89 Float32)
(declare-const cat_90 Float32)
(declare-const cat_91 Float32)
(declare-const cat_92 Float32)
(declare-const cat_93 Float32)
(declare-const cat_94 Bool)
(declare-const cat_95 Float32)
(declare-const cat_96 Float32)
(declare-const cat_97 Float32)
(declare-const cat_98 Float32)
(declare-const cat_99 Float32)
(declare-const cat_100 Float32)
(declare-const cat_101 Float32)
(declare-const cat_102 Float32)
(declare-const cat_103 Float32)
(declare-const cat_104 Float32)
(declare-const cat_105 Float32)
(declare-const cat_106 Float32)
(declare-const cat_107 Float32)
(declare-const cat_108 Float32)
(declare-const cat_109 Float32)
(declare-const cat_110 Float32)
(declare-const cat_111 Float32)
(declare-const cat_112 Float32)
(declare-const cat_113 Float32)
(declare-const cat_114 Float32)
(declare-const cat_115 Float32)
(declare-const cat_116 Float32)
(declare-const cat_117 Float32)
(declare-const cat_118 Bool)
(declare-const cat_119 Bool)
(declare-const cat_120 Float32)
(declare-const cat_121 Float32)
(declare-const cat_122 Float32)
(declare-const cat_123 Float32)
(declare-const cat_124 Bool)
(declare-const cat_125 Bool)
(declare-const cat_126 Float32)
(declare-const cat_127 Float32)
(declare-const cat_128 Float32)
(declare-const cat_129 Float32)
(declare-const cat_130 Float32)
(declare-const cat_131 Float32)
(declare-const cat_132 Float32)
(declare-const cat_133 Float32)
(declare-const cat_134 Float32)
(declare-const cat_135 Float32)
(declare-const cat_136 Float32)
(declare-const cat_137 Float32)
(declare-const cat_138 Float32)
(declare-const cat_139 Float32)
(declare-const cat_140 Bool)
(declare-const cat_141 Bool)
(declare-const cat_142 Bool)
(declare-const cat_143 Float32)
(declare-const cat_144 Float32)
(declare-const cat_145 Float32)
(declare-const cat_146 Float32)
(declare-const cat_147 Float32)
(declare-const cat_148 Float32)
(declare-const cat_149 Float32)
(declare-const cat_150 Float32)
(declare-const cat_151 Bool)
(declare-const cat_152 Float32)
(declare-const cat_153 Float32)
(declare-const cat_154 Bool)
(declare-const cat_155 Bool)
(declare-const cat_156 Float32)
(assert (spoon_59 cat_65))
(assert (spoon_57 cat_67))
(assert (spoon_61 cat_69))
(assert (and (and (fp.leq (fp #b0 #b01110101 #b00000110001001001101111) cat_69) (fp.leq cat_69 (fp #b0 #b01111000 #b01000111101011100001010))) (and (fp.leq (fp #b0 #b01111111000 #b0100011110101110000101000111101011100001010001111011) cat_65) (fp.leq cat_65 (fp #b0 #b01111111011 #b1001100110011001100110011001100110011001100110011010)))))
(assert (= cat_133 cat_85))
(assert (= cat_134 (fp #b0 #b00000000 #b00000000000000000000000)))
(assert (spoon_1 cat_134))
(assert (= cat_135 (fp #b0 #b00000000 #b00000000000000000000000)))
(assert (spoon_1 cat_135))
(assert (= cat_136 (fp #b0 #b00000000 #b00000000000000000000000)))
(assert (spoon_1 cat_136))
(assert (= cat_137 (fp #b0 #b00000000 #b00000000000000000000000)))
(assert (spoon_1 cat_137))
(assert (= cat_138 (fp #b0 #b00000000 #b00000000000000000000000)))
(assert (spoon_61 cat_138))
(assert (= cat_139 (fp #b0 #b00000000 #b00000000000000000000000)))
(assert (spoon_41 cat_139))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10000101 #b01101000000000000000000)) (fp #b0 #b10000101 #b01101000000000000000000)) (spoon_45 cat_91)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)) (spoon_1 cat_92)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)) (spoon_1 cat_93)))
(assert (= cat_140 (distinct 1 0)))
(assert (= cat_141 (ite (not (= cat_94 true)) true false)))
(assert (= cat_141 true))
(assert (=> (= cat_142 true) (= cat_146 (fp.mul RNE cat_69 cat_69))))
(assert (=> (= cat_142 true) (= cat_147 ((_ to_fp 8 24) RNE (fp.sub RNE (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (fp.mul RNE cat_65 cat_65))))))
(assert (=> (= cat_142 true) (= cat_148 (fp.sqrt RNE cat_147))))
(assert (=> (not (= cat_142 true)) (= cat_143 cat_139)))
(assert (=> (not (= cat_142 true)) (= cat_146 cat_138)))
(assert (=> (not (= cat_142 true)) (= cat_147 cat_135)))
(assert (=> (not (= cat_142 true)) (= cat_148 cat_134)))
(assert (=> (= cat_142 true) (and (= cat_99 (fp.sub RNE cat_147 cat_146)) (spoon_1 (fp.sub RNE cat_147 cat_146)))))
(assert (=> (= cat_142 true) (= cat_100 (fp.add RNE cat_99 (fp.mul RNE cat_143 cat_143)))))
(assert (=> (= cat_142 true) (and (= cat_101 cat_100) (spoon_1 cat_100))))
(assert (=> (= cat_142 true) (= cat_149 cat_101)))
(assert (=> (= cat_142 true) (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) cat_149) (= cat_150 (fp.sqrt RNE cat_149)))))
(assert (=> (= cat_142 true) (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) cat_149) (= cat_151 cat_142))))
(assert (=> (= cat_142 true) (=> (not (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) cat_149)) (= cat_151 (distinct 0 0)))))
(assert (=> (= cat_142 true) (=> (not (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) cat_149)) (= cat_150 cat_136))))
(assert (=> (not (= cat_142 true)) (= cat_149 cat_137)))
(assert (=> (not (= cat_142 true)) (= cat_150 cat_136)))
(assert (=> (not (= cat_142 true)) (= cat_151 cat_142)))
(assert (= cat_151 true))
(assert (and (= cat_104 (fp.mul RNE cat_150 cat_69)) (spoon_1 (fp.mul RNE cat_150 cat_69))))
(assert (and (= cat_102 (fp.mul RNE cat_148 (fp.add RNE ((_ to_fp 8 24) RNE (fp.mul RNE cat_65 cat_65)) cat_146))) (spoon_1 (fp.mul RNE cat_148 (fp.add RNE ((_ to_fp 8 24) RNE (fp.mul RNE cat_65 cat_65)) cat_146)))))
(assert (= cat_103 (fp.mul RNE cat_102 cat_143)))
(assert (and (= cat_105 cat_103) (spoon_1 cat_103)))
(assert (= cat_106 (fp.sub RNE cat_105 cat_104)))
(assert (and (= cat_107 cat_106) (spoon_1 cat_106)))
(assert (= cat_152 cat_107))
(assert (and (= cat_108 (fp.mul RNE cat_150 cat_69)) (spoon_1 (fp.mul RNE cat_150 cat_69))))
(assert (= cat_109 (fp.mul RNE cat_108 cat_143)))
(assert (not (spoon_1 cat_109)))
(check-sat)
