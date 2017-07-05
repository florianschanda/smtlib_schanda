(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.728813885269544936562624570797197520732879638671875p-192 {+ 3282285942122366 -192 (2.75416e-058)}
; Y = 1.2851926631373722376139312473242171108722686767578125p960 {+ 1284393571434269 960 (1.25246e+289)}
; 1.728813885269544936562624570797197520732879638671875p-192 m 1.2851926631373722376139312473242171108722686767578125p960 == 1.728813885269544936562624570797197520732879638671875p-192
; [HW: 1.728813885269544936562624570797197520732879638671875p-192] 

; mpf : + 3282285942122366 -192
; mpfd: + 3282285942122366 -192 (2.75416e-058) class: Pos. norm. non-zero
; hwf : + 3282285942122366 -192 (2.75416e-058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100111111 #b1011101010010011100010111111101000011010011101111110)))
(assert (= y (fp #b0 #b11110111111 #b0100100100000010011000101110100100111011111100011101)))
(assert (= r (fp #b0 #b01100111111 #b1011101010010011100010111111101000011010011101111110)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
