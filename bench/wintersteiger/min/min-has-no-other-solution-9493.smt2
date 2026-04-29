(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = NaN {- 345443026694506 1024 (-1.#SNAN)}
; Y = -1.2173361264114299640226590781821869313716888427734375p-471 {- 978794897920663 -471 (-1.99656e-142)}
; NaN m -1.2173361264114299640226590781821869313716888427734375p-471 == -1.2173361264114299640226590781821869313716888427734375p-471
; [HW: -1.2173361264114299640226590781821869313716888427734375p-471] 

; mpf : - 978794897920663 -471
; mpfd: - 978794897920663 -471 (-1.99656e-142) class: Neg. norm. non-zero
; hwf : - 978794897920663 -471 (-1.99656e-142) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b1 #b01000101000 #b0011011110100011010101110010001100101101001010010111)))
(assert (= r (fp #b1 #b01000101000 #b0011011110100011010101110010001100101101001010010111)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
