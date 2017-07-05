(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7836638711873689100428919118712656199932098388671875p-219 {- 3529308318263155 -219 (-2.11711e-066)}
; -1.7836638711873689100428919118712656199932098388671875p-219 | == 1.7836638711873689100428919118712656199932098388671875p-219
; [HW: 1.7836638711873689100428919118712656199932098388671875p-219] 

; mpf : + 3529308318263155 -219
; mpfd: + 3529308318263155 -219 (2.11711e-066) class: Pos. norm. non-zero
; hwf : + 3529308318263155 -219 (2.11711e-066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100100100 #b1100100010011110001100100000100111001110011101110011)))
(assert (= r (fp #b0 #b01100100100 #b1100100010011110001100100000100111001110011101110011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
