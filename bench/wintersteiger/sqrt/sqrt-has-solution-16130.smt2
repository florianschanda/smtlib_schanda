(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6055806405667905067957690334878861904144287109375p-619 {+ 2727292747199384 -619 (7.38014e-187)}
; 1.6055806405667905067957690334878861904144287109375p-619 S == 1.791971339372809612910941723384894430637359619140625p-310
; [HW: 1.791971339372809612910941723384894430637359619140625p-310] 

; mpf : + 3566721828887498 -310
; mpfd: + 3566721828887498 -310 (8.59078e-094) class: Pos. norm. non-zero
; hwf : + 3566721828887498 -310 (8.59078e-094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110010100 #b1001101100000111010101010011011001010011001110011000)))
(assert (= r (fp #b0 #b01011001001 #b1100101010111110101000100011100111111001101111001010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
