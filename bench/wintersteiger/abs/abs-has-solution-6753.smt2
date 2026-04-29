(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.353516050041612128751467025722377002239227294921875p-204 {- 1592094751236894 -204 (-5.26434e-062)}
; -1.353516050041612128751467025722377002239227294921875p-204 | == 1.353516050041612128751467025722377002239227294921875p-204
; [HW: 1.353516050041612128751467025722377002239227294921875p-204] 

; mpf : + 1592094751236894 -204
; mpfd: + 1592094751236894 -204 (5.26434e-062) class: Pos. norm. non-zero
; hwf : + 1592094751236894 -204 (5.26434e-062) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100110011 #b0101101010000000000001110010000110001010001100011110)))
(assert (= r (fp #b0 #b01100110011 #b0101101010000000000001110010000110001010001100011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
