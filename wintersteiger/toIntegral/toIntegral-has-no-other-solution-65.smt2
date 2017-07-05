(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4494110558193324944653568309149704873561859130859375 466 {+ 2023967463524127 466 (2.76166e+140)}
; 1.4494110558193324944653568309149704873561859130859375 466 I == 1.4494110558193324944653568309149704873561859130859375 466
; [HW: 1.4494110558193324944653568309149704873561859130859375 466] 

; mpf : + 2023967463524127 466
; mpfd: + 2023967463524127 466 (2.76166e+140) class: Pos. norm. non-zero
; hwf : + 2023967463524127 466 (2.76166e+140) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111010001 #b0111001100001100100110100101101100110100011100011111)))
(assert (= r (fp #b0 #b10111010001 #b0111001100001100100110100101101100110100011100011111)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
