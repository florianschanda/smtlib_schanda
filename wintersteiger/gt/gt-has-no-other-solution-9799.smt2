(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7644581869096132020757750069606117904186248779296875p586 {+ 3442813605706459 586 (4.46878e+176)}
; Y = -1.8275837875060896298151646988117136061191558837890625p-871 {- 3727106037030289 -871 (-1.16078e-262)}
; 1.7644581869096132020757750069606117904186248779296875p586 > -1.8275837875060896298151646988117136061191558837890625p-871 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001001001 #b1100001110110011100010000001111111101111101011011011)))
(assert (= y (fp #b1 #b00010011000 #b1101001111011100100001111111011000001001110110010001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
