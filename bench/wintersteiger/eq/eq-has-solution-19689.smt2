(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.798684456625730287981923538609407842159271240234375p859 {- 3596955021246246 859 (-6.91387e+258)}
; Y = -1.28321504919901929753223157604224979877471923828125p497 {- 1275487190038420 497 (-5.25058e+149)}
; -1.798684456625730287981923538609407842159271240234375p859 = -1.28321504919901929753223157604224979877471923828125p497 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011010 #b1100110001110110100101011010010100000111111100100110)))
(assert (= y (fp #b1 #b10111110000 #b0100100010000000110010000000111000001011011110010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
