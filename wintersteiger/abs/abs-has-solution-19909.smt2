(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.66493493051196050913631552248261868953704833984375p482 {- 2994600705279292 482 (-2.079e+145)}
; -1.66493493051196050913631552248261868953704833984375p482 | == 1.66493493051196050913631552248261868953704833984375p482
; [HW: 1.66493493051196050913631552248261868953704833984375p482] 

; mpf : + 2994600705279292 482
; mpfd: + 2994600705279292 482 (2.079e+145) class: Pos. norm. non-zero
; hwf : + 2994600705279292 482 (2.079e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100001 #b1010101000111001001011001111010010000100010100111100)))
(assert (= r (fp #b0 #b10111100001 #b1010101000111001001011001111010010000100010100111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
