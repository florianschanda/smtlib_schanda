(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7897435221287825157787665375508368015289306640625p-234 {- 3556688631977448 -234 (-6.48294e-071)}
; Y = -1.3834215392891391349650120901060290634632110595703125p207 {- 1726777101468389 207 (-2.84553e+062)}
; -1.7897435221287825157787665375508368015289306640625p-234 = -1.3834215392891391349650120901060290634632110595703125p207 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010101 #b1100101000101100101000011010011111000101010111101000)))
(assert (= y (fp #b1 #b10011001110 #b0110001000100111111010011111101111010100001011100101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
