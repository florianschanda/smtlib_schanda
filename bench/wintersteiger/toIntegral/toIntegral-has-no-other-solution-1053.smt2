(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2115338676348736957066876129829324781894683837890625 882 {- 952663847456657 882 (-3.90654e+265)}
; -1.2115338676348736957066876129829324781894683837890625 882 I == -1.2115338676348736957066876129829324781894683837890625 882
; [HW: -1.2115338676348736957066876129829324781894683837890625 882] 

; mpf : - 952663847456657 882
; mpfd: - 952663847456657 882 (-3.90654e+265) class: Neg. norm. non-zero
; hwf : - 952663847456657 882 (-3.90654e+265) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101110001 #b0011011000100111000101010110001101111100111110010001)))
(assert (= r (fp #b1 #b11101110001 #b0011011000100111000101010110001101111100111110010001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
