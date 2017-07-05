(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.539740440632424434141967140021733939647674560546875p403 {+ 2430774847308974 403 (3.1808e+121)}
; Y = 1.6014251554526219845087098292424343526363372802734375p-730 {+ 2708578105987671 -730 (2.83537e-220)}
; 1.539740440632424434141967140021733939647674560546875p403 * 1.6014251554526219845087098292424343526363372802734375p-730 == 1.23288953724823446833624984719790518283843994140625p-326
; [HW: 1.23288953724823446833624984719790518283843994140625p-326] 

; mpf : + 1048841233169636 -326
; mpfd: + 1048841233169636 -326 (9.01873e-099) class: Pos. norm. non-zero
; hwf : + 1048841233169636 -326 (9.01873e-099) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010010 #b1000101000101100011011011111010011011000010010101110)))
(assert (= y (fp #b0 #b00100100101 #b1001100111110110111111111011110110101001001001010111)))
(assert (= r (fp #b0 #b01010111001 #b0011101110011110101001100001001000001111110011100100)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
