(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.87749362199307956444727096823044121265411376953125p-208 {+ 3951879949028020 -208 (4.56393e-063)}
; Y = 1.7559994938759115878923466880223713815212249755859375p-559 {+ 3404719038911839 -559 (9.30587e-169)}
; 1.87749362199307956444727096823044121265411376953125p-208 > 1.7559994938759115878923466880223713815212249755859375p-559 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100101111 #b1110000010100011011011000000100011101000101010110100)))
(assert (= y (fp #b0 #b00111010000 #b1100000110001001001011101100110111111101010101011111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
