(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.93694120974637673526785874855704605579376220703125p-573 {+ 4219608083081844 -573 (6.26511e-173)}
; Y = -1.3830365239310233871350419576629064977169036865234375p340 {- 1725043146445047 340 (-3.09765e+102)}
; 1.93694120974637673526785874855704605579376220703125p-573 < -1.3830365239310233871350419576629064977169036865234375p340 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000010 #b1110111111011011011000010000111000100010101001110100)))
(assert (= y (fp #b1 #b10101010011 #b0110001000001110101011100111111101110101000011110111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
