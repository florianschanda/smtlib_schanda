(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.025835031020083221164895803667604923248291015625p562 {+ 116350636075152 562 (1.54859e+169)}
; Y = -1.7241526242835487625626456065219826996326446533203125p222 {- 3261293488882757 222 (-1.16208e+067)}
; 1.025835031020083221164895803667604923248291015625p562 = -1.7241526242835487625626456065219826996326446533203125p222 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000110001 #b0000011010011101000111111110010101010010100010010000)))
(assert (= y (fp #b1 #b10011011101 #b1011100101100010000100001111111010011100010001000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
