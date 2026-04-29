(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7361820340331084455698373858467675745487213134765625p-708 {- 3315469134148361 -708 (-1.28931e-213)}
; -1.7361820340331084455698373858467675745487213134765625p-708 | == 1.7361820340331084455698373858467675745487213134765625p-708
; [HW: 1.7361820340331084455698373858467675745487213134765625p-708] 

; mpf : + 3315469134148361 -708
; mpfd: + 3315469134148361 -708 (1.28931e-213) class: Pos. norm. non-zero
; hwf : + 3315469134148361 -708 (1.28931e-213) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100111011 #b1011110001110110011011010000000000010011001100001001)))
(assert (= r (fp #b0 #b00100111011 #b1011110001110110011011010000000000010011001100001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
