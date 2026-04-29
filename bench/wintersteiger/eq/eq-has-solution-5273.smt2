(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1431744327006858608086758977151475846767425537109375p171 {- 644800321759791 171 (-3.4217e+051)}
; Y = -1.3316214556653502842920033799600787460803985595703125p-125 {- 1493490264162533 -125 (-3.13063e-038)}
; -1.1431744327006858608086758977151475846767425537109375p171 = -1.3316214556653502842920033799600787460803985595703125p-125 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010101010 #b0010010010100111000101000110001000010010101000101111)))
(assert (= y (fp #b1 #b01110000010 #b0101010011100101001001001100101010111100000011100101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
