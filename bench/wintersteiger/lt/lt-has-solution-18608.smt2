(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0866597558522352873211502810590900480747222900390625p713 {+ 390280844164145 713 (4.68253e+214)}
; Y = 1.082627072846481741663637876627035439014434814453125p-504 {+ 372119254482130 -504 (2.0671e-152)}
; 1.0866597558522352873211502810590900480747222900390625p713 < 1.082627072846481741663637876627035439014434814453125p-504 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011001000 #b0001011000101111010101010111000101000011110000110001)))
(assert (= y (fp #b0 #b01000000111 #b0001010100100111000011000011111110100011110011010010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
