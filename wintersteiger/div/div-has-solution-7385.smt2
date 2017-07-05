(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.36839817135105068501843561534769833087921142578125p677 {- 1659117867220564 677 (-8.58064e+203)}
; Y = -1.430886029170805873178551337332464754581451416015625p-152 {- 1940538160412794 -152 (-2.50637e-046)}
; -1.36839817135105068501843561534769833087921142578125p677 / -1.430886029170805873178551337332464754581451416015625p-152 == 1.9126585115154604022080775393988005816936492919921875p828
; [HW: 1.9126585115154604022080775393988005816936492919921875p828] 

; mpf : + 4110248532377539 828
; mpfd: + 4110248532377539 828 (3.42353e+249) class: Pos. norm. non-zero
; hwf : + 4110248532377539 828 (3.42353e+249) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010100100 #b0101111001001111010101111011000111011011111001010100)))
(assert (= y (fp #b1 #b01101100111 #b0110111001001110100010111111101110010111100001111010)))
(assert (= r (fp #b0 #b11100111011 #b1110100110100011111111001111101101011111111111000011)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
