(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.87483309019360699920753177138976752758026123046875p-348 {- 3939897979007308 -348 (-3.26982e-105)}
; Y = -1.594067166912771060793829747126437723636627197265625p-354 {- 2675440671541402 -354 (-4.34398e-107)}
; -1.87483309019360699920753177138976752758026123046875p-348 + -1.594067166912771060793829747126437723636627197265625p-354 == -1.899740389676618956826814610394649207592010498046875p-348
; [HW: -1.899740389676618956826814610394649207592010498046875p-348] 

; mpf : - 4052070483677806 -348
; mpfd: - 4052070483677806 -348 (-3.31326e-105) class: Neg. norm. non-zero
; hwf : - 4052070483677806 -348 (-3.31326e-105) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010100011 #b1101111111110101000011111011011111010111000101001100)))
(assert (= y (fp #b1 #b01010011101 #b1001100000010100110010010010110110000100100010011010)))
(assert (= r (fp #b1 #b01010100011 #b1110011001010101011000101101110010001101001001101110)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
