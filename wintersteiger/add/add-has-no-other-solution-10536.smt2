(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6095219669554905461694715995690785348415374755859375p551 {+ 2745042903254879 551 (1.18638e+166)}
; Y = -1.1701315135024967784005411886028014123439788818359375p905 {- 766204220813823 905 (-3.16505e+272)}
; 1.6095219669554905461694715995690785348415374755859375p551 + -1.1701315135024967784005411886028014123439788818359375p905 == -1.170131513502496556355936263571493327617645263671875p905
; [HW: -1.170131513502496556355936263571493327617645263671875p905] 

; mpf : - 766204220813822 905
; mpfd: - 766204220813822 905 (-3.16505e+272) class: Neg. norm. non-zero
; hwf : - 766204220813822 905 (-3.16505e+272) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100110 #b1001110000001001101000011011001001000100011101011111)))
(assert (= y (fp #b1 #b11110001000 #b0010101110001101101111010010011010000011000111111111)))
(assert (= r (fp #b1 #b11110001000 #b0010101110001101101111010010011010000011000111111110)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
