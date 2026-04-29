(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.78750484280258259417450972250662744045257568359375p-858 {- 3546606516598172 -858 (-9.3006e-259)}
; Y = -1.7324608774534204780337631746078841388225555419921875p903 {- 3298710534762691 903 (-1.17152e+272)}
; -1.78750484280258259417450972250662744045257568359375p-858 = -1.7324608774534204780337631746078841388225555419921875p903 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100101 #b1100100110011001111010101101100101000111010110011100)))
(assert (= y (fp #b1 #b11110000110 #b1011101110000010100011100101101001000011000011000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
