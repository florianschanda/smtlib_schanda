(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.797654924054089775609099888242781162261962890625p-79 {- 3592318418740240 -79 (-2.97397e-024)}
; Y = 1.147034369462426095509499646141193807125091552734375p-981 {+ 662183931521638 -981 (5.61243e-296)}
; -1.797654924054089775609099888242781162261962890625p-79 = 1.147034369462426095509499646141193807125091552734375p-981 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110110000 #b1100110000110011000111001111010001001110010000010000)))
(assert (= y (fp #b0 #b00000101010 #b0010010110100100000010110110000000111010101001100110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
