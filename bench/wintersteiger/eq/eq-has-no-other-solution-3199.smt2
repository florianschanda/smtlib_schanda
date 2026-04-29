(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 0.1698624501428387389978524879552423954010009765625p-1022 {+ 764992467167528 -1023 (3.77956e-309)}
; Y = -1.861850269412949732128481628024019300937652587890625p212 {- 3881428552177322 212 (-1.22547e+064)}
; 0.1698624501428387389978524879552423954010009765625p-1022 = -1.861850269412949732128481628024019300937652587890625p212 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0010101101111100000110110000010000101110100100101000)))
(assert (= y (fp #b1 #b10011010011 #b1101110010100010001110000010000100101101011010101010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
