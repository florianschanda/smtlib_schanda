(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0958341772490232113312913497793488204479217529296875p-1003 {+ 431598764948059 -1003 (1.27838e-302)}
; Y = -1.832266211408203115951209838385693728923797607421875p-554 {- 3748193799571038 -554 (-3.10721e-167)}
; 1.0958341772490232113312913497793488204479217529296875p-1003 < -1.832266211408203115951209838385693728923797607421875p-554 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010100 #b0001100010001000100101101011000100011111101001011011)))
(assert (= y (fp #b1 #b00111010101 #b1101010100001111011001011111111110010000011001011110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
