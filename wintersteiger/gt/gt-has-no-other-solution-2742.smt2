(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3794103004833606629375708507723174989223480224609375p525 {- 1708712087877391 525 (-1.5151e+158)}
; Y = -1.7742821432824904537284282923792488873004913330078125p-885 {- 3487056771966653 -885 (-6.87823e-267)}
; -1.3794103004833606629375708507723174989223480224609375p525 > -1.7742821432824904537284282923792488873004913330078125p-885 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001100 #b0110000100100001000010001001000001010111011100001111)))
(assert (= y (fp #b1 #b00010001010 #b1100011000110111010110101100001101000110011010111101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
