(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8685450516281478794411441413103602826595306396484375p-371 {+ 3911579170867015 -371 (3.88486e-112)}
; 1.8685450516281478794411441413103602826595306396484375p-371 | == 1.8685450516281478794411441413103602826595306396484375p-371
; [HW: 1.8685450516281478794411441413103602826595306396484375p-371] 

; mpf : + 3911579170867015 -371
; mpfd: + 3911579170867015 -371 (3.88486e-112) class: Pos. norm. non-zero
; hwf : + 3911579170867015 -371 (3.88486e-112) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001100 #b1101111001011000111101111110111111011000011101000111)))
(assert (= r (fp #b0 #b01010001100 #b1101111001011000111101111110111111011000011101000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
