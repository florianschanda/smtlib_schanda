(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.751176865950636596380718401633203029632568359375p37 {+ 3382999853584624 37 (2.4068e+011)}
; 1.751176865950636596380718401633203029632568359375p37 | == 1.751176865950636596380718401633203029632568359375p37
; [HW: 1.751176865950636596380718401633203029632568359375p37] 

; mpf : + 3382999853584624 37
; mpfd: + 3382999853584624 37 (2.4068e+011) class: Pos. norm. non-zero
; hwf : + 3382999853584624 37 (2.4068e+011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100100 #b1100000001001101001000001000100011000101000011110000)))
(assert (= r (fp #b0 #b10000100100 #b1100000001001101001000001000100011000101000011110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
