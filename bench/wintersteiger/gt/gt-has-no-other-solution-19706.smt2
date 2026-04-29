(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4512215300552304686476645656512118875980377197265625p-759 {+ 2032121114618281 -759 (4.78594e-229)}
; Y = -1.95460922909295664595674679731018841266632080078125p-1006 {- 4299177768427476 -1006 (-2.85026e-303)}
; 1.4512215300552304686476645656512118875980377197265625p-759 > -1.95460922909295664595674679731018841266632080078125p-1006 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100001000 #b0111001110000011010000010001001011010110100110101001)))
(assert (= y (fp #b1 #b00000010001 #b1111010001100001010001010011101101101001111111010100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
