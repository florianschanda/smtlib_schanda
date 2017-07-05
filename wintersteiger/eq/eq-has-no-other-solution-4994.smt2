(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.320945924831410156485844709095545113086700439453125p-139 {- 1445411947476818 -139 (-1.89546e-042)}
; Y = -1.9104689518362096833925534156151115894317626953125p-124 {- 4100387632221960 -124 (-8.98298e-038)}
; -1.320945924831410156485844709095545113086700439453125p-139 = -1.9104689518362096833925534156151115894317626953125p-124 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110100 #b0101001000101001100000110001101011101111011101010010)))
(assert (= y (fp #b1 #b01110000011 #b1110100100010100011111100100010000101000111100001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
