(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2275110925481291790362092797295190393924713134765625p249 {- 1024618871622409 249 (-1.11044e+075)}
; Y = 1.982223317923228922410316954483278095722198486328125p208 {+ 4423540568593666 208 (8.15439e+062)}
; -1.2275110925481291790362092797295190393924713134765625p249 < 1.982223317923228922410316954483278095722198486328125p208 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111000 #b0011101000111110001010101011110111111000101100001001)))
(assert (= y (fp #b0 #b10011001111 #b1111101101110010111111001100001111011001010100000010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
