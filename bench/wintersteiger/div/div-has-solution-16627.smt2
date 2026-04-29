(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.288915105224222923396837359177879989147186279296875p187 {- 1301157960229518 187 (-2.52833e+056)}
; Y = 1.620359225358850352449735510163009166717529296875p-851 {+ 2793849576161968 -851 (1.07916e-256)}
; -1.288915105224222923396837359177879989147186279296875p187 / 1.620359225358850352449735510163009166717529296875p-851 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111010 #b0100100111110110010101110010000001000010001010001110)))
(assert (= y (fp #b0 #b00010101100 #b1001111011001111110111001011100010110000001010110000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
