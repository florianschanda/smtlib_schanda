(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5098092576514139384613599759177304804325103759765625 924 {- 2295976782788937 924 (-2.14111e+278)}
; -1.5098092576514139384613599759177304804325103759765625 924 I == -1.5098092576514139384613599759177304804325103759765625 924
; [HW: -1.5098092576514139384613599759177304804325103759765625 924] 

; mpf : - 2295976782788937 924
; mpfd: - 2295976782788937 924 (-2.14111e+278) class: Neg. norm. non-zero
; hwf : - 2295976782788937 924 (-2.14111e+278) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011011 #b1000001010000010110111000000100011001111100101001001)))
(assert (= r (fp #b1 #b11110011011 #b1000001010000010110111000000100011001111100101001001)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
