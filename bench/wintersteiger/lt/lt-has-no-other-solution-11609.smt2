(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.181822923884548348638645620667375624179840087890625p584 {+ 818857652253866 584 (7.4829e+175)}
; Y = -1.2206519439056979781099698811885900795459747314453125p-205 {- 993728012352277 -205 (-2.37379e-062)}
; 1.181822923884548348638645620667375624179840087890625p584 < -1.2206519439056979781099698811885900795459747314453125p-205 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000111 #b0010111010001011111100100111011110111111010010101010)))
(assert (= y (fp #b1 #b01100110010 #b0011100001111100101001010101001011011111101100010101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
