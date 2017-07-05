(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0153066132185288861222716150223277509212493896484375p458 {+ 68934857587271 458 (7.55675e+137)}
; 1.0153066132185288861222716150223277509212493896484375p458 | == 1.0153066132185288861222716150223277509212493896484375p458
; [HW: 1.0153066132185288861222716150223277509212493896484375p458] 

; mpf : + 68934857587271 458
; mpfd: + 68934857587271 458 (7.55675e+137) class: Pos. norm. non-zero
; hwf : + 68934857587271 458 (7.55675e+137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001001 #b0000001111101011001000100101101100101111101001000111)))
(assert (= r (fp #b0 #b10111001001 #b0000001111101011001000100101101100101111101001000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
