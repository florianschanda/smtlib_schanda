(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0546774469452413480752284158370457589626312255859375p-256 {+ 246245329688159 -256 (9.10837e-078)}
; Y = -1.8984282333369300044267902194405905902385711669921875p-150 {- 4046161056875331 -150 (-1.33013e-045)}
; 1.0546774469452413480752284158370457589626312255859375p-256 = -1.8984282333369300044267902194405905902385711669921875p-150 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111111 #b0000110111111111010101110101011001110101011001011111)))
(assert (= y (fp #b1 #b01101101001 #b1110010111111111011001001000011111111100001101000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
