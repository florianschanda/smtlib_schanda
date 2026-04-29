(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0364469369698545708757819738821126520633697509765625p-506 {+ 164142411756233 -506 (4.94731e-153)}
; 1.0364469369698545708757819738821126520633697509765625p-506 | == 1.0364469369698545708757819738821126520633697509765625p-506
; [HW: 1.0364469369698545708757819738821126520633697509765625p-506] 

; mpf : + 164142411756233 -506
; mpfd: + 164142411756233 -506 (4.94731e-153) class: Pos. norm. non-zero
; hwf : + 164142411756233 -506 (4.94731e-153) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000101 #b0000100101010100100101100010001001010011001011001001)))
(assert (= r (fp #b0 #b01000000101 #b0000100101010100100101100010001001010011001011001001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
