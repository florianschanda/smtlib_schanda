(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.93920297198218971601590965292416512966156005859375p-653 {- 4229794154644252 -653 (-5.18843e-197)}
; Y = -1.8042182178896071231832820558338426053524017333984375p-359 {- 3621876866412199 -359 (-1.53646e-108)}
; -1.93920297198218971601590965292416512966156005859375p-653 / -1.8042182178896071231832820558338426053524017333984375p-359 == 1.074816201695643069768948407727293670177459716796875p-294
; [HW: 1.074816201695643069768948407727293670177459716796875p-294] 

; mpf : + 336942218077774 -294
; mpfd: + 336942218077774 -294 (3.37688e-089) class: Pos. norm. non-zero
; hwf : + 336942218077774 -294 (3.37688e-089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110010 #b1111000001101111100110110010000011111000001100011100)))
(assert (= y (fp #b1 #b01010011000 #b1100110111100001001111101100000010101110111010100111)))
(assert (= r (fp #b0 #b01011011001 #b0001001100100111001001111001001101111110011001001110)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
