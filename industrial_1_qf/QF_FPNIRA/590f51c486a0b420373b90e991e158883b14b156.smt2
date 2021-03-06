(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPNIRA)
(set-info :source |Benchmarks generated from industrial code by Florian Schanda using SPARK 2014 and an SMTLIB Obfuscation Script|)
(set-info :category industrial)
(set-info :status unknown)

(define-fun spoon_1 ((kitten_1 Float32)) Bool (not (or (fp.isInfinite kitten_1) (fp.isNaN kitten_1))))
(define-fun spoon_2 ((kitten_2 Float32)) Bool (or (fp.isZero kitten_2) (and (fp.isNormal kitten_2) (= kitten_2 (fp.roundToIntegral RNE kitten_2)))))
(define-fun spoon_3 ((kitten_3 Float32)) Bool (and (fp.isInfinite kitten_3) (fp.isPositive kitten_3)))
(define-fun spoon_4 ((kitten_4 Float32)) Bool (and (fp.isInfinite kitten_4) (fp.isNegative kitten_4)))
(define-fun spoon_5 ((kitten_5 Float32)) Bool (and (fp.isZero kitten_5) (fp.isPositive kitten_5)))
(define-fun spoon_6 ((kitten_6 Float32)) Bool (and (fp.isZero kitten_6) (fp.isNegative kitten_6)))
(declare-const cat_7 Int)
(define-fun spoon_8 ((kitten_7 Int)) Bool (and (<= (- cat_7) kitten_7) (<= kitten_7 cat_7)))
(define-fun spoon_9 ((kitten_8 Int)) Bool (and (<= (- 16777216) kitten_8) (<= kitten_8 16777216)))
(define-fun spoon_10 ((kitten_9 Float32) (kitten_10 Float32)) Bool (or (and (fp.isPositive kitten_9) (fp.isPositive kitten_10)) (and (fp.isNegative kitten_9) (fp.isNegative kitten_10))))
(define-fun spoon_11 ((kitten_11 Float32) (kitten_12 Float32)) Bool (or (and (fp.isPositive kitten_11) (fp.isNegative kitten_12)) (and (fp.isNegative kitten_11) (fp.isPositive kitten_12))))
(define-fun spoon_12 ((kitten_13 Float32) (kitten_14 Float32) (kitten_15 Float32)) Bool (and (=> (spoon_10 kitten_14 kitten_15) (fp.isPositive kitten_13)) (=> (spoon_11 kitten_14 kitten_15) (fp.isNegative kitten_13))))
(define-fun spoon_13 ((kitten_16 Real)) Real (* kitten_16 kitten_16))
(define-fun spoon_14 ((kitten_17 Float32) (kitten_18 Real)) Bool (or (and (fp.isPositive kitten_17) (< 0.0 kitten_18)) (and (fp.isNegative kitten_17) (< kitten_18 0.0))))
(define-fun spoon_15 ((kitten_19 Float32)) Bool (and (spoon_1 kitten_19) (and (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) kitten_19) (fp.leq kitten_19 (fp #b0 #b10001011 #b00000000000000000000000)))))
(declare-const cat_16 Int)
(declare-const cat_17 Int)
(assert (<= 0 cat_16))
(assert (<= 0 cat_17))
(declare-const cat_18 Int)
(declare-const cat_19 Int)
(declare-const cat_20 Int)
(assert (<= 0 cat_18))
(assert (< cat_18 cat_19))
(assert (<= 0 cat_20))
(declare-const cat_21 Int)
(declare-const cat_22 Int)
(declare-const cat_23 Int)
(assert (<= 0 cat_21))
(assert (< cat_21 cat_22))
(assert (<= 0 cat_23))
(define-fun spoon_24 ((kitten_20 Float32)) Bool (and (spoon_1 kitten_20) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_20) (fp.leq kitten_20 (fp #b0 #b10001100 #b01101010100000000000000)))))
(define-fun spoon_25 ((kitten_21 Float32) (kitten_22 Bool) (kitten_23 Bool) (kitten_24 Bool) (kitten_25 Bool)) Bool (=> (or (= kitten_22 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001100 #b01101010100000000000000))) (spoon_24 kitten_21)))
(define-fun spoon_26 ((kitten_26 Float32)) Bool (and (spoon_1 kitten_26) (and (fp.leq (fp.neg (fp #b0 #b10001100 #b00000000000000000000000)) kitten_26) (fp.leq kitten_26 (fp #b0 #b10001100 #b00000000000000000000000)))))
(declare-const cat_27 Int)
(declare-const cat_28 Int)
(assert (<= 0 cat_27))
(assert (<= 0 cat_28))
(declare-const cat_29 Int)
(declare-const cat_30 Int)
(declare-const cat_31 Int)
(assert (<= 0 cat_29))
(assert (< cat_29 cat_30))
(assert (<= 0 cat_31))
(declare-const cat_32 Int)
(declare-const cat_33 Int)
(declare-const cat_34 Int)
(assert (<= 0 cat_32))
(assert (< cat_32 cat_33))
(assert (<= 0 cat_34))
(define-fun spoon_35 ((kitten_27 Float32)) Bool (and (spoon_1 kitten_27) (and (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) kitten_27) (fp.leq kitten_27 (fp #b0 #b10011010 #b00000000000000000000000)))))
(define-fun spoon_36 ((kitten_28 Float32) (kitten_29 Bool) (kitten_30 Bool) (kitten_31 Bool) (kitten_32 Bool)) Bool (=> (or (= kitten_29 true) (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) (fp #b0 #b10011010 #b00000000000000000000000))) (spoon_35 kitten_28)))
(define-fun spoon_37 ((kitten_33 Float32) (kitten_34 Bool) (kitten_35 Bool) (kitten_36 Bool) (kitten_37 Bool)) Bool (=> (or (= kitten_34 true) (fp.leq (fp.neg (fp #b0 #b10001100 #b00000000000000000000000)) (fp #b0 #b10001100 #b00000000000000000000000))) (spoon_26 kitten_33)))
(define-fun spoon_38 ((kitten_38 Float32)) Bool (and (spoon_1 kitten_38) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_38) (fp.leq kitten_38 (fp #b0 #b01111111 #b00000000000000000000000)))))
(define-fun spoon_39 ((kitten_39 Float32) (kitten_40 Bool) (kitten_41 Bool) (kitten_42 Bool) (kitten_43 Bool)) Bool (=> (or (= kitten_40 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000))) (spoon_38 kitten_39)))
(declare-const cat_40 Int)
(declare-const cat_41 Int)
(declare-const cat_42 Int)
(declare-const cat_43 Int)
(declare-const cat_44 Int)
(declare-const cat_45 Int)
(declare-const cat_46 Int)
(define-fun spoon_47 ((kitten_44 Float32)) Bool (and (spoon_1 kitten_44) (and (fp.leq (fp.neg (fp #b0 #b10110110 #b00000000000000000000000)) kitten_44) (fp.leq kitten_44 (fp #b0 #b10110110 #b00000000000000000000000)))))
(define-fun spoon_48 ((kitten_45 Float32) (kitten_46 Bool) (kitten_47 Bool) (kitten_48 Bool) (kitten_49 Bool)) Bool (=> (or (= kitten_46 true) (fp.leq (fp.neg (fp #b0 #b10110110 #b00000000000000000000000)) (fp #b0 #b10110110 #b00000000000000000000000))) (spoon_47 kitten_45)))
(declare-const cat_49 Float32)
(declare-const cat_50 Int)
(declare-const cat_51 Int)
(declare-const cat_52 Int)
(declare-const cat_53 Int)
(declare-const cat_54 Int)
(declare-const cat_55 Int)
(declare-const cat_56 Int)
(declare-const cat_57 Int)
(declare-const cat_58 Int)
(declare-const cat_59 Int)
(declare-const cat_60 Int)
(declare-const cat_61 Int)
(declare-const cat_62 Int)
(declare-const cat_63 Int)
(declare-const cat_64 Int)
(declare-const cat_65 Int)
(define-fun spoon_66 ((kitten_50 Float32) (kitten_51 Bool) (kitten_52 Bool) (kitten_53 Bool) (kitten_54 Bool)) Bool (=> (or (= kitten_51 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (spoon_1 kitten_50)))
(assert (= cat_49 (fp #b0 #b01101011 #b00001100011011110111101)))
(define-fun spoon_67 ((kitten_55 Float32) (kitten_56 Bool) (kitten_57 Bool) (kitten_58 Bool) (kitten_59 Bool)) Bool (=> (or (= kitten_56 true) (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) (fp #b0 #b10001011 #b00000000000000000000000))) (spoon_15 kitten_55)))
(declare-const cat_68 Float32)
(declare-const cat_69 Float32)
(declare-const cat_70 Float32)
(declare-const cat_71 Float32)
(declare-const cat_72 Float32)
(declare-const cat_73 Float32)
(declare-const cat_74 Float32)
(declare-const cat_75 Float32)
(declare-const cat_76 Float32)
(declare-const cat_77 Float32)
(declare-const cat_78 Float32)
(declare-const cat_79 Float32)
(declare-const cat_80 Float32)
(declare-const cat_81 Float32)
(declare-const cat_82 Float32)
(declare-const cat_83 Float32)
(declare-const cat_84 Float32)
(declare-const cat_85 Float32)
(declare-const cat_86 Float32)
(declare-const cat_87 Float32)
(declare-const cat_88 Float32)
(declare-const cat_89 Float32)
(declare-const cat_90 Float32)
(declare-const cat_91 Float32)
(declare-const cat_92 Float32)
(declare-const cat_93 Float32)
(declare-const cat_94 Float32)
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
(declare-const cat_118 Float32)
(declare-const cat_119 Float32)
(declare-const cat_120 Float32)
(declare-const cat_121 Float32)
(declare-const cat_122 Float32)
(declare-const cat_123 Float32)
(declare-const cat_124 Float32)
(declare-const cat_125 Float32)
(declare-const cat_126 Float32)
(declare-const cat_127 Float32)
(assert (spoon_26 cat_49))
(assert (= (fp #b0 #b01101011 #b00001100011011110111101) cat_49))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000)) (spoon_38 cat_68)))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000)) (spoon_38 cat_69)))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001100 #b01101010100000000000000)) (spoon_24 cat_70)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) (fp #b0 #b10011010 #b00000000000000000000000)) (spoon_35 cat_71)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) (fp #b0 #b10011010 #b00000000000000000000000)) (spoon_35 cat_72)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) (fp #b0 #b10011010 #b00000000000000000000000)) (spoon_35 cat_73)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) (fp #b0 #b10011010 #b00000000000000000000000)) (spoon_35 cat_74)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) (fp #b0 #b10011010 #b00000000000000000000000)) (spoon_35 cat_75)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10110110 #b00000000000000000000000)) (fp #b0 #b10110110 #b00000000000000000000000)) (spoon_47 cat_76)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10110110 #b00000000000000000000000)) (fp #b0 #b10110110 #b00000000000000000000000)) (spoon_47 cat_77)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10110110 #b00000000000000000000000)) (fp #b0 #b10110110 #b00000000000000000000000)) (spoon_47 cat_78)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10110110 #b00000000000000000000000)) (fp #b0 #b10110110 #b00000000000000000000000)) (spoon_47 cat_79)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10110110 #b00000000000000000000000)) (fp #b0 #b10110110 #b00000000000000000000000)) (spoon_47 cat_80)))
(assert (= cat_94 cat_81))
(assert (= cat_95 cat_82))
(assert (= cat_96 cat_83))
(assert (= cat_97 cat_84))
(assert (= cat_98 cat_85))
(assert (= cat_99 (fp.sub RNE (fp.mul RNE cat_94 cat_96) (fp.mul RNE cat_95 cat_95))))
(assert (= cat_100 cat_99))
(assert (= cat_101 cat_99))
(assert (=> (fp.lt cat_99 cat_49) (= cat_102 (fp #b0 #b00000000 #b00000000000000000000000))))
(assert (=> (fp.lt cat_99 cat_49) (= cat_103 (fp #b0 #b01111111 #b00000000000000000000000))))
(assert (=> (fp.lt cat_99 cat_49) (= cat_104 cat_98)))
(assert (=> (fp.lt cat_99 cat_49) (= cat_105 cat_96)))
(assert (=> (not (fp.lt cat_99 cat_49)) (= cat_106 (fp.sub RNE (fp.mul RNE cat_95 cat_98) (fp.mul RNE cat_96 cat_97)))))
(assert (=> (not (fp.lt cat_99 cat_49)) (= cat_107 (fp.sub RNE (fp.mul RNE cat_94 cat_98) (fp.mul RNE cat_95 cat_97)))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000)) (= cat_108 (fp #b0 #b00000000 #b00000000000000000000000)))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000)) (= cat_109 cat_98))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000)) (= cat_110 cat_96))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (not (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_100 cat_106) (= cat_111 cat_100)))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (not (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_100 cat_106) (= cat_112 (fp.add RNE cat_98 cat_95))))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (not (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_100 cat_106) (= cat_113 cat_96)))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (not (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_100 cat_106)) (= cat_113 cat_101)))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (not (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_100 cat_106)) (= cat_112 cat_107)))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (not (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_100 cat_106)) (= cat_111 cat_106)))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (not (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000))) (= cat_110 cat_113))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (not (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000))) (= cat_109 cat_112))))
(assert (=> (not (fp.lt cat_99 cat_49)) (=> (not (fp.lt cat_106 (fp #b0 #b00000000 #b00000000000000000000000))) (= cat_108 cat_111))))
(assert (=> (not (fp.lt cat_99 cat_49)) (= cat_105 cat_110)))
(assert (=> (not (fp.lt cat_99 cat_49)) (= cat_104 cat_109)))
(assert (=> (not (fp.lt cat_99 cat_49)) (= cat_103 cat_100)))
(assert (=> (not (fp.lt cat_99 cat_49)) (= cat_102 cat_108)))
(assert (=> (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000)) (= cat_114 (fp #b0 #b00000000 #b00000000000000000000000))))
(assert (=> (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000)) (=> (fp.lt (fp.neg cat_97) (fp #b0 #b00000000 #b00000000000000000000000)) (= cat_115 (fp #b0 #b00000000 #b00000000000000000000000)))))
(assert (=> (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000)) (=> (fp.lt (fp.neg cat_97) (fp #b0 #b00000000 #b00000000000000000000000)) (= cat_118 cat_103))))
(assert (=> (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000)) (=> (not (fp.lt (fp.neg cat_97) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_94 (fp.neg cat_97)) (= cat_116 cat_103)))))
(assert (=> (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000)) (=> (not (fp.lt (fp.neg cat_97) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_94 (fp.neg cat_97)) (= cat_118 cat_103)))))
(assert (=> (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000)) (=> (not (fp.lt (fp.neg cat_97) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_94 (fp.neg cat_97))) (= cat_117 (fp.neg cat_97))))))
(assert (=> (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000)) (=> (not (fp.lt (fp.neg cat_97) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_94 (fp.neg cat_97))) (= cat_118 cat_94)))))
(assert (=> (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000)) (=> (not (fp.lt (fp.neg cat_97) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_94 (fp.neg cat_97))) (= cat_116 cat_117)))))
(assert (=> (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000)) (=> (not (fp.lt (fp.neg cat_97) (fp #b0 #b00000000 #b00000000000000000000000))) (= cat_115 cat_116))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_105 cat_104) (= cat_119 cat_105))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_105 cat_104) (=> (fp.lt (fp.add RNE (fp.neg cat_97) cat_95) (fp #b0 #b00000000 #b00000000000000000000000)) (= cat_120 (fp #b0 #b00000000 #b00000000000000000000000))))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_105 cat_104) (=> (fp.lt (fp.add RNE (fp.neg cat_97) cat_95) (fp #b0 #b00000000 #b00000000000000000000000)) (= cat_123 cat_103)))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_105 cat_104) (=> (not (fp.lt (fp.add RNE (fp.neg cat_97) cat_95) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_94 (fp.add RNE (fp.neg cat_97) cat_95)) (= cat_121 cat_103))))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_105 cat_104) (=> (not (fp.lt (fp.add RNE (fp.neg cat_97) cat_95) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_94 (fp.add RNE (fp.neg cat_97) cat_95)) (= cat_123 cat_103))))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_105 cat_104) (=> (not (fp.lt (fp.add RNE (fp.neg cat_97) cat_95) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_94 (fp.add RNE (fp.neg cat_97) cat_95))) (= cat_122 (fp.add RNE (fp.neg cat_97) cat_95)))))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_105 cat_104) (=> (not (fp.lt (fp.add RNE (fp.neg cat_97) cat_95) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_94 (fp.add RNE (fp.neg cat_97) cat_95))) (= cat_123 cat_94))))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_105 cat_104) (=> (not (fp.lt (fp.add RNE (fp.neg cat_97) cat_95) (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_94 (fp.add RNE (fp.neg cat_97) cat_95))) (= cat_121 cat_122))))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (fp.lt cat_105 cat_104) (=> (not (fp.lt (fp.add RNE (fp.neg cat_97) cat_95) (fp #b0 #b00000000 #b00000000000000000000000))) (= cat_120 cat_121)))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_105 cat_104)) (= cat_119 cat_104))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_105 cat_104)) (= cat_123 cat_103))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (=> (not (fp.lt cat_105 cat_104)) (= cat_120 cat_102))))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (= cat_114 cat_119)))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (= cat_118 cat_123)))
(assert (=> (not (fp.lt cat_104 (fp #b0 #b00000000 #b00000000000000000000000))) (= cat_115 cat_120)))
(assert (not (fp.lt cat_118 cat_49)))
(assert (not (not (fp.isZero cat_118))))
(check-sat)
