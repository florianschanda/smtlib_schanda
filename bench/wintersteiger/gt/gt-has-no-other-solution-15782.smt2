(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5171838281755842814391144202090799808502197265625p-427 {- 2329188895853608 -427 (-4.37754e-129)}
; Y = -1.5072556247448980482062097507878206670284271240234375p730 {- 2284476242582711 730 (-8.51302e+219)}
; -1.5171838281755842814391144202090799808502197265625p-427 > -1.5072556247448980482062097507878206670284271240234375p730 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001010100 #b1000010001100110001010001100110000001000110000101000)))
(assert (= y (fp #b1 #b11011011001 #b1000000111011011100000010010111011111101110010110111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
