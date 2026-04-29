(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7527914080021156362221290692104957997798919677734375 290 {- 3390271104566039 290 (-3.48682e+087)}
; -1.7527914080021156362221290692104957997798919677734375 290 I == -1.7527914080021156362221290692104957997798919677734375 290
; [HW: -1.7527914080021156362221290692104957997798919677734375 290] 

; mpf : - 3390271104566039 290
; mpfd: - 3390271104566039 290 (-3.48682e+087) class: Neg. norm. non-zero
; hwf : - 3390271104566039 290 (-3.48682e+087) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100001 #b1100000010110110111100000000111000010100001100010111)))
(assert (= r (fp #b1 #b10100100001 #b1100000010110110111100000000111000010100001100010111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
