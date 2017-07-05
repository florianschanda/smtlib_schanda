(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.418799410525691140350090790889225900173187255859375p-728 {- 1886104869186486 -728 (-1.00481e-219)}
; Y = 1.4861299163937646827804428539820946753025054931640625p420 {+ 2189334510324609 420 (4.02397e+126)}
; -1.418799410525691140350090790889225900173187255859375p-728 < 1.4861299163937646827804428539820946753025054931640625p420 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100111 #b0110101100110110011100000010101111001010101110110110)))
(assert (= y (fp #b0 #b10110100011 #b0111110001110011000000101001110010000100101110000001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
