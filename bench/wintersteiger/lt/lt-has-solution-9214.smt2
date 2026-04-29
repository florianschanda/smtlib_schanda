(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7487523263849469312702922252356074750423431396484375p235 {- 3372080698100039 235 (-9.65556e+070)}
; Y = -1.877121186993333967762964675785042345523834228515625p619 {- 3950202650901946 619 (-4.08375e+186)}
; -1.7487523263849469312702922252356074750423431396484375p235 < -1.877121186993333967762964675785042345523834228515625p619 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101010 #b1011111110101110001110111000001010100000100101000111)))
(assert (= y (fp #b1 #b11001101010 #b1110000010001011000000111001110011000011110110111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
