(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.304264544940269221484641093411482870578765869140625p-277 {+ 1370285691215050 -277 (5.37102e-084)}
; Y = -1.76072198329285800610932710696943104267120361328125p932 {- 3425987240490260 932 (-6.39215e+280)}
; 1.304264544940269221484641093411482870578765869140625p-277 = -1.76072198329285800610932710696943104267120361328125p932 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011101010 #b0100110111100100010001111111110111011001110011001010)))
(assert (= y (fp #b1 #b11110100011 #b1100001010111110101011010000011110010111010100010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
