(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1895376207363275167239180518663488328456878662109375p37 {- 853601558120815 37 (-1.63489e+011)}
; Y = 1.4363050654649096582460288118454627692699432373046875p577 {+ 1964943330247627 577 (7.10484e+173)}
; -1.1895376207363275167239180518663488328456878662109375p37 < 1.4363050654649096582460288118454627692699432373046875p577 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000100100 #b0011000010000101100010011001101001101100100101101111)))
(assert (= y (fp #b0 #b11001000000 #b0110111110110001101100000101001101000000001111001011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
