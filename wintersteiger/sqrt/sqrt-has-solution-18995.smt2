(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1778340922733379070308501468389295041561126708984375p941 {+ 800893551695975 941 (2.18932e+283)}
; 1.1778340922733379070308501468389295041561126708984375p941 S == 1.534818616171525373914619194692932069301605224609375p470
; [HW: 1.534818616171525373914619194692932069301605224609375p470] 

; mpf : + 2408608920500886 470
; mpfd: + 2408608920500886 470 (4.67902e+141) class: Pos. norm. non-zero
; hwf : + 2408608920500886 470 (4.67902e+141) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101100 #b0010110110000110100010001111101001101101100001100111)))
(assert (= r (fp #b0 #b10111010101 #b1000100011101001110111110111000110111111101010010110)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
