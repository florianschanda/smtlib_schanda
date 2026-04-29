(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.982974761588684575741581284091807901859283447265625p476 {+ 4426924770005402 476 (3.86897e+143)}
; Y = -1.967231123286779403969148916075937449932098388671875p148 {- 4356021726415486 148 (-7.01932e+044)}
; 1.982974761588684575741581284091807901859283447265625p476 > -1.967231123286779403969148916075937449932098388671875p148 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111011011 #b1111101110100100001110111110010111010001000110011010)))
(assert (= y (fp #b1 #b10010010011 #b1111011110011100011101010111101000110000101001111110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
