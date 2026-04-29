(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.720113488939025270241245380020700395107269287109375p254 {- 3243102840450262 254 (-4.97939e+076)}
; -1.720113488939025270241245380020700395107269287109375p254 | == 1.720113488939025270241245380020700395107269287109375p254
; [HW: 1.720113488939025270241245380020700395107269287109375p254] 

; mpf : + 3243102840450262 254
; mpfd: + 3243102840450262 254 (4.97939e+076) class: Pos. norm. non-zero
; hwf : + 3243102840450262 254 (4.97939e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111101 #b1011100001011001010110111000110001100110110011010110)))
(assert (= r (fp #b0 #b10011111101 #b1011100001011001010110111000110001100110110011010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
