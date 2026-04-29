(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4228972010106819556796153847244568169116973876953125p86 {+ 1904559676887733 86 (1.10091e+026)}
; Y = -1.492048209744794018405400493065826594829559326171875p-1000 {- 2215988134054974 -1000 (-1.39247e-301)}
; 1.4228972010106819556796153847244568169116973876953125p86 < -1.492048209744794018405400493065826594829559326171875p-1000 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010101 #b0110110001000010111111011010111111101001001010110101)))
(assert (= y (fp #b1 #b00000010111 #b0111110111110110110111110001100011101000110000111110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
