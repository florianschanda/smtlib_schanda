(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.929012158357355399829202724504284560680389404296875p29 {+ 4183898810200846 29 (1.03563e+009)}
; Y = -1.0970812148566799759663581426138989627361297607421875p-830 {- 437214923053219 -830 (-1.53229e-250)}
; 1.929012158357355399829202724504284560680389404296875p29 < -1.0970812148566799759663581426138989627361297607421875p-830 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000011100 #b1110110111010011101111011010010110111011001100001110)))
(assert (= y (fp #b1 #b00011000001 #b0001100011011010010100001000001011011101100010100011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
