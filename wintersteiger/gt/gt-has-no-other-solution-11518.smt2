(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.630097890771811552923509225365705788135528564453125p-564 {- 2837708626086866 -564 (-2.69958e-170)}
; Y = 1.832500156843189120792203539167530834674835205078125p757 {+ 3749247396144866 757 (1.38916e+228)}
; -1.630097890771811552923509225365705788135528564453125p-564 > 1.832500156843189120792203539167530834674835205078125p757 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001011 #b1010000101001110000110000110101000100100101111010010)))
(assert (= y (fp #b0 #b11011110100 #b1101010100011110101110101111001110001110011011100010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
