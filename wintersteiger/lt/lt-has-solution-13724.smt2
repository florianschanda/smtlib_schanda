(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.246425913293110365742677458911202847957611083984375p-217 {+ 1109803651281286 -217 (5.91776e-066)}
; Y = 1.58049916138921542341222448158077895641326904296875p237 {+ 2614335806921356 237 (3.49063e+071)}
; 1.246425913293110365742677458911202847957611083984375p-217 < 1.58049916138921542341222448158077895641326904296875p237 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100100110 #b0011111100010101110001001100011001111011000110000110)))
(assert (= y (fp #b0 #b10011101100 #b1001010010011011100101111101000110000101101010001100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
