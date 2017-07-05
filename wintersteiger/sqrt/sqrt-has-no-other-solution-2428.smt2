(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.577978843463637925736975375912152230739593505859375p796 {+ 2602985304050870 796 (6.57624e+239)}
; 1.577978843463637925736975375912152230739593505859375p796 S == 1.2561762788174426486165202732081525027751922607421875p398
; [HW: 1.2561762788174426486165202732081525027751922607421875p398] 

; mpf : + 1153715393823395 398
; mpfd: + 1153715393823395 398 (8.1094e+119) class: Pos. norm. non-zero
; hwf : + 1153715393823395 398 (8.1094e+119) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100011011 #b1001001111110110011010111110011001110100110010110110)))
(assert (= r (fp #b0 #b10110001101 #b0100000110010100110001001100001110001000001010100011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
