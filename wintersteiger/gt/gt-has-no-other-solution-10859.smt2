(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2556113960069712476297354442067444324493408203125p-844 {+ 1151171387808648 -844 (1.07038e-254)}
; Y = 1.9916864893760000132516552184824831783771514892578125p110 {+ 4466158904022109 110 (2.58536e+033)}
; 1.2556113960069712476297354442067444324493408203125p-844 > 1.9916864893760000132516552184824831783771514892578125p110 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010110011 #b0100000101101111101111111001101001010101101110001000)))
(assert (= y (fp #b0 #b10001101101 #b1111110111011111001010100110111111000001010001011101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
