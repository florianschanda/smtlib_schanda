(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4160607318269013976674841615022160112857818603515625p250 {- 1873770956819129 250 (-2.56201e+075)}
; -1.4160607318269013976674841615022160112857818603515625p250 | == 1.4160607318269013976674841615022160112857818603515625p250
; [HW: 1.4160607318269013976674841615022160112857818603515625p250] 

; mpf : + 1873770956819129 250
; mpfd: + 1873770956819129 250 (2.56201e+075) class: Pos. norm. non-zero
; hwf : + 1873770956819129 250 (2.56201e+075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111001 #b0110101010000010111101001100010001011000101010111001)))
(assert (= r (fp #b0 #b10011111001 #b0110101010000010111101001100010001011000101010111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
