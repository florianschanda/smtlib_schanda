(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.20073162708315717139839762239716947078704833984375p272 {+ 904014880933180 272 (9.11181e+081)}
; 1.20073162708315717139839762239716947078704833984375p272 S == 1.09577900467345923374296035035513341426849365234375p136
; [HW: 1.09577900467345923374296035035513341426849365234375p136] 

; mpf : + 431350289757308 136
; mpfd: + 431350289757308 136 (9.54558e+040) class: Pos. norm. non-zero
; hwf : + 431350289757308 136 (9.54558e+040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001111 #b0011001101100011001001011101110110011000010100111100)))
(assert (= r (fp #b0 #b10010000111 #b0001100010000100111110010000110010110111010001111100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
