(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4275462432681893520936000641086138784885406494140625p457 {- 1925497101866273 457 (-5.31249e+137)}
; -1.4275462432681893520936000641086138784885406494140625p457 | == 1.4275462432681893520936000641086138784885406494140625p457
; [HW: 1.4275462432681893520936000641086138784885406494140625p457] 

; mpf : + 1925497101866273 457
; mpfd: + 1925497101866273 457 (5.31249e+137) class: Pos. norm. non-zero
; hwf : + 1925497101866273 457 (5.31249e+137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111001000 #b0110110101110011101010111010110001011101010100100001)))
(assert (= r (fp #b0 #b10111001000 #b0110110101110011101010111010110001011101010100100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
