(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8031193554699058712031956019927747547626495361328125p674 {+ 3616928030028301 674 (1.41332e+203)}
; Y = -1.59001658027201386857996112667024135589599609375p-989 {- 2657198451055456 -989 (-3.03904e-298)}
; 1.8031193554699058712031956019927747547626495361328125p674 = -1.59001658027201386857996112667024135589599609375p-989 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010100001 #b1100110110011001001110101110011010000111001000001101)))
(assert (= y (fp #b1 #b00000100010 #b1001011100001011010100111001110001011101101101100000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
