(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0038202276541523527697563622496090829372406005859375p551 {- 17204775839711 551 (-7.39918e+165)}
; -1.0038202276541523527697563622496090829372406005859375p551 | == 1.0038202276541523527697563622496090829372406005859375p551
; [HW: 1.0038202276541523527697563622496090829372406005859375p551] 

; mpf : + 17204775839711 551
; mpfd: + 17204775839711 551 (7.39918e+165) class: Pos. norm. non-zero
; hwf : + 17204775839711 551 (7.39918e+165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000100110 #b0000000011111010010111001100100011010110011111011111)))
(assert (= r (fp #b0 #b11000100110 #b0000000011111010010111001100100011010110011111011111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
