(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2998812429731574358271473101922310888767242431640625p93 {- 1350545054109313 93 (-1.28734e+028)}
; Y = 1.6549558417506062824031687341630458831787109375p-731 {+ 2949658884852160 -731 (1.46507e-220)}
; -1.2998812429731574358271473101922310888767242431640625p93 < 1.6549558417506062824031687341630458831787109375p-731 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011100 #b0100110011000101000001000110001101000000111010000001)))
(assert (= y (fp #b0 #b00100100100 #b1010011110101011001011111010000010100100100111000000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
