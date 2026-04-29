(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0639010233887524758955578363384120166301727294921875p-366 {+ 287784625122179 -366 (7.0782e-111)}
; Y = 1.79547608476094833207525880425237119197845458984375p416 {+ 3582505798911548 416 (3.03849e+125)}
; 1.0639010233887524758955578363384120166301727294921875p-366 = 1.79547608476094833207525880425237119197845458984375p416 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010001 #b0001000001011011110100010100010110100010101110000011)))
(assert (= y (fp #b0 #b10110011111 #b1100101110100100010100100001100011001100011000111100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
