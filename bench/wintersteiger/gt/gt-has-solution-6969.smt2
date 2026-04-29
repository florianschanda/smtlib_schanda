(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.798636588497177779544244913267903029918670654296875p139 {- 3596739442360334 139 (-1.25347e+042)}
; Y = -1.785442000702185172400504598044790327548980712890625p527 {- 3537316301683498 527 (-7.84429e+158)}
; -1.798636588497177779544244913267903029918670654296875p139 > -1.785442000702185172400504598044790327548980712890625p527 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001010 #b1100110001110011011100101000110011111100000000001110)))
(assert (= y (fp #b1 #b11000001110 #b1100100100010010101110100001100111101011101100101010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
