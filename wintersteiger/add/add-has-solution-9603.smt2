(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.286589631375750553132775166886858642101287841796875p-848 {- 1290684957072078 -848 (-6.85494e-256)}
; +zero + -1.286589631375750553132775166886858642101287841796875p-848 == -1.286589631375750553132775166886858642101287841796875p-848
; [HW: -1.286589631375750553132775166886858642101287841796875p-848] 

; mpf : - 1290684957072078 -848
; mpfd: - 1290684957072078 -848 (-6.85494e-256) class: Neg. norm. non-zero
; hwf : - 1290684957072078 -848 (-6.85494e-256) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00010101111 #b0100100101011101111100000010011000100001101011001110)))
(assert (= r (fp #b1 #b00010101111 #b0100100101011101111100000010011000100001101011001110)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
