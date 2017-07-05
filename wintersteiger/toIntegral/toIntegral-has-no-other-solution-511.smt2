(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.155461722840069427320486283861100673675537109375 938 {+ 700137357052912 938 (2.68467e+282)}
; 1.155461722840069427320486283861100673675537109375 938 I == 1.155461722840069427320486283861100673675537109375 938
; [HW: 1.155461722840069427320486283861100673675537109375 938] 

; mpf : + 700137357052912 938
; mpfd: + 700137357052912 938 (2.68467e+282) class: Pos. norm. non-zero
; hwf : + 700137357052912 938 (2.68467e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101001 #b0010011111001100010101101110011101100000101111110000)))
(assert (= r (fp #b0 #b11110101001 #b0010011111001100010101101110011101100000101111110000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
