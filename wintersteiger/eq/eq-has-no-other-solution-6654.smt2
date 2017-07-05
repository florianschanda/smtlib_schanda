(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.369986177355251744103270539199002087116241455078125p-814 {- 1666269610469346 -814 (-1.25401e-245)}
; Y = 1.4838453560403659370336981737636961042881011962890625p882 {+ 2179045765168337 882 (4.78459e+265)}
; -1.369986177355251744103270539199002087116241455078125p-814 = 1.4838453560403659370336981737636961042881011962890625p882 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010001 #b0101111010110111011010100000001110110110011111100010)))
(assert (= y (fp #b0 #b11101110001 #b0111101111011101010010100000110010000011110011010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
