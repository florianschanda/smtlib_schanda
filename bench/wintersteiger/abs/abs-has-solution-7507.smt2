(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.99674048165423645428973031812347471714019775390625p358 {+ 4488920061763108 358 (1.17236e+108)}
; 1.99674048165423645428973031812347471714019775390625p358 | == 1.99674048165423645428973031812347471714019775390625p358
; [HW: 1.99674048165423645428973031812347471714019775390625p358] 

; mpf : + 4488920061763108 358
; mpfd: + 4488920061763108 358 (1.17236e+108) class: Pos. norm. non-zero
; hwf : + 4488920061763108 358 (1.17236e+108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100101 #b1111111100101010011000100101101101001101111000100100)))
(assert (= r (fp #b0 #b10101100101 #b1111111100101010011000100101101101001101111000100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
