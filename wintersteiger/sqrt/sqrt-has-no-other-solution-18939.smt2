(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9019019044212346347677566882339306175708770751953125p932 {+ 4061805080676213 932 (6.90469e+280)}
; 1.9019019044212346347677566882339306175708770751953125p932 S == 1.379094595892984553842097739106975495815277099609375p466
; [HW: 1.379094595892984553842097739106975495815277099609375p466] 

; mpf : + 1707290280801814 466
; mpfd: + 1707290280801814 466 (2.62768e+140) class: Pos. norm. non-zero
; hwf : + 1707290280801814 466 (2.62768e+140) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100011 #b1110011011100011000010110000111110110000011101110101)))
(assert (= r (fp #b0 #b10111010001 #b0110000100001100010101111110101101110011011000010110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
