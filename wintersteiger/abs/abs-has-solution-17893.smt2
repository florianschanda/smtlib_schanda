(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2404306512958260810819410835392773151397705078125p905 {+ 1082803391584328 905 (3.3552e+272)}
; 1.2404306512958260810819410835392773151397705078125p905 | == 1.2404306512958260810819410835392773151397705078125p905
; [HW: 1.2404306512958260810819410835392773151397705078125p905] 

; mpf : + 1082803391584328 905
; mpfd: + 1082803391584328 905 (3.3552e+272) class: Pos. norm. non-zero
; hwf : + 1082803391584328 905 (3.3552e+272) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001000 #b0011110110001100110111001111100001000101100001001000)))
(assert (= r (fp #b0 #b11110001000 #b0011110110001100110111001111100001000101100001001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
