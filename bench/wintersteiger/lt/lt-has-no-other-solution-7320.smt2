(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.030855126774320229543491223012097179889678955078125p10 {- 138959137443298 10 (-1055.6)}
; Y = 1.8030578612084224854328340370557270944118499755859375p-452 {+ 3616651084495199 -452 (1.55043e-136)}
; -1.030855126774320229543491223012097179889678955078125p10 < 1.8030578612084224854328340370557270944118499755859375p-452 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001001 #b0000011111100110000111110010000001101000110111100010)))
(assert (= y (fp #b0 #b01000111011 #b1100110110010101001100110011001010101111100101011111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
