(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.775851185699394818584551103413105010986328125p-272 {+ 3494123110810752 -272 (2.34017e-082)}
; 1.775851185699394818584551103413105010986328125p-272 | == 1.775851185699394818584551103413105010986328125p-272
; [HW: 1.775851185699394818584551103413105010986328125p-272] 

; mpf : + 3494123110810752 -272
; mpfd: + 3494123110810752 -272 (2.34017e-082) class: Pos. norm. non-zero
; hwf : + 3494123110810752 -272 (2.34017e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011101111 #b1100011010011110001011101110110100100100010010000000)))
(assert (= r (fp #b0 #b01011101111 #b1100011010011110001011101110110100100100010010000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
