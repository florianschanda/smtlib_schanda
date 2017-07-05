(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6820417779020238047138491310761310160160064697265625p706 {- 3071643096810665 706 (-5.66257e+212)}
; Y = 1.3726170013822460713726059111650101840496063232421875p-833 {+ 1678117788576995 -833 (2.39642e-251)}
; -1.6820417779020238047138491310761310160160064697265625p706 < 1.3726170013822460713726059111650101840496063232421875p-833 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000001 #b1010111010011010010010100011101010011000010010101001)))
(assert (= y (fp #b0 #b00010111110 #b0101111101100011110100111110101011011110110011100011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
