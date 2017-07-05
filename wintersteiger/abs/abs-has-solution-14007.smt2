(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6198685654336937300712406795355491340160369873046875p818 {+ 2791639840305867 818 (2.8315e+246)}
; 1.6198685654336937300712406795355491340160369873046875p818 | == 1.6198685654336937300712406795355491340160369873046875p818
; [HW: 1.6198685654336937300712406795355491340160369873046875p818] 

; mpf : + 2791639840305867 818
; mpfd: + 2791639840305867 818 (2.8315e+246) class: Pos. norm. non-zero
; hwf : + 2791639840305867 818 (2.8315e+246) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110001 #b1001111010101111101101001101000001011011001011001011)))
(assert (= r (fp #b0 #b11100110001 #b1001111010101111101101001101000001011011001011001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
