(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.868733790332524069555120149743743240833282470703125p-100 {+ 3912429174425714 -100 (1.47417e-030)}
; Y = 1.0728693981746086905104675679467618465423583984375p373 {+ 328174594465880 373 (2.06412e+112)}
; 1.868733790332524069555120149743743240833282470703125p-100 > 1.0728693981746086905104675679467618465423583984375p373 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110011011 #b1101111001100101010101100111001001101000100001110010)))
(assert (= y (fp #b0 #b10101110100 #b0001001010100111100100011010001000001010000001011000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
