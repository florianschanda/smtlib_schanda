(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.98452035154764683255734780686907470226287841796875 618 {- 4433885488368652 618 (-2.1587e+186)}
; -1.98452035154764683255734780686907470226287841796875 618 I == -1.98452035154764683255734780686907470226287841796875 618
; [HW: -1.98452035154764683255734780686907470226287841796875 618] 

; mpf : - 4433885488368652 618
; mpfd: - 4433885488368652 618 (-2.1587e+186) class: Neg. norm. non-zero
; hwf : - 4433885488368652 618 (-2.1587e+186) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101001 #b1111110000001001100001101001100000100100110000001100)))
(assert (= r (fp #b1 #b11001101001 #b1111110000001001100001101001100000100100110000001100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
