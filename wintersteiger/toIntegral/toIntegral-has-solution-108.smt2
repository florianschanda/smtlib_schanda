(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6390922515598498332423105239286087453365325927734375 174 {+ 2878215625980311 174 (3.92485e+052)}
; 1.6390922515598498332423105239286087453365325927734375 174 I == 1.6390922515598498332423105239286087453365325927734375 174
; [HW: 1.6390922515598498332423105239286087453365325927734375 174] 

; mpf : + 2878215625980311 174
; mpfd: + 2878215625980311 174 (3.92485e+052) class: Pos. norm. non-zero
; hwf : + 2878215625980311 174 (3.92485e+052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010101101 #b1010001110011011100011001011111110010011100110010111)))
(assert (= r (fp #b0 #b10010101101 #b1010001110011011100011001011111110010011100110010111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
