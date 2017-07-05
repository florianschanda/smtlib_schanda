(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.09952449563249299302469808026216924190521240234375p-136 {- 448218481444732 -136 (-1.26219e-041)}
; Y = -1.5266355051184758995219681310118176043033599853515625p-312 {- 2371755464611641 -312 (-1.82969e-094)}
; -1.09952449563249299302469808026216924190521240234375p-136 > -1.5266355051184758995219681310118176043033599853515625p-312 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110111 #b0001100101111010011011111111010111100100011101111100)))
(assert (= y (fp #b1 #b01011000111 #b1000011011010001100101011001111101100101011100111001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
