(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2029894131821865510545421784627251327037811279296875 808 {+ 914183045567451 808 (2.05352e+243)}
; 1.2029894131821865510545421784627251327037811279296875 808 I == 1.2029894131821865510545421784627251327037811279296875 808
; [HW: 1.2029894131821865510545421784627251327037811279296875 808] 

; mpf : + 914183045567451 808
; mpfd: + 914183045567451 808 (2.05352e+243) class: Pos. norm. non-zero
; hwf : + 914183045567451 808 (2.05352e+243) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100100111 #b0011001111110111000111010011101100001101001111011011)))
(assert (= r (fp #b0 #b11100100111 #b0011001111110111000111010011101100001101001111011011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
