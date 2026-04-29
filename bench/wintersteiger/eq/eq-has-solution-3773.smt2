(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6531508539248662703613490521092899143695831298828125p-410 {+ 2941529942352749 -410 (6.25193e-124)}
; Y = 1.1694236427211084361488246941007673740386962890625p662 {+ 763016254226536 662 (2.23784e+199)}
; 1.6531508539248662703613490521092899143695831298828125p-410 = 1.1694236427211084361488246941007673740386962890625p662 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001100101 #b1010011100110100111001001111010011110110001101101101)))
(assert (= y (fp #b0 #b11010010101 #b0010101101011111010110010000110010101000000001101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
