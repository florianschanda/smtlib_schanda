(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4804687516125329960203771406668238341808319091796875 814 {+ 2163838890725371 814 (1.61739e+245)}
; 1.4804687516125329960203771406668238341808319091796875 814 I == 1.4804687516125329960203771406668238341808319091796875 814
; [HW: 1.4804687516125329960203771406668238341808319091796875 814] 

; mpf : + 2163838890725371 814
; mpfd: + 2163838890725371 814 (1.61739e+245) class: Pos. norm. non-zero
; hwf : + 2163838890725371 814 (1.61739e+245) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101101 #b0111101100000000000000000000011011101100111111111011)))
(assert (= r (fp #b0 #b11100101101 #b0111101100000000000000000000011011101100111111111011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
