(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3829215417443678770581527714966796338558197021484375p527 {- 1724525312712071 527 (-6.07583e+158)}
; Y = -1.4189263190231498068527571376762352883815765380859375p-253 {- 1886676414248351 -253 (-9.80327e-077)}
; -1.3829215417443678770581527714966796338558197021484375p527 < -1.4189263190231498068527571376762352883815765380859375p-253 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001110 #b0110001000000111001001010110101010111001110110000111)))
(assert (= y (fp #b1 #b01100000010 #b0110101100111110110000010101011110100011010110011111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
