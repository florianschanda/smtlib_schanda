(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2210636196041757539632044426980428397655487060546875p866 {+ 995582034874539 866 (6.00779e+260)}
; Y = 1.4267661715694595070402783676399849355220794677734375p-365 {+ 1921983971254551 -365 (1.89847e-110)}
; 1.2210636196041757539632044426980428397655487060546875p866 = 1.4267661715694595070402783676399849355220794677734375p-365 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101100001 #b0011100010010111101000000001100010001001000010101011)))
(assert (= y (fp #b0 #b01010010010 #b0110110101000000100011000011110111101110000100010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
