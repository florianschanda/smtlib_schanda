(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4907229101431120898979543198947794735431671142578125p-155 {+ 2210019515262685 -155 (3.26398e-047)}
; 1.4907229101431120898979543198947794735431671142578125p-155 S == 1.7266863699833343570588795046205632388591766357421875p-78
; [HW: 1.7266863699833343570588795046205632388591766357421875p-78] 

; mpf : + 3272704465072163 -78
; mpfd: + 3272704465072163 -78 (5.71313e-024) class: Pos. norm. non-zero
; hwf : + 3272704465072163 -78 (5.71313e-024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101100100 #b0111110110100000000001000100001001110110011011011101)))
(assert (= r (fp #b0 #b01110110001 #b1011101000001000000111100011000110000111000000100011)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
