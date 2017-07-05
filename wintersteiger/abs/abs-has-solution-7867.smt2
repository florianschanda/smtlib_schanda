(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.16662348379871527725981650291942059993743896484375p178 {+ 750405459547068 178 (4.46961e+053)}
; 1.16662348379871527725981650291942059993743896484375p178 | == 1.16662348379871527725981650291942059993743896484375p178
; [HW: 1.16662348379871527725981650291942059993743896484375p178] 

; mpf : + 750405459547068 178
; mpfd: + 750405459547068 178 (4.46961e+053) class: Pos. norm. non-zero
; hwf : + 750405459547068 178 (4.46961e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110001 #b0010101010100111110101100010110110101001001110111100)))
(assert (= r (fp #b0 #b10010110001 #b0010101010100111110101100010110110101001001110111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
