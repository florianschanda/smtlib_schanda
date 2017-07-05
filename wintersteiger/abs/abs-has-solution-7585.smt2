(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.905170917243008243957547165337018668651580810546875p-838 {+ 4076527405602222 -838 (1.03944e-252)}
; 1.905170917243008243957547165337018668651580810546875p-838 | == 1.905170917243008243957547165337018668651580810546875p-838
; [HW: 1.905170917243008243957547165337018668651580810546875p-838] 

; mpf : + 4076527405602222 -838
; mpfd: + 4076527405602222 -838 (1.03944e-252) class: Pos. norm. non-zero
; hwf : + 4076527405602222 -838 (1.03944e-252) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111001 #b1110011110111001010001111111111011011001010110101110)))
(assert (= r (fp #b0 #b00010111001 #b1110011110111001010001111111111011011001010110101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
