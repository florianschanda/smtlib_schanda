(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9603325458593234831283780295052565634250640869140625p348 {+ 4324953295683809 348 (1.124e+105)}
; 1.9603325458593234831283780295052565634250640869140625p348 S == 1.400118761341095474648454910493455827236175537109375p174
; [HW: 1.400118761341095474648454910493455827236175537109375p174] 

; mpf : + 1801974704479702 174
; mpfd: + 1801974704479702 174 (3.35262e+052) class: Pos. norm. non-zero
; hwf : + 1801974704479702 174 (3.35262e+052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011011 #b1111010111011000010110101000110111000000000011100001)))
(assert (= r (fp #b0 #b10010101101 #b0110011001101110001011101110001001111001110111010110)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
