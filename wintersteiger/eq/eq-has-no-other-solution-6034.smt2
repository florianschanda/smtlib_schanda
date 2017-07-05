(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.40151680224650743156189491855911910533905029296875p840 {- 1808270920980364 840 (-1.02753e+253)}
; Y = 1.6101577273137053225582349114120006561279296875p705 {+ 2747906113367232 705 (2.71029e+212)}
; -1.40151680224650743156189491855911910533905029296875p840 = 1.6101577273137053225582349114120006561279296875p705 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101000111 #b0110011011001001110011100001111001110001011110001100)))
(assert (= y (fp #b0 #b11011000000 #b1001110000110011010010111111110000110110110011000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
