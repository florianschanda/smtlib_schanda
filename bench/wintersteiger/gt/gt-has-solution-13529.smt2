(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3147468857488624482954264749423600733280181884765625p239 {- 1417493957374601 239 (-1.16148e+072)}
; Y = 1.6964232840575952376838131385738961398601531982421875p205 {+ 3136411642573923 205 (8.72335e+061)}
; -1.3147468857488624482954264749423600733280181884765625p239 > 1.6964232840575952376838131385738961398601531982421875p205 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101110 #b0101000010010011010000000111110011001111001010001001)))
(assert (= y (fp #b0 #b10011001100 #b1011001001001000110010111101110100110011010001100011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
