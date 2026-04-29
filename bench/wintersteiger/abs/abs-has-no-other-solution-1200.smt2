(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2592890379425494273846197756938636302947998046875p887 {- 1167734014659320 887 (-1.29937e+267)}
; -1.2592890379425494273846197756938636302947998046875p887 | == 1.2592890379425494273846197756938636302947998046875p887
; [HW: 1.2592890379425494273846197756938636302947998046875p887] 

; mpf : + 1167734014659320 887
; mpfd: + 1167734014659320 887 (1.29937e+267) class: Pos. norm. non-zero
; hwf : + 1167734014659320 887 (1.29937e+267) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101110110 #b0100001001100000110001000011001000101100101011111000)))
(assert (= r (fp #b0 #b11101110110 #b0100001001100000110001000011001000101100101011111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
