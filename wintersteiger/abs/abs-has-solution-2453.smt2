(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.481997314561442902203225457924418151378631591796875p242 {- 2170722926252494 242 (-1.04739e+073)}
; -1.481997314561442902203225457924418151378631591796875p242 | == 1.481997314561442902203225457924418151378631591796875p242
; [HW: 1.481997314561442902203225457924418151378631591796875p242] 

; mpf : + 2170722926252494 242
; mpfd: + 2170722926252494 242 (1.04739e+073) class: Pos. norm. non-zero
; hwf : + 2170722926252494 242 (1.04739e+073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011110001 #b0111101101100100001011010000111011001101000111001110)))
(assert (= r (fp #b0 #b10011110001 #b0111101101100100001011010000111011001101000111001110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
