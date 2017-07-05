(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.725757510792364168850099304108880460262298583984375p196 {- 3268521255165830 196 (-1.73324e+059)}
; Y = -1.48535477702073048789088716148398816585540771484375p-491 {- 2185843592933052 -491 (-2.32328e-148)}
; -1.725757510792364168850099304108880460262298583984375p196 < -1.48535477702073048789088716148398816585540771484375p-491 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011000011 #b1011100111001011001111101000010110101101111110000110)))
(assert (= y (fp #b1 #b01000010100 #b0111110001000000001101011110111001000010111010111100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
