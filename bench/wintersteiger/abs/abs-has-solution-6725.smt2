(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0535867386281607682718686191947199404239654541015625p473 {- 241333216117785 473 (-2.56956e+142)}
; -1.0535867386281607682718686191947199404239654541015625p473 | == 1.0535867386281607682718686191947199404239654541015625p473
; [HW: 1.0535867386281607682718686191947199404239654541015625p473] 

; mpf : + 241333216117785 473
; mpfd: + 241333216117785 473 (2.56956e+142) class: Pos. norm. non-zero
; hwf : + 241333216117785 473 (2.56956e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111011000 #b0000110110110111110111000100100111101000010000011001)))
(assert (= r (fp #b0 #b10111011000 #b0000110110110111110111000100100111101000010000011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
