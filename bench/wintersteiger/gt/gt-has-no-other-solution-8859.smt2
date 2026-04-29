(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6253162401536032088955607832758687436580657958984375p233 {- 2816173986144487 233 (-2.2435e+070)}
; Y = -1.4534738753016991363864462982746772468090057373046875p-866 {- 2042264775830987 -866 (-2.95414e-261)}
; -1.6253162401536032088955607832758687436580657958984375p233 > -1.4534738753016991363864462982746772468090057373046875p-866 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101000 #b1010000000010100101110011010000100011110000011100111)))
(assert (= y (fp #b1 #b00010011101 #b0111010000010110110111010010100000000010110111001011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
