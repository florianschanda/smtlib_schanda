(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.12547573880609608210079386481083929538726806640625p-27 {+ 565092490531172 -27 (8.38545e-009)}
; Y = -1.830449819904454766827939238282851874828338623046875p701 {- 3740013499471598 701 (-1.92568e+211)}
; 1.12547573880609608210079386481083929538726806640625p-27 = -1.830449819904454766827939238282851874828338623046875p701 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111100100 #b0010000000011111001011011001001010011101000101100100)))
(assert (= y (fp #b1 #b11010111100 #b1101010010011000010111000000000101110101011011101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
