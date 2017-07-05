(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.915464070719312683621637916075997054576873779296875p376 {+ 4122883647762574 376 (2.94817e+113)}
; 1.915464070719312683621637916075997054576873779296875p376 | == 1.915464070719312683621637916075997054576873779296875p376
; [HW: 1.915464070719312683621637916075997054576873779296875p376] 

; mpf : + 4122883647762574 376
; mpfd: + 4122883647762574 376 (2.94817e+113) class: Pos. norm. non-zero
; hwf : + 4122883647762574 376 (2.94817e+113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101110111 #b1110101001011011110110100111010001100111000010001110)))
(assert (= r (fp #b0 #b10101110111 #b1110101001011011110110100111010001100111000010001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
