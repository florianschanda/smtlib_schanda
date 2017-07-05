(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.64678658024622759370458879857324063777923583984375p-79 {- 2912867801785148 -79 (-2.72438e-024)}
; Y = 1.699238715487947803950419256580062210559844970703125p494 {+ 3149091218514546 494 (8.69105e+148)}
; -1.64678658024622759370458879857324063777923583984375p-79 = 1.699238715487947803950419256580062210559844970703125p494 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110110000 #b1010010110010011110011100010100110100110001100111100)))
(assert (= y (fp #b0 #b10111101101 #b1011001100000001010011101111011100011110001001110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
