(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.85633969444133395398921493324451148509979248046875p575 {- 3856611128788556 575 (-2.29565e+173)}
; Y = -1.1711735580557205427254530150094069540500640869140625p429 {- 770897172275425 429 (-1.62364e+129)}
; -1.85633969444133395398921493324451148509979248046875p575 % -1.1711735580557205427254530150094069540500640869140625p429 == -1.9129676563923254661858663894236087799072265625p425
; [HW: -1.9129676563923254661858663894236087799072265625p425] 

; mpf : - 4111640797129792 425
; mpfd: - 4111640797129792 425 (-1.65751e+128) class: Neg. norm. non-zero
; hwf : - 4111640797129792 425 (-1.65751e+128) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000111110 #b1101101100111001000101000000010111100100011001001100)))
(assert (= y (fp #b1 #b10110101100 #b0010101111010010000001111100000111001010000011100001)))
(assert (= r (fp #b1 #b10110101000 #xe9b83f9282c40)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
