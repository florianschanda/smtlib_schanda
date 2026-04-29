(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.477701776089642482503450082731433212757110595703125p216 {+ 2151377540791538 216 (1.5562e+065)}
; Y = -1.3749305402632803208007317152805626392364501953125p795 {- 1688537041419528 795 (-2.86502e+239)}
; 1.477701776089642482503450082731433212757110595703125p216 = -1.3749305402632803208007317152805626392364501953125p795 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011010111 #b0111101001001010101010011110000110001011110011110010)))
(assert (= y (fp #b1 #b11100011010 #b0101111111111011011100101010100010110011110100001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
