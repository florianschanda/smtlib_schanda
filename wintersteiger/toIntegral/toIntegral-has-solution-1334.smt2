(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.64402309613027597379186772741377353668212890625 866 {- 2900422175750304 866 (-8.0888e+260)}
; -1.64402309613027597379186772741377353668212890625 866 I == -1.64402309613027597379186772741377353668212890625 866
; [HW: -1.64402309613027597379186772741377353668212890625 866] 

; mpf : - 2900422175750304 866
; mpfd: - 2900422175750304 866 (-8.0888e+260) class: Neg. norm. non-zero
; hwf : - 2900422175750304 866 (-8.0888e+260) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101100001 #b1010010011011110101100101001011110111111100010100000)))
(assert (= r (fp #b1 #b11101100001 #b1010010011011110101100101001011110111111100010100000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
