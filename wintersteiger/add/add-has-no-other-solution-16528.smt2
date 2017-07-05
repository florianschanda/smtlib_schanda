(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3518034657846056401098167043528519570827484130859375p925 {+ 1584381957415199 925 (3.83407e+278)}
; Y = -1.88937732436123706492026030900888144969940185546875p-674 {- 4005399386585036 -674 (-2.41047e-203)}
; 1.3518034657846056401098167043528519570827484130859375p925 + -1.88937732436123706492026030900888144969940185546875p-674 == 1.3518034657846056401098167043528519570827484130859375p925
; [HW: 1.3518034657846056401098167043528519570827484130859375p925] 

; mpf : + 1584381957415199 925
; mpfd: + 1584381957415199 925 (3.83407e+278) class: Pos. norm. non-zero
; hwf : + 1584381957415199 925 (3.83407e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011100 #b0101101000001111110010101011110000101010000100011111)))
(assert (= y (fp #b1 #b00101011101 #b1110001110101110001110110111100111101111011111001100)))
(assert (= r (fp #b0 #b11110011100 #b0101101000001111110010101011110000101010000100011111)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
