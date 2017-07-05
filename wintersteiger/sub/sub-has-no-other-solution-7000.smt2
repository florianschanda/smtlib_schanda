(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1428773930286746374207496046437881886959075927734375p448 {+ 643462574003607 448 (8.30688e+134)}
; Y = 1.473808596102045509468325690249912440776824951171875p982 {+ 2133844216850110 982 (6.02416e+295)}
; 1.1428773930286746374207496046437881886959075927734375p448 - 1.473808596102045509468325690249912440776824951171875p982 == -1.473808596102045509468325690249912440776824951171875p982
; [HW: -1.473808596102045509468325690249912440776824951171875p982] 

; mpf : - 2133844216850110 982
; mpfd: - 2133844216850110 982 (-6.02416e+295) class: Neg. norm. non-zero
; hwf : - 2133844216850110 982 (-6.02416e+295) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111111 #b0010010010010011100111001110001001100101010110010111)))
(assert (= y (fp #b0 #b11111010101 #b0111100101001011100001010010100011010010011010111110)))
(assert (= r (fp #b1 #b11111010101 #b0111100101001011100001010010100011010010011010111110)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
