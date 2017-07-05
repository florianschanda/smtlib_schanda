(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1097209431649359689942002660245634615421295166015625p63 {- 494139198752345 63 (-1.02354e+019)}
; Y = 1.73220581167486908924502131412737071514129638671875p-227 {+ 3297561820617452 -227 (8.03139e-069)}
; -1.1097209431649359689942002660245634615421295166015625p63 = 1.73220581167486908924502131412737071514129638671875p-227 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111110 #b0001110000010110101010111111011010010100011001011001)))
(assert (= y (fp #b0 #b01100011100 #b1011101101110001110101110000111100010101101011101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
