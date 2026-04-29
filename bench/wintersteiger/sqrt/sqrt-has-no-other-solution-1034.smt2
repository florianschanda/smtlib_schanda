(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0659324786848907162806199266924522817134857177734375p137 {+ 296933486436887 137 (1.85712e+041)}
; 1.0659324786848907162806199266924522817134857177734375p137 S == 1.4600907360057393535868186518200673162937164306640625p68
; [HW: 1.4600907360057393535868186518200673162937164306640625p68] 

; mpf : + 2072064467232065 68
; mpfd: + 2072064467232065 68 (4.30943e+020) class: Pos. norm. non-zero
; hwf : + 2072064467232065 68 (4.30943e+020) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001000 #b0001000011100000111100110110111110110010001000010111)))
(assert (= r (fp #b0 #b10001000011 #b0111010111001000100000011010100001010110010101000001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
