(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7860796716648408288818927758256904780864715576171875p-417 {- 3540188116393299 -417 (-5.27707e-126)}
; Y = 1.07632358160472296759735399973578751087188720703125p808 {+ 343730853674612 808 (1.8373e+243)}
; -1.7860796716648408288818927758256904780864715576171875p-417 / 1.07632358160472296759735399973578751087188720703125p808 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001011110 #b1100100100111100100001000111000111011001110101010011)))
(assert (= y (fp #b0 #b11100100111 #b0001001110001001111100010011011011100111111001110100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
