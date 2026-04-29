(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5014507113089294865204692541738040745258331298828125p-851 {+ 2258333236595565 -851 (9.99965e-257)}
; Y = 1.2334743399917471595728102329303510487079620361328125p179 {+ 1051474950587405 179 (9.45147e+053)}
; 1.5014507113089294865204692541738040745258331298828125p-851 > 1.2334743399917471595728102329303510487079620361328125p179 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010101100 #b1000000001011111000100101110010110100000101101101101)))
(assert (= y (fp #b0 #b10010110010 #b0011101111000100111110010110111010111000010000001101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
