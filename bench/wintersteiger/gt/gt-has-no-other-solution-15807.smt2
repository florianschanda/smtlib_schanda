(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7688228775510317358765632889117114245891571044921875p38 {- 3462470424852739 38 (-4.8621e+011)}
; Y = -1.0337796249955306659984444195288233458995819091796875p-653 {- 152129906542587 -653 (-2.76593e-197)}
; -1.7688228775510317358765632889117114245891571044921875p38 > -1.0337796249955306659984444195288233458995819091796875p-653 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000100101 #b1100010011010001100100110111101101111111100100000011)))
(assert (= y (fp #b1 #b00101110010 #b0000100010100101110010000001000010100000011111111011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
