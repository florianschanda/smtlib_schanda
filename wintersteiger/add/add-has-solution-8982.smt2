(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8747240878520281537333858068450354039669036865234375p-435 {+ 3939407076102391 -435 (2.11295e-131)}
; Y = 0.6806283774079056048122993161086924374103546142578125p-1022 {+ 3065277706872029 -1023 (1.51445e-308)}
; 1.8747240878520281537333858068450354039669036865234375p-435 + 0.6806283774079056048122993161086924374103546142578125p-1022 == 1.8747240878520281537333858068450354039669036865234375p-435
; [HW: 1.8747240878520281537333858068450354039669036865234375p-435] 

; mpf : + 3939407076102391 -435
; mpfd: + 3939407076102391 -435 (2.11295e-131) class: Pos. norm. non-zero
; hwf : + 3939407076102391 -435 (2.11295e-131) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001001100 #b1101111111101101111010101111011001011001000011110111)))
(assert (= y (fp #b0 #b00000000000 #b1010111000111101101010010100110110110010010011011101)))
(assert (= r (fp #b0 #b01001001100 #b1101111111101101111010101111011001011001000011110111)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
