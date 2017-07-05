(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3714209154259633383077243706793524324893951416015625 325 {+ 1672731096309977 325 (9.37388e+097)}
; 1.3714209154259633383077243706793524324893951416015625 325 I == 1.3714209154259633383077243706793524324893951416015625 325
; [HW: 1.3714209154259633383077243706793524324893951416015625 325] 

; mpf : + 1672731096309977 325
; mpfd: + 1672731096309977 325 (9.37388e+097) class: Pos. norm. non-zero
; hwf : + 1672731096309977 325 (9.37388e+097) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000100 #b0101111100010101011100001110110011001110000011011001)))
(assert (= r (fp #b0 #b10101000100 #b0101111100010101011100001110110011001110000011011001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
