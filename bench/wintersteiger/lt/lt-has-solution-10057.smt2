(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.119658045290577330632686425815336406230926513671875p-133 {- 538891928182526 -133 (-1.02824e-040)}
; Y = 1.7659217431309068846445597955607809126377105712890625p652 {+ 3449404876959313 652 (3.30011e+196)}
; -1.119658045290577330632686425815336406230926513671875p-133 < 1.7659217431309068846445597955607809126377105712890625p652 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101111010 #b0001111010100001111010001101111100111001111011111110)))
(assert (= y (fp #b0 #b11010001011 #b1100010000010011011100101000011000001010111001010001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
