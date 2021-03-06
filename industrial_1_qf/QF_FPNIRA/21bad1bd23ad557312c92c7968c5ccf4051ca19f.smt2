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
(define-fun spoon_15 ((kitten_19 Float32)) Bool (and (spoon_1 kitten_19) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_19) (fp.leq kitten_19 (fp #b0 #b11111110 #b11111111111111111111111)))))
(define-fun spoon_16 ((kitten_20 Float32) (kitten_21 Bool) (kitten_22 Bool) (kitten_23 Bool) (kitten_24 Bool)) Bool (=> (or (= kitten_21 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b11111110 #b11111111111111111111111))) (spoon_15 kitten_20)))
(define-fun spoon_17 ((kitten_25 Float32)) Bool (and (spoon_1 kitten_25) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_25) (fp.leq kitten_25 (fp #b0 #b10111111 #b00000000000000000110000)))))
(define-fun spoon_18 ((kitten_26 Float32) (kitten_27 Bool) (kitten_28 Bool) (kitten_29 Bool) (kitten_30 Bool)) Bool (=> (or (= kitten_27 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10111111 #b00000000000000000110000))) (spoon_17 kitten_26)))
(define-fun spoon_19 ((kitten_31 Float32)) Bool (and (spoon_1 kitten_31) (and (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) kitten_31) (fp.leq kitten_31 (fp #b0 #b10001011 #b00000000000000000000000)))))
(declare-const cat_20 Int)
(declare-const cat_21 Int)
(assert (<= 0 cat_20))
(assert (<= 0 cat_21))
(declare-const cat_22 Int)
(declare-const cat_23 Int)
(declare-const cat_24 Int)
(assert (<= 0 cat_22))
(assert (< cat_22 cat_23))
(assert (<= 0 cat_24))
(declare-const cat_25 Int)
(declare-const cat_26 Int)
(declare-const cat_27 Int)
(assert (<= 0 cat_25))
(assert (< cat_25 cat_26))
(assert (<= 0 cat_27))
(define-fun spoon_28 ((kitten_32 Float32)) Bool (and (spoon_1 kitten_32) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_32) (fp.leq kitten_32 (fp #b0 #b10001100 #b01101010100000000000000)))))
(define-fun spoon_29 ((kitten_33 Float32) (kitten_34 Bool) (kitten_35 Bool) (kitten_36 Bool) (kitten_37 Bool)) Bool (=> (or (= kitten_34 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001100 #b01101010100000000000000))) (spoon_28 kitten_33)))
(define-fun spoon_30 ((kitten_38 Float32)) Bool (and (spoon_1 kitten_38) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_38) (fp.leq kitten_38 (fp #b0 #b01111111 #b00000000000000000000000)))))
(define-fun spoon_31 ((kitten_39 Float32) (kitten_40 Bool) (kitten_41 Bool) (kitten_42 Bool) (kitten_43 Bool)) Bool (=> (or (= kitten_40 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000))) (spoon_30 kitten_39)))
(declare-const cat_32 Int)
(declare-const cat_33 Int)
(declare-const cat_34 Int)
(declare-const cat_35 Int)
(declare-const cat_36 Int)
(define-fun spoon_37 ((kitten_44 Float32)) Bool (and (spoon_1 kitten_44) (and (fp.leq (fp.neg (fp #b0 #b10100111 #b11010001101010011001011)) kitten_44) (fp.leq kitten_44 (fp #b0 #b10100111 #b11010001101010011001011)))))
(define-fun spoon_38 ((kitten_45 Float32) (kitten_46 Bool) (kitten_47 Bool) (kitten_48 Bool) (kitten_49 Bool)) Bool (=> (or (= kitten_46 true) (fp.leq (fp.neg (fp #b0 #b10100111 #b11010001101010011001011)) (fp #b0 #b10100111 #b11010001101010011001011))) (spoon_37 kitten_45)))
(define-fun spoon_39 ((kitten_50 Float32)) Bool (and (spoon_1 kitten_50) (and (fp.leq (fp.neg (fp #b0 #b10011010 #b00000001011111011111100)) kitten_50) (fp.leq kitten_50 (fp #b0 #b10011010 #b00000001011111011111100)))))
(define-fun spoon_40 ((kitten_51 Float32) (kitten_52 Bool) (kitten_53 Bool) (kitten_54 Bool) (kitten_55 Bool)) Bool (=> (or (= kitten_52 true) (fp.leq (fp.neg (fp #b0 #b10011010 #b00000001011111011111100)) (fp #b0 #b10011010 #b00000001011111011111100))) (spoon_39 kitten_51)))
(define-fun spoon_41 ((kitten_56 Float32)) Bool (and (spoon_1 kitten_56) (and (fp.leq (fp.neg (fp #b0 #b10001100 #b00000000000000000000000)) kitten_56) (fp.leq kitten_56 (fp #b0 #b10001100 #b00000000000000000000000)))))
(define-fun spoon_42 ((kitten_57 Float32) (kitten_58 Bool) (kitten_59 Bool) (kitten_60 Bool) (kitten_61 Bool)) Bool (=> (or (= kitten_58 true) (fp.leq (fp.neg (fp #b0 #b10001100 #b00000000000000000000000)) (fp #b0 #b10001100 #b00000000000000000000000))) (spoon_41 kitten_57)))
(declare-const cat_43 Int)
(declare-const cat_44 Int)
(declare-const cat_45 Int)
(declare-const cat_46 Int)
(declare-const cat_47 Int)
(declare-const cat_48 Int)
(declare-const cat_49 Int)
(declare-const cat_50 Int)
(define-fun spoon_51 ((kitten_62 Float32) (kitten_63 Bool) (kitten_64 Bool) (kitten_65 Bool) (kitten_66 Bool)) Bool (=> (or (= kitten_63 true) (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) (fp #b0 #b10001011 #b00000000000000000000000))) (spoon_19 kitten_62)))
(declare-const cat_52 Float32)
(declare-const cat_53 Float32)
(declare-const cat_54 Float32)
(declare-const cat_55 Float32)
(declare-const cat_56 Float32)
(declare-const cat_57 Float32)
(declare-const cat_58 Float32)
(declare-const cat_59 Float32)
(declare-const cat_60 Float32)
(declare-const cat_61 Float32)
(declare-const cat_62 Float32)
(declare-const cat_63 Float32)
(declare-const cat_64 Float32)
(declare-const cat_65 Float32)
(declare-const cat_66 Float32)
(declare-const cat_67 Float32)
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
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000)) (spoon_30 cat_52)))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001100 #b01101010100000000000000)) (spoon_28 cat_53)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10001100 #b00000000000000000000000)) (fp #b0 #b10001100 #b00000000000000000000000)) (spoon_41 cat_54)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10001100 #b00000000000000000000000)) (fp #b0 #b10001100 #b00000000000000000000000)) (spoon_41 cat_55)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000001011111011111100)) (fp #b0 #b10011010 #b00000001011111011111100)) (spoon_39 cat_56)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000001011111011111100)) (fp #b0 #b10011010 #b00000001011111011111100)) (spoon_39 cat_57)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000001011111011111100)) (fp #b0 #b10011010 #b00000001011111011111100)) (spoon_39 cat_58)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000001011111011111100)) (fp #b0 #b10011010 #b00000001011111011111100)) (spoon_39 cat_59)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b10100111 #b11010001101010011001011)) (fp #b0 #b10100111 #b11010001101010011001011)) (spoon_37 cat_60)))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001100 #b01101010100000000000000)) (spoon_28 cat_61)))
(assert (= cat_70 cat_54))
(assert (= cat_72 cat_55))
(assert (= cat_74 cat_56))
(assert (= cat_75 (fp.add RNE (fp.mul RNE cat_71 cat_71) (fp.mul RNE cat_73 cat_73))))
(assert (not (fp.lt cat_75 (fp #b0 #b01110001 #b10100011011011100010111))))
(assert (= cat_76 cat_58))
(assert (and (= cat_62 (fp.div RNE cat_77 cat_75)) (spoon_1 (fp.div RNE cat_77 cat_75))))
(assert (and (= cat_63 cat_62) (spoon_1 cat_62)))
(assert (= cat_78 cat_60))
(assert (= cat_79 cat_63))
(assert (not (fp.leq cat_79 (fp #b0 #b00000000 #b00000000000000000000000))))
(assert (not (fp.leq (fp #b0 #b01111111 #b00000000000000000000000) cat_79)))
(assert (= cat_80 cat_59))
(assert (and (= cat_64 cat_75) (spoon_1 cat_75)))
(declare-const cat_86 Float32)
(assert (and (= cat_65 cat_86) (spoon_17 cat_65)))
(assert (and (= cat_66 cat_65) (spoon_1 cat_65)))
(assert (= cat_82 cat_57))
(assert (= cat_83 cat_66))
(assert (and (= cat_67 (fp.div RNE (fp.abs cat_81) cat_83)) (spoon_1 (fp.div RNE (fp.abs cat_81) cat_83))))
(assert (and (= cat_68 cat_67) (spoon_1 cat_67)))
(assert (= cat_84 cat_53))
(assert (= cat_85 cat_68))
(assert (not (spoon_30 cat_79)))
(check-sat)
