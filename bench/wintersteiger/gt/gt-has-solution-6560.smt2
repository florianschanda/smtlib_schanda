(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3897010150433637409861375999753363430500030517578125p-501 {+ 1755057346135197 -501 (2.12272e-151)}
; Y = 1.594036531669115408504922015708871185779571533203125p593 {+ 2675302702669490 593 (5.16756e+178)}
; 1.3897010150433637409861375999753363430500030517578125p-501 > 1.594036531669115408504922015708871185779571533203125p593 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001010 #b0110001111000011011100100001101011010100010010011101)))
(assert (= y (fp #b0 #b11001010000 #b1001100000010010110001110011010000100101111010110010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
