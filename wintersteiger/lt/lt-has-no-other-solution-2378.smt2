(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6727426555456894607942786024068482220172882080078125p809 {- 3029763572831805 809 (-5.71078e+243)}
; Y = -1.4036516577367017521993375339661724865436553955078125p387 {- 1817885455370493 387 (-4.42454e+116)}
; -1.6727426555456894607942786024068482220172882080078125p809 < -1.4036516577367017521993375339661724865436553955078125p387 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100101000 #b1010110000111000110111001101100000110001011000111101)))
(assert (= y (fp #b1 #b10110000010 #b0110011101010101101101110000110011110100100011111101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
