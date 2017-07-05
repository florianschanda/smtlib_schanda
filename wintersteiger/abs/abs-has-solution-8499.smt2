(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.513904057536446856602196930907666683197021484375p135 {- 2314418122025328 135 (-6.59398e+040)}
; -1.513904057536446856602196930907666683197021484375p135 | == 1.513904057536446856602196930907666683197021484375p135
; [HW: 1.513904057536446856602196930907666683197021484375p135] 

; mpf : + 2314418122025328 135
; mpfd: + 2314418122025328 135 (6.59398e+040) class: Pos. norm. non-zero
; hwf : + 2314418122025328 135 (6.59398e+040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010000110 #b1000001110001111001101110110000001100110100101110000)))
(assert (= r (fp #b0 #b10010000110 #b1000001110001111001101110110000001100110100101110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
