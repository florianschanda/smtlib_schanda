(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7163388417956915166229237001971341669559478759765625p262 {- 3226103340982089 262 (-1.27193e+079)}
; -1.7163388417956915166229237001971341669559478759765625p262 | == 1.7163388417956915166229237001971341669559478759765625p262
; [HW: 1.7163388417956915166229237001971341669559478759765625p262] 

; mpf : + 3226103340982089 262
; mpfd: + 3226103340982089 262 (1.27193e+079) class: Pos. norm. non-zero
; hwf : + 3226103340982089 262 (1.27193e+079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100000101 #b1011011101100001111110110111101001011101111101001001)))
(assert (= r (fp #b0 #b10100000101 #b1011011101100001111110110111101001011101111101001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
