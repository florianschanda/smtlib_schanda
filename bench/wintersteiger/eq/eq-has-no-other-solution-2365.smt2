(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.677064173576801930920510130818001925945281982421875p811 {+ 3049225959826398 811 (2.29021e+244)}
; Y = 1.1938520275024055994350646869861520826816558837890625p953 {+ 873031918824849 953 (9.08942e+286)}
; 1.677064173576801930920510130818001925945281982421875p811 = 1.1938520275024055994350646869861520826816558837890625p953 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100101010 #b1010110101010100000100111110001011001110001111011110)))
(assert (= y (fp #b0 #b11110111000 #b0011000110100000010010010101011001100010110110010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
