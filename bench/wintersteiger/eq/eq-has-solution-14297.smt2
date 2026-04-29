(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.565790955911918747034405896556563675403594970703125p-484 {+ 2548095938214514 -484 (3.13484e-146)}
; Y = -1.6420163660502253843986864012549631297588348388671875p904 {- 2891384666909555 904 (-2.22072e+272)}
; 1.565790955911918747034405896556563675403594970703125p-484 = -1.6420163660502253843986864012549631297588348388671875p904 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000011011 #b1001000011010111101011010001010000000011101001110010)))
(assert (= y (fp #b1 #b11110000111 #b1010010001011011001011110011111110101110101101110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
