(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1604688385619337243070958720636554062366485595703125 933 {+ 722687401552101 933 (8.42596e+280)}
; 1.1604688385619337243070958720636554062366485595703125 933 I == 1.1604688385619337243070958720636554062366485595703125 933
; [HW: 1.1604688385619337243070958720636554062366485595703125 933] 

; mpf : + 722687401552101 933
; mpfd: + 722687401552101 933 (8.42596e+280) class: Pos. norm. non-zero
; hwf : + 722687401552101 933 (8.42596e+280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100100 #b0010100100010100011111000101110110100110100011100101)))
(assert (= r (fp #b0 #b11110100100 #b0010100100010100011111000101110110100110100011100101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
