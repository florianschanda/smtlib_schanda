(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.970815670786812301429336002911441028118133544921875p660 {- 4372165093200926 660 (-9.42851e+198)}
; Y = -1.721296537059040065997805868391878902912139892578125p-470 {- 3248430815522722 -470 (-5.64622e-142)}
; -1.970815670786812301429336002911441028118133544921875p660 M -1.721296537059040065997805868391878902912139892578125p-470 == -1.721296537059040065997805868391878902912139892578125p-470
; [HW: -1.721296537059040065997805868391878902912139892578125p-470] 

; mpf : - 3248430815522722 -470
; mpfd: - 3248430815522722 -470 (-5.64622e-142) class: Neg. norm. non-zero
; hwf : - 3248430815522722 -470 (-5.64622e-142) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010011 #b1111100010000111011000000011010001111001010000011110)))
(assert (= y (fp #b1 #b01000101001 #b1011100010100110111000111100110101100010111110100010)))
(assert (= r (fp #b1 #b01000101001 #b1011100010100110111000111100110101100010111110100010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
