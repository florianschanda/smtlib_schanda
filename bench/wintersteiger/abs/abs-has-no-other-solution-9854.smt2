(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.15470405239591489277017899439670145511627197265625p181 {- 696725112722948 181 (-3.53916e+054)}
; -1.15470405239591489277017899439670145511627197265625p181 | == 1.15470405239591489277017899439670145511627197265625p181
; [HW: 1.15470405239591489277017899439670145511627197265625p181] 

; mpf : + 696725112722948 181
; mpfd: + 696725112722948 181 (3.53916e+054) class: Pos. norm. non-zero
; hwf : + 696725112722948 181 (3.53916e+054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010110100 #b0010011110011010101011110100110110011001011000000100)))
(assert (= r (fp #b0 #b10010110100 #b0010011110011010101011110100110110011001011000000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
