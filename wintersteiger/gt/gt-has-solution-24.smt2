(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8183942144319675815467007851111702620983123779296875p-471 {- 3685719879157979 -471 (-2.98236e-142)}
; Y = -1.96074972177396755768086222815327346324920654296875p-155 {- 4326832088977548 -155 (-4.29312e-047)}
; -1.8183942144319675815467007851111702620983123779296875p-471 > -1.96074972177396755768086222815327346324920654296875p-155 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101000 #b1101000110000010010010001000001000111000100011011011)))
(assert (= y (fp #b1 #b01101100100 #b1111010111110011101100011001101010101001000010001100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
