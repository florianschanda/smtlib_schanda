(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2666380706606796824331695461296476423740386962890625 663 {+ 1200831115670225 663 (4.84774e+199)}
; 1.2666380706606796824331695461296476423740386962890625 663 I == 1.2666380706606796824331695461296476423740386962890625 663
; [HW: 1.2666380706606796824331695461296476423740386962890625 663] 

; mpf : + 1200831115670225 663
; mpfd: + 1200831115670225 663 (4.84774e+199) class: Pos. norm. non-zero
; hwf : + 1200831115670225 663 (4.84774e+199) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010110 #b0100010001000010011001001000000101011011001011010001)))
(assert (= r (fp #b0 #b11010010110 #b0100010001000010011001001000000101011011001011010001)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
