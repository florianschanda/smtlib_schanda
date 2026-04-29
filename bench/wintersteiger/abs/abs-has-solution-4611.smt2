(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2372095951543382597037634695880115032196044921875p98 {- 1068297044345784 98 (-3.92087e+029)}
; -1.2372095951543382597037634695880115032196044921875p98 | == 1.2372095951543382597037634695880115032196044921875p98
; [HW: 1.2372095951543382597037634695880115032196044921875p98] 

; mpf : + 1068297044345784 98
; mpfd: + 1068297044345784 98 (3.92087e+029) class: Pos. norm. non-zero
; hwf : + 1068297044345784 98 (3.92087e+029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100001 #b0011110010111001110001001001110101111100001110111000)))
(assert (= r (fp #b0 #b10001100001 #b0011110010111001110001001001110101111100001110111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
