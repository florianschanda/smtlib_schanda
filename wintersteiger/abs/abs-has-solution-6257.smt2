(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4741525665422166024853822818840853869915008544921875p204 {- 2135393321996291 204 (-3.79019e+061)}
; -1.4741525665422166024853822818840853869915008544921875p204 | == 1.4741525665422166024853822818840853869915008544921875p204
; [HW: 1.4741525665422166024853822818840853869915008544921875p204] 

; mpf : + 2135393321996291 204
; mpfd: + 2135393321996291 204 (3.79019e+061) class: Pos. norm. non-zero
; hwf : + 2135393321996291 204 (3.79019e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011001011 #b0111100101100010000100000000011010011101000000000011)))
(assert (= r (fp #b0 #b10011001011 #b0111100101100010000100000000011010011101000000000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
