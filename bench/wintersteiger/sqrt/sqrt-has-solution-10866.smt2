(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4335489174209710139251683358452282845973968505859375p-32 {+ 1952530742943967 -32 (3.33774e-010)}
; 1.4335489174209710139251683358452282845973968505859375p-32 S == 1.19730903171276992225102731026709079742431640625p-16
; [HW: 1.19730903171276992225102731026709079742431640625p-16] 

; mpf : + 888600881698464 -16
; mpfd: + 888600881698464 -16 (1.82695e-005) class: Pos. norm. non-zero
; hwf : + 888600881698464 -16 (1.82695e-005) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111011111 #b0110111011111101000011111101010110001010000011011111)))
(assert (= r (fp #b0 #b01111101111 #b0011001010000010110110000011111001101001011010100000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
