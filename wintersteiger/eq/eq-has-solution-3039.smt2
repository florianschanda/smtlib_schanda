(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.20679346357577177428765935474075376987457275390625p642 {- 931314965502500 642 (-2.20237e+193)}
; Y = -1.4735596225766214306673873579711653292179107666015625p-344 {- 2132722939773785 -344 (-4.11196e-104)}
; -1.20679346357577177428765935474075376987457275390625p642 = -1.4735596225766214306673873579711653292179107666015625p-344 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010000001 #b0011010011110000011010101001101100010101101000100100)))
(assert (= y (fp #b1 #b01010100111 #b0111100100111011001101000001001110101100001101011001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
