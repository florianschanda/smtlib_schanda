(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2113528000757194380554437884711660444736480712890625p-276 {+ 951848391664721 -276 (9.97681e-084)}
; 1.2113528000757194380554437884711660444736480712890625p-276 S == 1.1006147373516854681696486295550130307674407958984375p-138
; [HW: 1.1006147373516854681696486295550130307674407958984375p-138] 

; mpf : + 453128493645031 -138
; mpfd: + 453128493645031 -138 (3.15861e-042) class: Pos. norm. non-zero
; hwf : + 453128493645031 -138 (3.15861e-042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011101011 #b0011011000011011001101111001010000111110010001010001)))
(assert (= r (fp #b0 #b01101110101 #b0001100111000001111000110010111001101011110011100111)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
