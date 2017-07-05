(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9842399478389902700570246452116407454013824462890625p880 {- 4432622662330833 880 (-1.59952e+265)}
; Y = 1.8718246079366613887629000601009465754032135009765625p-246 {+ 3926348979435977 -246 (1.65534e-074)}
; -1.9842399478389902700570246452116407454013824462890625p880 = 1.8718246079366613887629000601009465754032135009765625p-246 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101111 #b1111101111110111001001100011001101100010100111010001)))
(assert (= y (fp #b0 #b01100001001 #b1101111100101111111001011100001011101111100111001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
