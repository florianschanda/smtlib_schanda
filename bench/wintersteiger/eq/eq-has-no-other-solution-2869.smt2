(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4112742331024923370108581366366706788539886474609375p-598 {- 1852214482947471 -598 (-1.36042e-180)}
; Y = 1.33491962198835523167872452177107334136962890625p28 {+ 1508343884785824 28 (3.5834e+008)}
; -1.4112742331024923370108581366366706788539886474609375p-598 = 1.33491962198835523167872452177107334136962890625p28 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110101001 #b0110100101001001010001001010010011011100110110001111)))
(assert (= y (fp #b0 #b10000011011 #b0101010110111101010010101101011100111010100010100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
