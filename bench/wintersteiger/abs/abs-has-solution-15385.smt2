(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0302604767795766615989805359276942908763885498046875p744 {+ 136281071948555 744 (9.53375e+223)}
; 1.0302604767795766615989805359276942908763885498046875p744 | == 1.0302604767795766615989805359276942908763885498046875p744
; [HW: 1.0302604767795766615989805359276942908763885498046875p744] 

; mpf : + 136281071948555 744
; mpfd: + 136281071948555 744 (9.53375e+223) class: Pos. norm. non-zero
; hwf : + 136281071948555 744 (9.53375e+223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100111 #b0000011110111111001001101000111000100001001100001011)))
(assert (= r (fp #b0 #b11011100111 #b0000011110111111001001101000111000100001001100001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
