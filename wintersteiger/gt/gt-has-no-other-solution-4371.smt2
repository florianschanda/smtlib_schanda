(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6651986863641574654337773608858697116374969482421875p854 {+ 2995788556036963 854 (2.00024e+257)}
; Y = -1.76283897506925146814182880916632711887359619140625p-943 {- 3435521323865572 -943 (-2.37097e-284)}
; 1.6651986863641574654337773608858697116374969482421875p854 > -1.76283897506925146814182880916632711887359619140625p-943 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101010101 #b1010101001001010011101100000101101000110101101100011)))
(assert (= y (fp #b1 #b00001010000 #b1100001101001001011010100100001000001001010111100100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
