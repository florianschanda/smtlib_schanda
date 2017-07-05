(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2175197998582969471925707694026641547679901123046875p-362 {- 979622089587531 -362 (-1.29604e-109)}
; Y = -1.71523686331640146107702094013802707195281982421875p-816 {- 3221140471113388 -816 (-3.92507e-246)}
; -1.2175197998582969471925707694026641547679901123046875p-362 = -1.71523686331640146107702094013802707195281982421875p-816 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010010101 #b0011011110101111011000001010101010011111101101001011)))
(assert (= y (fp #b1 #b00011001111 #b1011011100011001110000110101100011010110011010101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
