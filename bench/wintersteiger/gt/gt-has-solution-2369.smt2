(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.860532637328957239475357710034586489200592041015625p-471 {- 3875494464814842 -471 (-3.05147e-142)}
; Y = -1.9276626767315663268931302809505723416805267333984375p-710 {- 4177821285253799 -710 (-3.57877e-214)}
; -1.860532637328957239475357710034586489200592041015625p-471 > -1.9276626767315663268931302809505723416805267333984375p-710 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101000 #b1101110001001011110111011110111001110111111011111010)))
(assert (= y (fp #b1 #b00100111001 #b1110110101111011010011010001101001001000001010100111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
