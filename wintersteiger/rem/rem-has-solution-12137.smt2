(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.867291738414290858116828530910424888134002685546875p642 {+ 3905934749944110 642 (3.40776e+193)}
; Y = -1.805776932996204120485117528005503118038177490234375p-848 {- 3628896695185446 -848 (-9.62117e-256)}
; 1.867291738414290858116828530910424888134002685546875p642 % -1.805776932996204120485117528005503118038177490234375p-848 == 1.45584772277088436709391316981054842472076416015625p-849
; [HW: 1.45584772277088436709391316981054842472076416015625p-849] 

; mpf : + 2052955634408644 -849
; mpfd: + 2052955634408644 -849 (3.87837e-256) class: Pos. norm. non-zero
; hwf : + 2052955634408644 -849 (3.87837e-256) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000001 #b1101111000000110110101001101010010010100100100101110)))
(assert (= y (fp #b1 #b00010101111 #b1100111001000111011001011010011100010111000000100110)))
(assert (= r (fp #b0 #b00010101110 #x74b26fb541cc4)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
