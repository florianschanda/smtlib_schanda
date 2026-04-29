(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.218494105823808570931987560470588505268096923828125p-813 {+ 984009973570754 -813 (2.23068e-245)}
; Y = +zero {+ 0 -1023 (0)}
; 1.218494105823808570931987560470588505268096923828125p-813 < +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010010 #b0011011111101111001110101100111011100001110011000010)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
