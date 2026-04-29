(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5395116209289028130768883784185163676738739013671875p-529 {- 2429744334977459 -529 (-8.76023e-160)}
; Y = -1.081648690251135302986540409619919955730438232421875p-899 {- 367713010990302 -899 (-2.55929e-271)}
; -1.5395116209289028130768883784185163676738739013671875p-529 < -1.081648690251135302986540409619919955730438232421875p-899 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111101110 #b1000101000011101011011101111111110110011100110110011)))
(assert (= y (fp #b1 #b00001111100 #b0001010011100110111011011011011001100011110011011110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
