(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3226954986148324877603954519145190715789794921875p-295 {- 1453291327315896 -295 (-2.07784e-089)}
; Y = 1.3840119959387970904884923584177158772945404052734375p-426 {+ 1729436281815767 -426 (7.9866e-129)}
; -1.3226954986148324877603954519145190715789794921875p-295 < 1.3840119959387970904884923584177158772945404052734375p-426 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011011000 #b0101001010011100001011000001010100011101111110111000)))
(assert (= y (fp #b0 #b01001010101 #b0110001001001110100111000011001111010100001011010111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
