(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9791135070344392232755126315169036388397216796875p337 {+ 4409535225433720 337 (5.54089e+101)}
; Y = 1.2159350713831267309927852693363092839717864990234375p-71 {+ 972485107017271 -71 (5.14969e-022)}
; 1.9791135070344392232755126315169036388397216796875p337 = 1.2159350713831267309927852693363092839717864990234375p-71 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010000 #b1111101010100111001011101100101111001000111001111000)))
(assert (= y (fp #b0 #b01110111000 #b0011011101000111100001010101010110100110011000110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
