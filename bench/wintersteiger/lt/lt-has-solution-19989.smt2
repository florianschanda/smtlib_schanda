(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.938969037014235841098752644029445946216583251953125p927 {+ 4228740605209746 927 (2.19977e+279)}
; Y = 1.4486121126055435670565429973066784441471099853515625p-630 {+ 2020369343164217 -630 (3.25128e-190)}
; 1.938969037014235841098752644029445946216583251953125p927 < 1.4486121126055435670565429973066784441471099853515625p-630 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110011110 #b1111000001100000010001100101100111101110110010010010)))
(assert (= y (fp #b0 #b00110001001 #b0111001011011000001111100101000000111010111100111001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
