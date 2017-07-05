(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.10977280472987072101886951713822782039642333984375p-297 {+ 494372762476860 -297 (4.35838e-090)}
; 1.10977280472987072101886951713822782039642333984375p-297 S == 1.4898139512904762238321154654840938746929168701171875p-149
; [HW: 1.4898139512904762238321154654840938746929168701171875p-149] 

; mpf : + 2205925928512659 -149
; mpfd: + 2205925928512659 -149 (2.08767e-045) class: Pos. norm. non-zero
; hwf : + 2205925928512659 -149 (2.08767e-045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010110 #b0001110000011010000100100000111001001110000100111100)))
(assert (= r (fp #b0 #b01101101010 #b0111110101100100011100100111010111101010110010010011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
