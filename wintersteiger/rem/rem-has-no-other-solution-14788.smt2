(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.04521697196384000250191093073226511478424072265625p-24 {- 203639138087172 -24 (-6.22998e-008)}
; Y = -1.42567392800364256544298768858425319194793701171875p-441 {- 1917064943538540 -441 (-2.51068e-133)}
; -1.04521697196384000250191093073226511478424072265625p-24 % -1.42567392800364256544298768858425319194793701171875p-441 == -1.907956914969446415852871723473072052001953125p-445
; [HW: -1.907956914969446415852871723473072052001953125p-445] 

; mpf : - 4089074423924864 -445
; mpfd: - 4089074423924864 -445 (-2.10001e-134) class: Neg. norm. non-zero
; hwf : - 4089074423924864 -445 (-2.10001e-134) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111100111 #b0000101110010011010101101110011111001111000100000100)))
(assert (= y (fp #b1 #b01001000110 #b0110110011111000111101110110111110001001000101101100)))
(assert (= r (fp #b1 #b01001000010 #xe86fdd47f8880)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
