(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4992952631230862525768543491722084581851959228515625p-693 {+ 2248625960948985 -693 (3.64838e-209)}
; 1.4992952631230862525768543491722084581851959228515625p-693 S == 1.731643879741493474710978262010030448436737060546875p-347
; [HW: 1.731643879741493474710978262010030448436737060546875p-347] 

; mpf : + 3295031104171694 -347
; mpfd: + 3295031104171694 -347 (6.04018e-105) class: Pos. norm. non-zero
; hwf : + 3295031104171694 -347 (6.04018e-105) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001010 #b0111111111010001110100000111101000101001010011111001)))
(assert (= r (fp #b0 #b01010100100 #b1011101101001101000000110110011111001110111010101110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
