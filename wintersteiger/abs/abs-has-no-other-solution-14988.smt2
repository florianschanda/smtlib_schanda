(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8300519118134526141972173718386329710483551025390625p-865 {+ 3738221480741233 -865 (7.43904e-261)}
; 1.8300519118134526141972173718386329710483551025390625p-865 | == 1.8300519118134526141972173718386329710483551025390625p-865
; [HW: 1.8300519118134526141972173718386329710483551025390625p-865] 

; mpf : + 3738221480741233 -865
; mpfd: + 3738221480741233 -865 (7.43904e-261) class: Pos. norm. non-zero
; hwf : + 3738221480741233 -865 (7.43904e-261) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010011110 #b1101010001111110010010000011011100111000100101110001)))
(assert (= r (fp #b0 #b00010011110 #b1101010001111110010010000011011100111000100101110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
