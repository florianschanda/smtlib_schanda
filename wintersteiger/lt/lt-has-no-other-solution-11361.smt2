(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.602790093038740426578669939772225916385650634765625p594 {- 2714725238391898 594 (-1.03919e+179)}
; Y = -1.2200248890050955363761886474094353616237640380859375p519 {- 990904008135583 519 (-2.09381e+156)}
; -1.602790093038740426578669939772225916385650634765625p594 < -1.2200248890050955363761886474094353616237640380859375p519 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010001 #b1001101001010000011100111001011111110100010001011010)))
(assert (= y (fp #b1 #b11000000110 #b0011100001010011100011010001011010010101001110011111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
