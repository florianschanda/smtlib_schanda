(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.937243908593265562245733235613442957401275634765625p-642 {- 4220971317495898 -642 (-1.06152e-193)}
; -1.937243908593265562245733235613442957401275634765625p-642 | == 1.937243908593265562245733235613442957401275634765625p-642
; [HW: 1.937243908593265562245733235613442957401275634765625p-642] 

; mpf : + 4220971317495898 -642
; mpfd: + 4220971317495898 -642 (1.06152e-193) class: Pos. norm. non-zero
; hwf : + 4220971317495898 -642 (1.06152e-193) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101111101 #b1110111111101111001101110111111111001000100001011010)))
(assert (= r (fp #b0 #b00101111101 #b1110111111101111001101110111111111001000100001011010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
