(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5336354905446076823949397294200025498867034912109375p-530 {- 2403280596368367 -530 (-4.36339e-160)}
; Y = 1.6289314783820290077898107483633793890476226806640625p-188 {+ 2832455571682881 -188 (4.15206e-057)}
; -1.5336354905446076823949397294200025498867034912109375p-530 = 1.6289314783820290077898107483633793890476226806640625p-188 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111101101 #b1000100010011100010101011110001111011111101111101111)))
(assert (= y (fp #b0 #b01101000011 #b1010000100000001101001110100001100010011011001000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
