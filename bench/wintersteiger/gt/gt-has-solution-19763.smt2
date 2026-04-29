(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0022074681791617312143216622644104063510894775390625p535 {- 9941552869105 535 (-1.12721e+161)}
; Y = 1.4681362919910678765944567203405313193798065185546875p996 {+ 2108298430169579 996 (9.832e+299)}
; -1.0022074681791617312143216622644104063510894775390625p535 > 1.4681362919910678765944567203405313193798065185546875p996 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000010110 #b0000000010010000101010110010101110100010111011110001)))
(assert (= y (fp #b0 #b11111100011 #b0111011111010111110001111011000000101100000111101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
