(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.322441515751577423287699275533668696880340576171875p379 {- 1452147490187582 379 (-1.62834e+114)}
; -1.322441515751577423287699275533668696880340576171875p379 | == 1.322441515751577423287699275533668696880340576171875p379
; [HW: 1.322441515751577423287699275533668696880340576171875p379] 

; mpf : + 1452147490187582 379
; mpfd: + 1452147490187582 379 (1.62834e+114) class: Pos. norm. non-zero
; hwf : + 1452147490187582 379 (1.62834e+114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111010 #b0101001010001011100001101111010100000110100100111110)))
(assert (= r (fp #b0 #b10101111010 #b0101001010001011100001101111010100000110100100111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
