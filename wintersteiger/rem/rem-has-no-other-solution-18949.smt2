(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1092354790353733395846802523010410368442535400390625p279 {+ 491952862679345 279 (1.07744e+084)}
; Y = 1.7854337399760122906400283682160079479217529296875p343 {+ 3537279098680184 343 (3.19913e+103)}
; 1.1092354790353733395846802523010410368442535400390625p279 % 1.7854337399760122906400283682160079479217529296875p343 == 1.1092354790353733395846802523010410368442535400390625p279
; [HW: 1.1092354790353733395846802523010410368442535400390625p279] 

; mpf : + 491952862679345 279
; mpfd: + 491952862679345 279 (1.07744e+084) class: Pos. norm. non-zero
; hwf : + 491952862679345 279 (1.07744e+084) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010110 #b0001101111110110110110110011101000000101000100110001)))
(assert (= y (fp #b0 #b10101010110 #b1100100100010010001011111000001001011111001101111000)))
(assert (= r (fp #b0 #b10100010110 #x1bf6db3a05131)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
