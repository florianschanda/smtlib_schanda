(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4661991962930998045777641891618259251117706298828125p-621 {- 2099574526706029 -621 (-1.68487e-187)}
; Y = -1.629236359869067118921748260618187487125396728515625p223 {- 2833828635834298 223 (-2.19621e+067)}
; -1.4661991962930998045777641891618259251117706298828125p-621 < -1.629236359869067118921748260618187487125396728515625p223 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010010 #b0111011101011000110101001001110110000000000101101101)))
(assert (= y (fp #b1 #b10011011110 #b1010000100010101101000100101001100010111011110111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
