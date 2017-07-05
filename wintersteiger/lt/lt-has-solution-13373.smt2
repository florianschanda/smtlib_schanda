(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.798786354846215740366233148961327970027923583984375p-499 {- 3597413930034054 -499 (-1.09904e-150)}
; Y = -1.81047964458528820586025176453404128551483154296875p113 {- 3650075825345676 113 (-1.88011e+034)}
; -1.798786354846215740366233148961327970027923583984375p-499 < -1.81047964458528820586025176453404128551483154296875p113 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000001100 #b1100110001111101010000110011011010001110001110000110)))
(assert (= y (fp #b1 #b10001110000 #b1100111101111011100110000000111110010001010010001100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
