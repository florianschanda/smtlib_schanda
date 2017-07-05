(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3615511927768955136031081565306521952152252197265625p-550 {+ 1628281817065385 -550 (3.69434e-166)}
; 1.3615511927768955136031081565306521952152252197265625p-550 | == 1.3615511927768955136031081565306521952152252197265625p-550
; [HW: 1.3615511927768955136031081565306521952152252197265625p-550] 

; mpf : + 1628281817065385 -550
; mpfd: + 1628281817065385 -550 (3.69434e-166) class: Pos. norm. non-zero
; hwf : + 1628281817065385 -550 (3.69434e-166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011001 #b0101110010001110100111100111010011001110011110101001)))
(assert (= r (fp #b0 #b00111011001 #b0101110010001110100111100111010011001110011110101001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
