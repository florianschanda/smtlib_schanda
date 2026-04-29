(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.046244055862398436573812432470731437206268310546875p-454 {+ 208264712749998 -454 (2.24913e-137)}
; 1.046244055862398436573812432470731437206268310546875p-454 S == 1.0228607216343770236477439539157785475254058837890625p-227
; [HW: 1.0228607216343770236477439539157785475254058837890625p-227] 

; mpf : + 102955537434001 -227
; mpfd: + 102955537434001 -227 (4.7425e-069) class: Pos. norm. non-zero
; hwf : + 102955537434001 -227 (4.7425e-069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000111001 #b0000101111010110101001101000001110010000001110101110)))
(assert (= r (fp #b0 #b01100011100 #b0000010111011010001100110100001111001000010110010001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
