(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4178860663511347883769531108555383980274200439453125p-539 {- 1881991532702293 -539 (-7.87905e-163)}
; Y = 1.101467626206791283749453214113600552082061767578125p556 {+ 456969563575074 556 (2.59806e+167)}
; -1.4178860663511347883769531108555383980274200439453125p-539 < 1.101467626206791283749453214113600552082061767578125p556 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111100100 #b0110101011111010100101001100110001101110101001010101)))
(assert (= y (fp #b0 #b11000101011 #b0001100111111001110010000100100000101001001100100010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
