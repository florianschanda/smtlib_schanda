(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.425192956032021118772945555974729359149932861328125p349 {+ 1914898838346370 349 (1.63434e+105)}
; Y = 1.64708230943130917722783124190755188465118408203125p-238 {+ 2914199647632884 -238 (3.72886e-072)}
; 1.425192956032021118772945555974729359149932861328125p349 > 1.64708230943130917722783124190755188465118408203125p-238 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101011100 #b0110110011011001011100100001000010100101101010000010)))
(assert (= y (fp #b0 #b01100010001 #b1010010110100111001011111010110011010011110111110100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
