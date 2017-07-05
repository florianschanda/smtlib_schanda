(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.39527099942409193999992567114531993865966796875p427 {+ 1780142325716704 427 (4.83578e+128)}
; Y = 1.09834944317931348933825574931688606739044189453125p372 {+ 442926515654452 372 (1.05657e+112)}
; 1.39527099942409193999992567114531993865966796875p427 > 1.09834944317931348933825574931688606739044189453125p372 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110101010 #b0110010100110000011110101110111110010101011011100000)))
(assert (= y (fp #b0 #b10101110011 #b0001100100101101011011011101101000001000111100110100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
