(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.699154516220005017856919948826543986797332763671875p-145 {- 3148712018722814 -145 (-3.80964e-044)}
; Y = 1.9884692098131429016660831621265970170497894287109375p525 {+ 4451669564981679 525 (2.18407e+158)}
; -1.699154516220005017856919948826543986797332763671875p-145 < 1.9884692098131429016660831621265970170497894287109375p525 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101110 #b1011001011111011110010100101011000000011111111111110)))
(assert (= y (fp #b0 #b11000001100 #b1111110100001100010100010111000101000000000110101111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
