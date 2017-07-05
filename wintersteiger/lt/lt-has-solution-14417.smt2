(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4050763687604026497268705497845076024532318115234375p205 {- 1824301783405943 205 (-7.22519e+061)}
; Y = -1.91041333526106615892103945952840149402618408203125p956 {- 4100137157434868 956 (-1.1636e+288)}
; -1.4050763687604026497268705497845076024532318115234375p205 < -1.91041333526106615892103945952840149402618408203125p956 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011001100 #b0110011110110011000101011011110000110101010101110111)))
(assert (= y (fp #b1 #b11110111011 #b1110100100010000110110010010110011001001110111110100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
