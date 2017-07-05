(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5685804660752495909292747455765493214130401611328125p-951 {- 2560658775146637 -951 (-8.24102e-287)}
; Y = 1.0715656754509026438171304107527248561382293701171875p-90 {+ 322303149293203 -90 (8.65604e-028)}
; -1.5685804660752495909292747455765493214130401611328125p-951 + 1.0715656754509026438171304107527248561382293701171875p-90 == 1.0715656754509026438171304107527248561382293701171875p-90
; [HW: 1.0715656754509026438171304107527248561382293701171875p-90] 

; mpf : + 322303149293203 -90
; mpfd: + 322303149293203 -90 (8.65604e-028) class: Pos. norm. non-zero
; hwf : + 322303149293203 -90 (8.65604e-028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001001000 #b1001000110001110011111010100101011110000000010001101)))
(assert (= y (fp #b0 #b01110100101 #b0001001001010010001000001100101110010011111010010011)))
(assert (= r (fp #b0 #b01110100101 #b0001001001010010001000001100101110010011111010010011)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
