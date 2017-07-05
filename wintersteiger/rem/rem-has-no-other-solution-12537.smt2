(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.88267984424831080758622192661277949810028076171875p-97 {- 3975236617644140 -97 (-1.18814e-029)}
; Y = -1.6614344252034702886788863906986080110073089599609375p796 {- 2978835830876367 796 (-6.92404e+239)}
; -1.88267984424831080758622192661277949810028076171875p-97 % -1.6614344252034702886788863906986080110073089599609375p796 == -1.88267984424831080758622192661277949810028076171875p-97
; [HW: -1.88267984424831080758622192661277949810028076171875p-97] 

; mpf : - 3975236617644140 -97
; mpfd: - 3975236617644140 -97 (-1.18814e-029) class: Neg. norm. non-zero
; hwf : - 3975236617644140 -97 (-1.18814e-029) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110011110 #b1110000111110111010011100110011111100010100001101100)))
(assert (= y (fp #b1 #b11100011011 #b1010100101010011110001000011100010110010100011001111)))
(assert (= r (fp #b1 #b01110011110 #xe1f74e67e286c)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
