(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.31336234374635107968742886441759765148162841796875p549 {+ 1411258534528012 549 (2.42021e+165)}
; Y = 1.2703116156907314771018491228460334241390228271484375p373 {+ 1217375291698695 373 (2.44399e+112)}
; 1.31336234374635107968742886441759765148162841796875p549 > 1.2703116156907314771018491228460334241390228271484375p373 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000100100 #b0101000000111000100000111011101000110000010000001100)))
(assert (= y (fp #b0 #b10101110100 #b0100010100110011001001000101110100011110111000000111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
