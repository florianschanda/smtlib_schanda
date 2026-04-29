(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.730820449246885051053368442808277904987335205078125p-986 {- 3291322702903010 -986 (-2.64653e-297)}
; Y = 1.62895390308296139636468069511465728282928466796875p487 {+ 2832556563557644 487 (6.50904e+146)}
; -1.730820449246885051053368442808277904987335205078125p-986 > 1.62895390308296139636468069511465728282928466796875p487 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000100101 #b1011101100010111000011001000100011000011011011100010)))
(assert (= y (fp #b0 #b10111100110 #b1010000100000011000111110111110001101110110100001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
