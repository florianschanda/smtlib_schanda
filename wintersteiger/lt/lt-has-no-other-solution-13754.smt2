(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8536750054915798191501608016551472246646881103515625p579 {- 3844610436627385 579 (-3.66776e+174)}
; Y = -1.1166967607946098883786589794908650219440460205078125p-976 {- 525555488429949 -976 (-1.74848e-294)}
; -1.8536750054915798191501608016551472246646881103515625p579 < -1.1166967607946098883786589794908650219440460205078125p-976 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000010 #b1101101010001010011100011111010111111111101110111001)))
(assert (= y (fp #b1 #b00000101111 #b0001110111011111110101101100001100101001011101111101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
