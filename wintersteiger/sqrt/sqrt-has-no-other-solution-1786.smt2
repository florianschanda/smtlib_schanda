(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.689461174672159504694946008385159075260162353515625p377 {+ 3105057089339962 377 (5.20064e+113)}
; 1.689461174672159504694946008385159075260162353515625p377 S == 1.838184525379408018608273778227157890796661376953125p188
; [HW: 1.838184525379408018608273778227157890796661376953125p188] 

; mpf : + 3774847516166418 188
; mpfd: + 3774847516166418 188 (7.21154e+056) class: Pos. norm. non-zero
; hwf : + 3774847516166418 188 (7.21154e+056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111000 #b1011000010000000100001110000110100010100001000111010)))
(assert (= r (fp #b0 #b10010111011 #b1101011010010011010000101101010010000100100100010010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
